// character io and uart driver

/* char buffer is implemented as a fifo
 * Queue is empty when in == out.
 * If in != out, then
 *  - items are placed into in before incrementing in
 *  - items are removed from out before incrementing out
 * Queue is full when in == (out-1)&63
 */

#include "types.h"
#include "buf.h"

struct clist wterm;
struct clist rterm;

int txactive;

void
cinit()
{
	rterm.in = 0;
	rterm.out = 0;
	memset(&rterm.data, 0, 32);
	kprintf("cinit: initialised char buffer at: %x", &rterm);
}

int
pushc(char *c)
{
	if(rterm.in == ((rterm.out-1)&63)){
		kprintf("charput: cbuf is full!\n");
		halt();
	}

	rterm.data[rterm.in] = *c;
	rterm.in = (rterm.in + 1) & 63;

	return 1;
}

int
writeterm(char *str, int n)
{
	int i;
	for(i=0;i<=n;i++)
		putc(*(str+i));
}

int
readterm(char *str, int n)
{
loopreadterm:
	if(rterm.in==rterm.out){
		// no input received
		sleep(&rterm);
		goto loopreadterm;
	}
	if(n > rterm.in - rterm.out)
		n = rterm.in-rterm.out;

	memmove(str, &rterm.data[rterm.out], n);
	rterm.out = (rterm.out + 1)&63;
	return n;
}

/* each write to uart triggers an irq (tx done)
 * when that arrives it should check for empty if not
 * transmit the next one..
 * what kicks off the first uart and how to prevent double triggering...
 * IMPORTANT: we cannot get interrupted while in kernel mode, only in user mode!!! */
