// character io and uart driver

/* char buffer is implemented as a fifo
 * Queue is empty when in == out.
 * If in != out, then
 *  - items are placed into in before incrementing in
 *  - items are removed from out before incrementing out
 * Queue is full when in == (out-1)&63
 */

struct {
	char buf[64];
	int in;
	int out;
} cout;

int txactive;

void
cinit()
{
	cout.in = 0;
	cout.out = 0;
	txactive = 0;
	kprintf("cinit: initialised char buffer at: %x", &cout);
}

int
pushc(char *c)
{
	char c;

	if(cout.in == ((cout.out-1)&63)){
		kprintf("charput: cbuf is full!\n");
		halt();
	}

	cout.buf[cout.in] = *c;
	cout.in = (cout.in + 1) & 63;
	if(!txactive) {
		popc(&c);
		putc(c);		// kick off the uart since it is not running
	}
	return 1;
}

int
popc(char *c)
{
	if(cout.in == cout.out){
		kprintf("popc: buffer is empty!\n");
		halt();
	}

	*c = cout.buf[cout.out];
	cout.out = (cout.out+1)&63;
	return 1;
}

/* each write to uart triggers an irq (tx done)
 * when that arrives it should check for empty if not
 * transmit the next one..
 * what kicks off the first uart and how to prevent double triggering...
 * IMPORTANT: we cannot get interrupted while in kernel mode, only in user mode!!! */
