// sdcard driver routines
// FIXME: move sdread/sdwrite to assembler for performance

#include "types.h"
#include "buf.h"

uint *sdcmd = (uint *)0xffa2;
uint *sddata = (uint *)0xffa6;
uint *sdfifo0H = (uint *)0xffa8;
uint *sdfifo0L = (uint *)0xffaa;

void sdread(struct buf *b);

struct buf bf;

void main()
{
	bf.blockno = 47;
	sdreadasm(bf.blockno, &bf);
	halt();
}

/*
void sdread(struct buf *b)
{
	int i;
	uint hibyte, lobyte;
	*(sddata) = 47;
	*(sdcmd) = 0x8851; // read block into fifo[0]

	for(i=0;i<512;i+=4){
		hibyte = *sdfifo0H;
		lobyte = *sdfifo0L;

		b->data[i] = hibyte >> 8;
		b->data[i+1] = hibyte & 0xff;
		b->data[i+2] = lobyte >> 8;
		b->data[i+3] = lobyte & 0xff;
	}
}
/*
void sdrw(struct buf *b)
{
	if(!(b->flags & B_BUSY))
		panic("buffer not busy!");
	if((b->flags & (B_VALID|B_DIRTY))==B_VALID) {
		// buf is valid and not dirty..
		panic("nothing to do!");
	}

	if(b->flags & B_DIRTY) {
		// need to write block to disk
		kprintf("need to write dirty block!");
	} else {
		// need to read block from disk
		sdread(b);
		b->flags |= B_VALID;
	}
}
*/
