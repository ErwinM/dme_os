#include "types.h"
#include "proc.h"
#include "mmap.h"

/* process table is directly linked with the available address spaces
 * determined by the size of the physical page table memory in CPU
 * size = 512 words / 32 pages per address space = 16 address spaces minus 1 for scheduler*/

struct proc ptable[15];
struct proc sched;
struct proc *currproc;

int nextpid;

extern contextret;
extern initcodestart;

void
pinit()
{
	int i = 1;
	struct proc *p;

	memset(&ptable,0,(uint)sizeof(ptable));

	for(p=ptable;p<&ptable[15];p++) {
		p->ptb = i*32;
		i++;
	}
	// setup scheduler process
	sched.ptb = 0;
	sched.kstackpage = 16;
	currproc = &sched;
	kprintf("pinit: ptable initialised at: 0x%x.\n", (uint)&ptable);
}

struct proc* allocproc()
{
	// allocproc will be used for first user process and fork (that's it)
	// fork will always be 'switched-to', so we should be building a contextframe
	struct proc *p;
	char *sp;

	for(p=ptable;p<&ptable[15];p++) {
		if(p->state == UNUSED)
			goto found;
	}
	kprintf("allocproc: no free slot in ptable!\n");
	halt();
found:
	kprintf("found free slot at: %d\n", p->ptb);
	/* acquire and map into address space a new page for kstack of new process */
	p->kstackpage = kalloc();
	mappage(currproc->ptb, p->kstackpage, KSTACKSCAFF_PG, 0x3);
	p->state = EMBRYO;
	p->pid = nextpid;
	nextpid++;

	/* get the right pointers into ptable */
	sp = (char*)KSTACKSCAFF_SP;
	sp -= (uint)sizeof *p->cf;
	p->cf = (struct contextframe*)(sp+0x800);
  sp -= 2;
	*(uint*)sp = (uint)&contextret;
	sp -= 2;
	p->kstack = (uint*)(sp+0x800);

	// copy in the user registers for this new proc (will all be 0 for userinit call)
	// we need this because on a fork call will have trapped using a simple trap that
	// has not pushed to uregs onto the kstack
	// FIXME: (potentially), are we sure user mode regs are 0 (should be..!)
	copyuregs((struct contextframe*)((uint)p->cf - 0x800));

	return p;
}

void
userinit()
{
	struct proc *p;
	struct contextframe *cf;

	p = allocproc();
	mapkernelvm(p->ptb, p->kstackpage);
	inituvm(p->ptb, (uint)&initcodestart);
	cf=(struct contextframe*)((char*)KSTACKSCAFF_SP - (uint)sizeof(*cf));
	cf->bp = PGSIZE;
	cf->sp = PGSIZE;
	cf->ip = 0;
	cf->cr = CR_PG | CR_IRQ;
	p->state = RUNNABLE;
	kprintf("userinit: first user process ready to run..\n");
}

void
scheduler()
{
	/* endless loop searching for RUNNABLE processes */
	struct proc *p;
	while(1){
		for(p=ptable;p<&ptable[15];p++) {
			if(p->state != RUNNABLE)
				continue;

			/* runnable process found */
			currproc = p;
			p->state = RUNNING;
			swtch(&sched.kstack, p->ptb, p->kstack );
			currproc = 0;
		}
	}
}

uint
fork(void)
{
	struct proc *child;
	struct contextframe *cf;

	// make an exact copy of the calling process:
	// 1. allocate and setup a new address space
	child = allocproc();
	// allocproc has mapped the user space regs into the new kstack at child->cf so
	// contextreturn can pop them
	mapkernelvm(child->ptb, child->kstackpage);
	kprintf("fork: *tf: %x", (uint)currproc->tf->r1);
	child->tf->r1 = 0xaa; // return 0 in the child
	child->sz = currproc->sz;
	child->state = RUNNABLE;
	// copy contents to new process
	copyuvm(currproc->ptb, child->ptb, currproc->sz);
	kprintf("HWG: ptb: %x, kstack: %x, pid: %x\n", child->ptb, child->kstack, child->pid);
	return 0xbb;
}