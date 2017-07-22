// code adapted (ripped of) from xv6

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <assert.h>

// this code will not be run on DME, but on a x86!!
// different type defs and little vs big endianess!!

typedef unsigned int uint;
typedef unsigned short ushort;
typedef unsigned char  uchar;
typedef uint pde_t;

#define min(a, b) ((a) < (b) ? (a) : (b))

#define stat dme_stat  // avoid clash with host struct stat
#include "fs.h"
//#include "stat.h"
//#include "param.h"

// Disk layout:
// [ boot block | sb block | log | inode blocks | free bit map | data blocks ]

int nbitmap = FSSIZE/(BSIZE*8) + 1;
int ninodeblocks = NINODES / IPB + 1;
int nlog = LOGSIZE;
int inodestart;
int bmapstart;
int nmeta;    // Number of meta blocks (boot, sb, nlog, inode, bitmap)
int nblocks;  // Number of data blocks

int fsfd;  // The file descriptor
struct superblock sb;
char zeroes[BSIZE];
uint freeinode = 1;
uint freeblock;


void balloc(int);
void wsect(uint, void*);
void winode(uint, struct dinode*);
void rinode(uint inum, struct dinode *ip);
void rsect(uint sec, void *buf);
uint16_t ialloc(ushort type);
void iappend(uint inum, void *p, int n);
void pbuf(void *buf);

// convert int from little to big endian (swap bytes)
uint16_t
xint(uint16_t x)
{
  uint16_t y;
  uchar *a = (uchar*)&y;
  uchar *b = (uchar*)&x;
  a[1] = x;
  a[0] = x >> 8;

	//printf("b[0]: %x -> a[0]: %x\n", b[0], a[0]);
	//printf("b[1]: %x -> a[1]: %x\n\n", b[1], a[1]);

  return y;
}

int
main(int argc, char *argv[])
{
  int i, cc, fd;
  uint rootino, inum, off;
  struct dirent de;
  char buf[BSIZE];
  struct dinode din;


  static_assert(sizeof(uint16_t) == 2, "uin16_t must be 2 bytes!");

  if(argc < 2){
    fprintf(stderr, "Usage: mkfs fs.img files...\n");
    exit(1);
  }

	//printf("size of dinode: %d", sizeof(struct dinode));
	//printf("size of direct: %d", sizeof(struct dirent));

  assert((BSIZE % sizeof(struct dinode)) == 0);
  assert((BSIZE % sizeof(struct dirent)) == 0);

  fsfd = open(argv[1], O_RDWR|O_CREAT|O_TRUNC, 0666);
  if(fsfd < 0){
    perror(argv[1]);
    exit(1);
  }

  // 1 fs block = 1 disk sector
  nmeta = 2 + nlog + ninodeblocks + nbitmap;
  nblocks = FSSIZE - nmeta;
	inodestart  = nlog + 2;
	bmapstart = 2+nlog+ninodeblocks;
  sb.size = xint(FSSIZE);
  sb.nblocks = xint(nblocks);
  sb.ninodes = xint(NINODES);
  sb.nlog = xint(nlog);
  sb.logstart = xint(2);
  sb.inodestart = xint(inodestart);
  sb.bmapstart = xint(bmapstart);

  printf("nmeta %d (boot, super, log blocks %u, inode blocks %u, bitmap blocks %u) blocks %d total %d\n",
         nmeta, nlog, ninodeblocks, nbitmap, nblocks, FSSIZE);

	freeblock = nmeta;     // the first free block that we can allocate

  for(i = 0; i < FSSIZE; i++)
    wsect(i, zeroes);

  memset(buf, 0, sizeof(buf));
  memmove(buf, &sb, sizeof(sb));
  wsect(1, buf);

	// allocate an inode for the root dir
  rootino = ialloc(T_DIR);
  assert(rootino == ROOTINO);

	// build the root dir itself

  memset(&de, 0, sizeof(de));
  de.inum = xint(rootino);
  strcpy(de.name, ".");
  iappend(rootino, &de, sizeof(de));


  memset(&de, 0 , sizeof(de));
  de.inum = xint(rootino);
  strcpy(de.name, "..");
  iappend(rootino, &de, sizeof(de));

  for(i = 2; i < argc; i++){
    assert(index(argv[i], '/') == 0);

    if((fd = open(argv[i], 0)) < 0){
      perror(argv[i]);
      exit(1);
    }

    // Skip leading _ in name when writing to file system.
    // The binaries are named _rm, _cat, etc. to keep the
    // build operating system from trying to execute them
    // in place of system binaries like rm and cat.
    if(argv[i][0] == '_')
      ++argv[i];

    inum = ialloc(T_FILE);

    memset(&de, 0, sizeof(de));
    de.inum = xint(inum);
    strncpy(de.name, argv[i], DIRSIZ);
    iappend(rootino, &de, sizeof(de));

    while((cc = read(fd, buf, sizeof(buf))) > 0)
      iappend(inum, buf, cc);

    close(fd);
  }

  // fix size of root inode dir
  rinode(rootino, &din);
  off = xint(din.size);
  off = ((off/BSIZE) + 1) * BSIZE;
  din.size = xint(off);
  winode(rootino, &din);

  balloc(freeblock);
  exit(0);
}

void
wsect(uint sec, void *buf)
{
  // move offset
	if(lseek(fsfd, sec * BSIZE, 0) != sec * BSIZE){
    perror("lseek");
    exit(1);
  }
	// write block
  if(write(fsfd, buf, BSIZE) != BSIZE){
    perror("write");
    exit(1);
  }
}

void
winode(uint inum, struct dinode *ip)
{
  char buf[BSIZE];
  uint bn;
  struct dinode *dip;

  bn = IBLOCK(inum, inodestart);
  rsect(bn, buf);
  dip = ((struct dinode*)buf) + (inum % IPB);
  *dip = *ip;
	printf("windode: writing at: %x (inum % IPB = %d)\n", bn*512, (inum % IPB));
  wsect(bn, buf);
}

void
rinode(uint inum, struct dinode *ip)
{
  char buf[BSIZE];
  uint bn;
  struct dinode *dip;

  bn = IBLOCK(inum, inodestart);
  rsect(bn, buf);

  dip = ((struct dinode*)buf) + (inum % IPB);
	printf("rinode: reading at: %x (inum % IPB = %d)\n", bn*512, (inum % IPB));
  *ip = *dip;
}

void
rsect(uint sec, void *buf)
{
  printf("Attempting to read at: %x\n", sec*512);
	if(lseek(fsfd, sec * BSIZE, 0) != sec * BSIZE){
    perror("lseek");
    exit(1);
  }
	uint sizeb;
  if(read(fsfd, buf, BSIZE) != BSIZE){
		perror("read:");
    exit(1);
  }
}

uint16_t
ialloc(ushort type)
{
  uint16_t inum = freeinode++;
  struct dinode din;
	printf("Allocating inum: %d\n", inum);
  memset(&din, 0, sizeof(din));
  din.type = xint(type);
  din.nlink = xint(1);
  din.size = xint(0);

  winode(inum, &din);
  return inum;
}


void
balloc(int used)
{
  uchar buf[BSIZE];
  int i;

  printf("balloc: first %d blocks have been allocated\n", used);
  assert(used < BSIZE*8);
  memset(buf, 0, BSIZE);
  for(i = 0; i < used; i++){
    buf[i/8] = buf[i/8] | (0x1 << (i%8));
  }
  printf("balloc: write bitmap block at sector %d\n", bmapstart);
  wsect(bmapstart, buf);
}


void
iappend(uint inum, void *xp, int n)
{
  char *p = (char*)xp;
  uint16_t fbn, off, n1;
  struct dinode din;
  char buf[BSIZE];
  uint16_t indirect[NINDIRECT];
  uint16_t x;

  rinode(inum, &din);
  off = xint(din.size);

  printf("append inum %d at off %d sz %d\n", inum, off, n);

	while(n > 0){
    fbn = off / BSIZE;
    assert(fbn < MAXFILE);
    if(fbn < NDIRECT){
      if(xint(din.addrs[fbn]) == 0){
        din.addrs[fbn] = xint(freeblock++);
      }
      x = xint(din.addrs[fbn]);
    } else {
      if(xint(din.addrs[NDIRECT]) == 0){
        din.addrs[NDIRECT] = xint(freeblock++);
      }
      rsect(xint(din.addrs[NDIRECT]), (char*)indirect);
      if(indirect[fbn - NDIRECT] == 0){
        indirect[fbn - NDIRECT] = xint(freeblock++);
        wsect(xint(din.addrs[NDIRECT]), (char*)indirect);
      }
      x = xint(indirect[fbn-NDIRECT]);
    }
    n1 = min(n, (fbn + 1) * BSIZE - off);
    rsect(x, buf);
    bcopy(p, buf + off - (fbn * BSIZE), n1);
    wsect(x, buf);
    n -= n1;
    off += n1;
    p += n1;
  }
  din.size = xint(off);
  winode(inum, &din);
}
