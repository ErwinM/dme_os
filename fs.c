/* file system routines */
#include "types.h"
#include "fs.h"
#include "buf.h"
#include "defs.h"
#include "proc.h"

struct superblock sb;
/* establish an icache to cache active inodes */
struct inode icache[NINODES];
struct dirent direntry;

extern struct proc *currproc;


/* initialize the file and block structures and read the superblock
 * FIXME: only reads the superblock at boot. If micro sd gets switched this will fail */

void
fsinit(void)
{
	sdinit();
	binit();
	readsb();
	fileinit();
}

/* read the superblock */
void readsb()
{
	struct buf *b;
 	b = bread(1);
	memmove(&sb, b->data, (uint)sizeof(sb));
	kprintf("readsb: read superblock from disk to %x\n", (uint)&sb);
}

/* return in memory copy if inode with inum */
struct inode*
iget(uint inum)
{
	struct inode *ip, *freeinode;

	freeinode = 0;
	// check if the inode is already in cache
	for(ip=icache;ip<&icache[NINODES];ip++){
		if(ip->ref == 0)
			freeinode=ip;
		if(ip->inum == inum && ip->ref > 0)
			return ip;
	}
	// we have run through the entire list already; we should have a freeinode
	if(!freeinode){
		kprintf("iget: no free inode in icache!\n");
		halt();
	}
	freeinode->inum = inum;
	freeinode->ref = 1;
	freeinode->flags = 0;
	kprintf("IGET: allocated inode at: %x for inum: %x\n", (uint)freeinode, inum);
	//breek();
	return freeinode;
}

// Lock the given inode.
// Reads the inode from disk if necessary.
void
ilock(struct inode *ip)
{
	struct buf *buf;
	struct dinode *dip;

	ip->flags |= I_BUSY;
	if((ip->flags & I_VALID)==I_VALID)
		return;
	// we need to read the inode from disk (prob from bcache)
	// find out which block the inode lives, and determine its offset...
	if(sb.inodestart == 0) {
		kprintf("ilock: no superblock info!\n");
		halt();
	}
	buf = bread(IBLOCK(ip->inum, sb.inodestart));

	dip = (struct dinode*)buf->data + ip->inum%IPB;
	kprintf("ilock: dip: %x + %x = %x", (uint)buf->data, (uint)ip->inum%IPB, (uint)dip);
  ip->type = dip->type;
  ip->nlink = dip->nlink;
  ip->size = dip->size;
  memmove(ip->addrs, dip->addrs, (uint)sizeof(ip->addrs));
  brelse(buf);
  ip->flags |= I_VALID | I_BUSY;
}

void iunlock(struct inode *ip)
{
	if((ip->flags & I_BUSY) != I_BUSY) {
		kprintf("iunlock: inode (%x) not flagged busy!\n", ip);
		halt();
	}
	ip->flags &= ~I_BUSY;
}

void iput(struct inode *ip)
{
	ip->ref--;
}

// Return the disk block address of the nth block in inode ip.
// TODO: If there is no such block, bmap allocates one.
int
bmap(struct inode *ip, uint n)
{
	uint blockno, *a;
	struct buf *b;

	if(n<NDIRECT) {
		return ip->addrs[n];
	} else {
		kprintf("Loading indirect blocks from ip(%x): %x\n", ip, ip->addrs[NDIRECT]);
		b = bread(ip->addrs[NDIRECT]);
		a = (uint*)b->data + (n-NDIRECT);
		brelse(b);
		kprintf("requesting block %x from buf(%x), address: %x(%x)", n, b,a,*a);
		return *a;
	}
}


// Read data from inode.
int
readi(struct inode *ip, char *dst, uint off, uint n)
{
	struct buf *b;
	uint tot, m;

	//kprintf("readi: ip(%x), type(%x)\n", ip->inum, ip->type);
	if(ip->type == T_DEV){
		return readterm(dst, n);
	}

	for(tot=0; tot<n; tot+=m, off+=m, dst+=m) {
		b = bread(bmap(ip, off/BSIZE));
		// how much to copy...to end of block or n
		if ((n-tot) > BSIZE)
			m = BSIZE-off%BSIZE;
		else
			m = n-tot;
		kprintf("readi: from %x for %x(%x) bytes\n",b->data+(off%BSIZE), off%BSIZE, m);
		memmove(dst, b->data+(off%BSIZE), m);
		brelse(b);
	}
	return tot;
}


int
writei(struct inode *ip, char *src, uint off, uint n)
{
	// write from src to src+n to inode n at offset off
	// get the right buf loaded, make the write
	// write the block(s)
	struct buf *b;
	uint bn, prev_bn, tot, m;

	for(tot=0;tot<n; tot+=m, off+=m, src+=m){
		bn = bmap(ip, off/BSIZE);
		if(bn != prev_bn){
			// write to log when we cross block boundry
			bwrite(prev_bn);
			b = bread(bn);
		}
		if ((n-tot) > BSIZE)
			m = BSIZE-off%BSIZE;
		else
			m = n-tot;
		memmove(b->data+(off%BSIZE), src, n);
		b->flags &= B_DIRTY;
		prev_bn = bn;
	}
	bwrite(bn);
	return tot;
}


struct inode*
dirlookup(struct inode *ip, char *name)
{
	uint off, inum;
	struct dirent de;


	for(off=0; off < ip->size; off +=(uint)sizeof(de) ) {
		kprintf("dirlookup: %x, off: %x\n", &direntry, off);
		readi(ip, (char*)&direntry, off, (uint)sizeof(de));
		if(strcmp(direntry.name, name, DIRSIZE)==0) {
			kprintf("dirlookup: file found.\n");
			return iget(direntry.inum);
		}
	}
}

/* split the first element of path in name and return the balance */
char*
nextelem(char *path, char *name)
{
	char *p;
	uint len;

	while(*path =='/')
		path++;

	if(*path == 0)
		return 0;

	p = path;
	while(*path != '/' && *path != 0)
		path++;

	len = path - p;
	memmove(name, p, len);
	*(name+len)=0;
	return path;
}

/* find the inode pointed to by path */
struct inode*
namei(char *path)
{
	struct inode *ip, *next;
	int inum, i;
	char name[DIRSIZE];
	kprintf("namei: cwd is %x\n", currproc->cwd);
	// find where to begin
	if(path[0]=='/')
		ip = iget(ROOTINO);
	else
		ip = currproc->cwd;

	// traverse path and find the corresponding target inode
	while((path = nextelem(path, (char*)&name)) != 0) {
		// lookup name in ip
		ilock(ip);
		if(ip->type != T_DIR) {
			kprintf("namei: path element != type dir\n");
			halt();
		}
		next = dirlookup(ip, name);
		// unlock ip;
		iunlock(ip);
		ip = next;
	}
	// ip now points to our target file
	return ip;
}