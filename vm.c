#include "types.h"
#include "mmap.h"
#include "proc.h"

/* address space for kptb space has already been setup in boot.s */
uint kptb = 0;
extern struct proc *currproc;

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
	kprintf("mapkernelvm: building address space for ptb: %x\n", ptb);
	/* map the kernel code in new address space to pg 16 and above*/
	for(i=0;i<=13;i++){
		writepte(ptb+i+16, ((i<<8)|0x1));
	}
	/* map stack in new address space */
	writepte(ptb + 31, (kstackpg << 8) | 0x3);
}

void
mappage(uint ptb, uint ppage, uint vpage,  int perm)
{
	pte_t pte;
	/* map it into the current address space */
	pte = (ppage << 8) | perm;
	//kprintf("mappage: ptb(%x), ppage(%x), vpage(%x), perm(%x)", ptb, ppage, vpage, perm);
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

	kprintf("copyuvm: target %x, pages to copy: %x", childptb, pages);
	for(i=0;i<size;i+=PGSIZE){
		// we need to add the new page to the parent address space so we can access it
		newpg = kalloc();
		mappage(parentptb, newpg, 30, 0x3);
		// copy its contents to the place holder page
		memmove((uint*)0xf000, i, PGSIZE);
		// add it to the new address space
		mappage(childptb, newpg, i/PGSIZE, 0x1);
	}
}

// load image into current user memory
int
loaduvm(struct inode *ip, uint doff, uint size)
{
	uint dst;

	// FIXME: still assuming one page for now
	dst = 0;
	memset(0, 0, PGSIZE);

	dst += readi(ip, (char*)dst, doff, size);
	return 1;
}

// grow uvm to size size
int
allocuvm(uint newsz)
{
	int i, currpgs, newpg;

	// a process' size is always a multiple of PGSIZE
	// the requested size does not have to be..
	kprintf("allocuvm: curr(%x) to new(%x)\n", currproc->sz, newsz);
	for(i=currproc->sz; i < newsz; i+=PGSIZE){
		newpg = kalloc();
		mappage(currproc->ptb, newpg, i/PGSIZE, 0x1);
	}
	kprintf("allocuvm: returning %x\n", i);
	currproc->sz = i;
	return i;
}
// shrink uvm

void
freeuvm(struct proc *p)
{
	uint pgtable[32], i, page;

	//kprintf("ptable at %x/n", &pgtable);

	readpt(p->ptb, &pgtable);
	// remember the kernel is also mapped in every address space. These
	// pages should not be freed!!

	// free every used page in user space
	for(i=0;i<16;i++){
		if( (pgtable[i] & PG_PR) == PG_PR ){
			//kprintf("freevm: pt entry: %x\n", pgtable[i]);
			page = (pgtable[i] >> 8);
			kfree(page);
		}
	}
	// free the kstack
	kfree(p->kstackpage);
}


