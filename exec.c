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

	/* lookup inode */
	if ((ip = namei(path))==0){
		kprintf("exec: file not found!\n");
		halt();
	}
	ilock(ip);

  // Check header
	readi(ip, (char*)&hdr, 0, (uint)sizeof(hdr));
	kprintf("exec: header loc (%x), magic (%x), size(%x)", (uint)&hdr, hdr.magic, hdr.size);
	if(hdr.magic != (uint)0xbabe) {
		kprintf("exec: did not find header\n");
		halt();
	}

	// adjust size of userspace to new binary image
	// FIXME: todo, currently we assume 1 page stays 1 page (i know)

  // Load program into memory of current user process
	loaduvm(ip, 6, hdr.size);

  // Allocate two pages at the next page boundary.
  // Make the first inaccessible.  Use the second as the user stack.
	// FIXME: maybe someday..

  // Push argument strings

	// prepare rest of stack in ustack.
	currproc->tf->pc = 0;
	currproc->tf->r1 = 0;
	currproc->tf->sp = PGSIZE-1;

  // Save program name for debugging.

  // Commit to the user image.

}