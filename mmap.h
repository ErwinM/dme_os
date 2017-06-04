#ifndef INCLUDE_MMAP_H
#define INCLUDE_MMAP_H

// high kernel
// 16kb memory version (onchip / fsim)
// 8 pages
// kernel loaded at 0x0
// then paged to 0x1000 (0x0 - 0xfff adress space for user progs)

#define KCODE	0x1000
#define UARTBASE 0xff90

#define PGSIZE 0x800


#endif