# 1 "vm.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 330 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "vm.c" 2


# 1 "./types.h" 1
typedef unsigned int uint;
# 4 "vm.c" 2

uint frames[16];

void setframe(uint addr) {
 uint frame, idx, off;
 /*
 frame = addr / 0x800;
 off = (frame%16);
 */
 idx = 0xdead;
}
