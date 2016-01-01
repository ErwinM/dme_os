#include "types.h"
#include "fs.h"
#include "file.h"
#include "proc.h"
#include "defs.h"

struct file ftable[TOTFILE];
extern struct proc *currproc;

void
fileinit()
{
	memset(&ftable,0,(uint)sizeof(ftable));
}

struct file*
filealloc()
{
	struct file *f;
	for(f=ftable;f<&ftable[TOTFILE];f++){
		if(f->ref == 0) {
			f->ref = 1;
			return f;
		}
	}
	kprintf("filealloc: file table full!\n");
	halt();
}

int
fdalloc(struct file *f)
{
  int fd;

  for(fd = 0; fd < NOFILE; fd++){
    if(currproc->ofile[fd] == 0){
      currproc->ofile[fd] = f;
      return fd;
    }
  }
  return -1;
}

uint
fileopen(char *path, int omod)
{
	struct inode *ip;
	struct file *f;
	uint fd;

	// locate and load the target ip
	if((ip=namei(path))==0){
		kprintf("fileopen: cannot locate file: %s\n", path);
		return;
	}
	ilock(ip);
	// create an entry in the ftable for the file
	f = filealloc();
	f->type = FD_INODE;
	f->ip = ip;
	f->off = 0;
	f->readable = 1;
	f->writable = 0;

	// link the file to the curr process through an fd
	fd = fdalloc(f);
	kprintf("fileopen: found ip(%x) for %s\n, allocated fd(%d)", ip->inum, path, fd);
	currproc->ofile[fd]=f;

	return fd;
}

uint
fileread(uint fd, char *buf, uint n)
{
	// for now we only read inodes (files and devices)
	// in this section we will be handling pipes and
	// other redirects
	int nr;
	struct file *f;
	// readi(struct inode *ip, char *dst, uint off, uint n)
	f = currproc->ofile[fd];
	//kprintf("fileread: fd(%d), currproc(%x), f(%x), ip(%x)\n", fd, currproc, f, f->ip->inum);
	nr = readi(f->ip, buf, f->off, n);
	f->off += nr;
	return nr;
}