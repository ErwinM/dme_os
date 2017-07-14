#include "types.h"
#include "mmap.h"

#define PGFRAME(a) (a/16)
#define PGBIT(a) (a%16)

uint pframe[16];

void
initkmem()
{
	int i;
	for(i=1;i<=14;i++){
	pframe[i]=0xffff;
	}
	/* kernel code is in physical page 0 and 1 so these are never available */
	pframe[0] = 0x0fff;
	pframe[15] = 0xfffe;
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
	return freepg;
}