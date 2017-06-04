#include "types.h"

void
memset(char *dst, int c, uint n)
{
	if( ((n&0x1) == 0) && (((int)dst&0x1)==0) ) {
		c = c | (c<<8);
  	stosw(dst, c, n);
	} else {
		stosb(dst, c, n);
	}
}