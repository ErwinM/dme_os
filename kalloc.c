#include "types.h"
#include "mmap.h"

#define IDXBIT(a) (a/(8*4))
#define OFFBIT(a) (a%(8*4))

struct chunk {
	struct chunk *next;
};

struct {
	struct chunk *freelist;
} kmem;

void
kinit1()
{
	kmem.freelist = 0;
}

void
kfree(char *addr)
{
	struct chunk *c;
	/*if((int)addr % PGSIZE) {
		printf("kfree: panic address not aligned");
	}
	*/
	memset(addr, 1, 2048);

	c = (struct chunk*)addr;
	c->next = kmem.freelist;
	kmem.freelist = c;
}