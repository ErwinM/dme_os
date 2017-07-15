#include "types.h"
#include "proc.h"
#include "mmap.h"

/* process table is directly linked with the available address spaces
 * determined by the size of the physical page table memory in CPU
 * size = 512 words / 32 pages per address space = 16 address spaces */

struct proc ptable[16];
struct scheduler stable;

int nextpid;

extern cntxret;
extern initcodestart;

void
pinit()
{
	int i = 0;
	struct proc *p;

	memset(&ptable,0,(uint)sizeof(ptable));
	for(p=ptable;p<&ptable[16];p++) {
		p->ptb = i;
		i++;
	}
	kprintf("pinit: ptable initialised.\n");
	nextpid = 0;
}

struct proc* allocproc()
{
	struct proc *p;
	char *sp;

	for(p=ptable;p<&ptable[16];p++) {
		if(p->state == UNUSED)
			goto found;
	}
	kprintf("allocproc: no free slot in ptable!\n");
	halt();
found:
	kprintf("found free slot at: %d\n", p->ptb);
	/* acquire and map into address space a new page for kstack of new process */
	p->kstackpage = addpage(62, 0x3);
	p->state = EMBRYO;
	p->pid = nextpid;
	nextpid++;

	/* get the right pointers into ptable */
	sp = (char*)KSTACKSCAFFOLD;
	sp -= (uint)sizeof *p->tf;
	p->tf = (struct trapframe*)(sp+0x800);
  sp -= 2;
	*(uint*)sp = (uint)&cntxret;
	sp -= 2;
	p->kstack = (uint*)(sp+0x800);


	return p;
}

void
userinit()
{
	struct proc *p;
	struct trapframe *tf;

	p = allocproc();
	setupkvm(p->ptb, p->kstackpage);
	inituvm(p->ptb, (uint)&initcodestart);

	tf=(struct trapframe*)((char*)KSTACKSCAFFOLD - (uint)sizeof(*tf));
	tf->sp = PGSIZE;
	tf->ip = 0;
	tf->cr = CR_PG | CR_IRQ;
	p->state = RUNNABLE;

	swtch(&stable.kstack, p->ptb, p->kstack );
}





