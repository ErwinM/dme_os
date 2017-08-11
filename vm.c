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
mapkernelvm(uint ptb, uint kstackpg)
{
	pte_t pte;
	int i;
	kprintf("mapkernelvm: building address space for ptb: %d\n", ptb);
	/* map the kernel code in new address space to pg 16 and above*/
	for(i=0;i<=14;i++){
		writepte(ptb+i+16, ((i<<8)|0x1));
	}
	/* map stack in new address space */
	writepte(ptb + 31, (kstackpg << 8) | 0x3);
}

void
mappage(uint ptb, uint ppage, uint vpage, char perm)
{
	pte_t pte;

	/* map it into the current address space */
	pte = (ppage << 8) | perm;
	writepte((ptb+vpage), pte);
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

	memmove(0, init, 26);
}

void
copyuvm(uint parentptb, uint childptb, uint size)
{
	uint i, pages, newpg;

	pages = ADDR2PG(size);
	kprintf("copyuvm: target %x, pages to copy: %x", childptb, pages);
	for(i=0;i<=pages;i++){
		// we need to add the new page to the parent address space so we can access it
		newpg = kalloc();
		mappage(parentptb, newpg, 30, 0x3);
		// copy its contents
		memmove(PG2ADDR(30), PG2ADDR(i), PGSIZE);
		// add it to the new address space
		mappage(childptb, newpg, i, 0x1);
	}
}


