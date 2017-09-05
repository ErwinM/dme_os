// sdcard driver
//

#include "types.h"
#include "buf.h"


struct buf *sdqueue;

void
sdrw(struct buf *bf)
{
	struct buf *b;

	/* the blockio would like to (for now) read this block
	 * so add it to the queue and call sdwork? */
	bf->qnext = 0;

	if(sdqueue){
		for(b=sdqueue; b->qnext!=0; b=b->qnext)
			;
		b->qnext = bf;
		kprintf("sdrw: added buf(%x) to queue.\n", bf);
	} else {
		kprintf("sdrw: buf(%x) is first inline.\n", bf);
		sdqueue = bf;
		sdwork();
	}
}

void
sdwork()
{
	struct buf *b;
	/* implement read */
	// check if disk is busy, if so sleep
	kprintf("sdwork: cmd: %x", sdreadcmd());
	if((sdreadcmd() & 0x4000) == 0x4000) {
		kprintf("sdword: disk busy!\n");
		sleep(&sdqueue);
	}
	// retrieve and remove next block from sdqueue
	if(!sdqueue)
		return;
	b = sdqueue;
	sdqueue = b->qnext;
	kprintf("-->sdwork: b: %x\n", b);
	kprintf("-->sdwork: sdq: %x\n", sdqueue);
	//breek();
	kprintf("sdwork: retrieving block %x\n", b->blockno);
	sdreadb(b->blockno, b->data);
	b->flags |= B_VALID;
	// fsim reads are (near) instant, in reality they take milliseconds
	// need to work with interrupts, but that requires:
	// - sd irq implemented in fsim
	// - sd irq interface researched
	// - proper sleep/wake functionality
}

void
sdirq(int forced)
{
	// a disk operation just completed
	// we need to wake every proc that is sleeping on disk
	// and possible start the next action in the disk queu (lets hold off on this)
	if(forced) {
		//kprintf("sdirq: forced disk irq\n");
		if((sdreadcmd() & 0x4000) == 0x4000) {
			//kprintf("sdirq: disk still busy..\n");
			return;
		}
	}
	wakeup(&sdqueue);

	if(sdqueue) {
		kprintf("sdirq: sdqueue: %x", (uint)sdqueue);
		sdwork();
	}
}