#include "types.h"
#include "proc.h"

extern struct proc *allocproc();
extern struct scheduler stable;

int kmain() {

	struct proc *p;

	kprintf("DME OS v%d starting...\n");
	initkmem();
	pinit();

	userinit();

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