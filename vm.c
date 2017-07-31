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
	int i;
	kprintf("setupkvm: building address space for ptb: %d\n", ptb);
	/* map the kernel code in new address space */
	for(i=0;i<=14;i++){
		writepte(ptb+i+16, ((i<<8)|0x1));
	}
	/* map stack in new address space */
	writepte(ptb + 31, (kstackpg << 8) | 0x3);
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
	writepte(0, (page << 8) | 0x1);
	/* and to the new aspace */
	writepte(ptb, (page << 8) | 0x1);

	memmove(0, init, 22);
}








