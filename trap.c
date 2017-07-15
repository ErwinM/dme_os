#include "types.h"

void trap(uint trapnr, uint usp)
{
	kprintf("Trap: %d, uSP: %x\n", trapnr, usp);
	if(trapnr==0x10){
		kprintf("SYSCALL!");
	}
}
