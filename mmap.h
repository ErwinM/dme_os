#ifndef INCLUDE_MMAP_H
#define INCLUDE_MMAP_H

// high kernel
// 16kb memory version (onchip / fsim)
// 8 pages
// kernel loaded at 0x0
// then paged to 0x1000 (0x0 - 0xfff adress space for user progs)


#define KCODE	0x1000
#define KSTACKTOP 0xff00
#define KSTACKSCAFFOLD 0xf700
#define UARTBASE 0xff90

#define PGSIZE 0x800

#define ADDR2PG(a) (a/0x800)
#define PG2ADDR(a) (a*0x800)

#define CR_MD          0x01      // Mode
#define CR_CRY         0x02      // Carry
#define CR_PG          0x04      // Paging
#define CR_IRQ         0x08      // IRQ enable


#endif