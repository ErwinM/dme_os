// sdcard driver
//

#include "types.h"
#include "buf.h"


struct buf *sdqueue;

void sdrw(struct buf *bf)
{
	/* we need to do some error checking, and add disk queue mechanics
	 * but lets try to get it to work */
	sdwork(bf);
}

void
sdwork(struct buf *b)
{
	/* implement read */
	kprintf("sdwork: retrieving block %x\n", b->blockno);
	sdreadb(b->blockno, b->data);
	b->flags |= B_VALID;
	// fsim reads are (near) instant, in reality they take milliseconds
	// need to work with interrupts, but that requires:
	// - sd irq implemented in fsim
	// - sd irq interface researched
	// - proper sleep/wake functionality
}