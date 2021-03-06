#ifndef INCLUDE_MMAP_H
#define INCLUDE_MMAP_H

/* the kernel occupies the first 16 pages of physical memory
 * and is mapped to 0x8000 by boot.s
 */

#define KCODESTART 0x8000
#define KCODE	0x1000
#define KSTACKTOP 0xff00
#define KSTACKSCAFF_PG 30
#define KSTACKSCAFF_SP 0xf700
#define UARTBASE 0xff90

#define PGSIZE 0x800

#define ADDR2PG(a) (uint)(a/0x800)
#define PG2ADDR(a) (a*0x800)

#define CR_MD          0x01      // Mode
#define CR_CRY         0x02      // Carry
#define CR_PG          0x04      // Paging
#define CR_IRQ         0x08      // IRQ enable

#define PG_PR					 0x01
#define PG_SYS				 0x02


#endif