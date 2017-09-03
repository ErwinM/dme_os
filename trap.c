#include "types.h"
#include "proc.h"

extern struct proc *currproc;

void trap(struct trapframe *tf)
{
	currproc->tf = tf;
	kprintf("Trap: %x, uSP: %x\n", tf->r1, tf->sp);
	/* if timer IRQ: tf else: */
	if(tf->r1==0x2){
		kprintf("PAGE FAULT! by instruction at: %x", tf->pc);
		halt();
	}
	if(tf->r1==0x10){
		kprintf("SYSCALL! - ");
		kprintf("usp points to: %x\n", tf->sp);
		syscall();
	}

	if(tf->r1==0x8){
		sdirq(0);
	}
}
