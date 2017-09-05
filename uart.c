
#include "types.h"
#include "buf.h"
#include "defs.h"

extern struct clist wterm;
extern struct clist rterm;

void
uartw()
{
	char c;
	uint *addr;

	// lets for now not use IRQ on uart_tx - you either do this for all tx or non and it will hamper debugging

// check if TX is busy, if busy return (interrupt will trigger next iteration)
// addr = (uint*)0xff95;
// 	if((*addr&0x20) != 0x20)
// 		return;
// 	// buffer not empty and not busy so send off next byte
// 	c = wterm.data[wterm.out];
// 	wterm.out = (wterm.out+1)&63;
// 	addr = (uint*)0xff90;
// 	*addr = c;


}

void
uartirq()
{
	char c, lsr;
	char *addr;

	// for now an irq means there was INPUT (rx) from terminal
	// check if there is data
	lsr = *(uint*)0xff95;
	//kprintf("uartirq: lsr %x\n", lsr);
	if((lsr&0x1)==0)
		return;

	c = *(char*)0xff90;
	//kprintf("uartirq: %x", (uint)c);
	pushc(&c);

	// echo char
	// TODO: handle backspace, enter etc
	//putc(c);

	//wake any processes sleeping on rterm
	wakeup(&rterm);
}