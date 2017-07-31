#include "types.h"
#include "mmap.h"

#define PGFRAME(a) (a/16)
#define PGBIT(a) (a%16)

/* SRAM is 512kb or 256 pages in size; requiring 16 words (of 16 bits) to map */
uint pframe[16];

void
initkmem()
{
	int i;
	for(i=0;i<=15;i++){
		pframe[i]=0xffff;
	}
	/* kernel code + stack will occupy the first 16 pages so we mark the first
	 * 16 pages unavailable.
	 * FIXME: optimise this later when actual size of kernel is known */
	pframe[0] = 0x0;
}

uint
findfreepg()
{
	int i,j, test;
	for (j=0;j<=16;j++) {
		if(pframe[j]==0)
			continue;
		for (i=15;i>=0;i--) {
			test = 0x1 << i;
			if (test & pframe[j])
				return (16*j)+(15-i);
		}
	}
	kprintf("Findfreepg: NO FREE PAGE FOUND!\n");
}

uint
kalloc()
{
	int freepg, framenr, mask;
	freepg = findfreepg();
	/* set the frame as taken */
	framenr = freepg / 16;
	mask = ~(0x1 << (15-freepg%16));
	pframe[framenr] &= mask;
	kprintf("kalloc: allocated page: %d\n", freepg);
	return freepg;
}