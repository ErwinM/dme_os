#include "types.h"
#include "mmap.h"

/* address space for kptb space has already been setup in boot.s */
uint kptb = 0;

void
initpag()
{
	initkmem();
}

void
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
	/* we are mapping page in the 2nd address space as set in boot.s */
	writepte((32+30), pte);
	return pgnr;
}

uint
addpage(uint maptopg, char perm)
{
	pte_t pte;
	uint pgnr;

	/* get a free page */
	pgnr = kalloc();
	/* map it into the current address space */
	pte = (pgnr << 8) | perm;
	writepte(maptopg, pte);
	return pgnr;
}

// Load the initcode into address 0 of pgdir.
// sz must be less than a page.
void inituvm(uint ptb, char *init)
{
  uint page;

  page = kalloc();
	/* add page to current aspace */
	writepte(32, (page << 8) | 0x1);
	/* and to the new aspace */
	writepte(ptb, (page << 8) | 0x1);

	memmove(0, init, 50);
}








