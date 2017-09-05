#include "types.h"
#include "proc.h"
#include "defs.h"

extern struct proc *allocproc();
extern struct scheduler stable;

extern struct inode* iget(uint);
extern void ilock(struct inode*);

static char path[] = "/fs.h";

int kmain() {

	uint x,y, r;

  char name[13];
	char *p;
	struct inode *ip;
	inituart();
	cinit();
	kprintf("DME OS starting...\n");
	initkmem();
	pinit();
	//binit();
	//readsb();
	//p = nextelem((char*)&path, (char*)&name);
	//kprintf("name: %s\n", name);
	//kprintf("path: %s", p);
	//ip=namei((char*)&path);
	fsinit();
	userinit();
	scheduler();

	/*
	p = allocproc();
	kprintf("post allocproc\n");
	breek();
	setupkvm(p->ptb, p->kstackpage);
	swtch(&stable.kstack, p->ptb, p->kstack );

  */
	halt();
	/*int i = 3;
	return 23 % i;*/
}