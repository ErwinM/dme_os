#include "types.h"
#include "mmap.h"

#define IDXBIT(a) ((uint)a/(8*2))
#define OFFBIT(a) ((uint)a%(8*2))

struct {
	uint frame[16];
	uint freeptr;
} kmem;

void
kfree(uint *addr)
{
	uint idx, off;

	memset(addr, 1, PGSIZE);

	idx = IDXBIT(addr);
	off = OFFBIT(addr);
	kmem.frame[idx] |= (1<<off);
}

void
initkmem()
{
	int i;
	for(i=0;i<=16;i++){
		kmem.frame[i]=0xffff;
	}
	kmem.freeptr = 0;
}