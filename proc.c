#include "types.h"
#include "proc.h"
#include "mmap.h"

/* process table is directly linked with the available address spaces
 * determined by the size of the physical page table memory in CPU
 * size = 512 words / 32 pages per address space = 16 address spaces */

struct proc ptable[16];
struct scheduler stable;

int nextpid;

extern trapret;

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
	uint *builder;

	for(p=ptable;p<&ptable[16];p++) {
		if(p->state == UNUSED)
			goto found;
	}
	kprintf("allocproc: no free slot in ptable!\n");
	halt();
found:
	kprintf("found free slot at: %d\n", p->ptb);
	/* acquire and map into address space a new page for kstack of new process */
	p->kspage = getkstack();
	p->state = EMBRYO;
	p->pid = nextpid;
	nextpid++;

	/* get the right pointers into ptable */
	sp = (char*)KSTACKTOP;
	sp -= (uint)sizeof *p->tf;
	p->tf = (struct trapframe*)sp;
  sp -= 4;
	p->kstack = (uint*)sp;

	builder = (uint*)0xf6ee;
	*builder = (uint)&trapret;
	return p;
}

void
userinit()
{
	struct proc *p;

}





