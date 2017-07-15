#include "types.h"

void trap(uint trapnr, uint usp)
{
	kprintf("Trap: %d, uSP: %x", trapnr, usp);
	halt();
}
