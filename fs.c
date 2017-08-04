/* file system routines */
#include "fs.h"
#include "buf.h"
#include "defs.h"
#include "proc.h"

struct superblock sb;
/* establish an icache to cache active inodes */
struct inode icache[NINODES];
struct dirent direntry;

extern struct proc *currproc;

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
	kprintf("iget: allocated inode at: %x\n", (uint)freeinode);
	breek();
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
  ip->flags |= I_VALID;
}

// Return the disk block address of the nth block in inode ip.
// If there is no such block, bmap allocates one.
int bmap(struct inode *ip, uint n)
{
	uint blockno;
	struct buf *b;

	if(n>NDIRECT) {
		kprintf("Indirect blocks not implemented yet!\n");
		halt();
	}

	return ip->addrs[n];
}


// Read data from inode.
int
readi(struct inode *ip, char *dst, uint off, uint n)
{
	struct buf *b;
	uint bn;

	// determine which block of the inode to read
	bn = bmap(ip, off/BSIZE);
	// cache said buffer in bcache
	b = bread(bn);
	// read the bytes requested
	kprintf("readi: from %x for %x(%x) bytes",b->data+(off%BSIZE), off%BSIZE, n );
	memmove(dst, b->data+(off%BSIZE), n);
	brelse(b);
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
			return iget(direntry.inum);
		}
		breek();
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

	p = path;
	while(*path != '/')
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
	struct inode *ip;
	int inum;

	// find where to begin
	if(path[0]=='/')
		ip = iget(ROOTINO);
	else
		ip = currproc->cwd;

	// traverse path and find the corresponding inode

}
