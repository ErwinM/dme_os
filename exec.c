#include "types.h"
#include "fs.h"
#include "defs.h"
#include "proc.h"
#include "mmap.h"


extern struct proc *currproc;


int
exec(char *path, char **argv)
{
	struct inode *ip;
	struct binhdr hdr;
	int oldsz;
	char *s, *last;
	//char procname[8];

	/* lookup inode */
	if ((ip = namei(path))==0){
		kprintf("exec: file not found!\n");
		halt();
	}

	ilock(ip);
	kprintf("exec, inum: %x", ip->inum);

  // Check header
	readi(ip, (char*)&hdr, 0, (uint)sizeof(hdr));
	kprintf("exec: header loc (%x), magic (%x), size(%x)\n", (uint)&hdr, hdr.magic, hdr.size);
	if(hdr.magic != (uint)0xbabe) {
		kprintf("exec: did not find exec header\n");
		halt();
	}

	// adjust size of userspace to new binary image
	// FIXME: we are only growing procs, we should also be shrinking them..
	kprintf("exec: hdr.size(%x), curr(%x)\n", hdr.size, currproc->sz);
	if((hdr.size+PGSIZE) > currproc->sz){
		currproc->sz = allocuvm(hdr.size+PGSIZE);
	}

  // Save program name for debugging.
  for(last=s=path; *s; s++)
    if(*s == '/')
      last = s+1;
  safestrcpy(currproc->name, last, (uint)sizeof(currproc->name));

  // Load program into memory of current user process
	loaduvm(ip, 6, hdr.size);
	iunlock(ip);
	iput(ip);
  // Push argument strings

	// prepare rest of stack in ustack.
	currproc->tf->pc = 0;
	currproc->tf->r1 = 0;
	currproc->tf->sp = currproc->sz;

  // Commit to the user image.
	//kprintf("exec: returning\n");
}