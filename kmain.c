#include "types.h"
#include "proc.h"

extern struct proc *allocproc();
extern struct scheduler stable;

int kmain() {

	uint x,y;

	/*kprintf("DME OS v%d starting...\n"); */
	breek();
	x = 12;
	y = 5;
	kprintf("div: %d", (x/y));
	kprintf("mod: %d", (x%y));

	/*initkmem();
	pinit();
	halt();
	breek();

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