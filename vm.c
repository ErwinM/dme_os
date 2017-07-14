#include "types.h"
#include "mmap.h"

/* address space for kptb space has already been setup in boot.s */
uint kptb = 0;

void
initpag()
{
	initkmem();
}

int
setupkvm(uint ptb, uint kstackpg)
{
	pte_t pte;
	/* map the kernel code and scheduler kstack which already has its physical pages */
	writepte(ptb + KCODE/PGSIZE, 0x1);
	writepte(ptb + (KCODE+PGSIZE)/PGSIZE, 0x101);
	writepte(ptb + (KCODE+2*PGSIZE)/PGSIZE, 0x201);
	writepte(ptb + 31, (kstackpg << 8) | 0x3);
}

uint
getkstack()
{
	pte_t pte;
	uint pgnr;

	/* get a free page */
	pgnr = kalloc();
	/* map it to just under the current kstack page */
	pte = (pgnr << 8) | 0x3;
	writepte((32+30), pte);
	return pgnr;
}










