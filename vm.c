#define FRAMEIDX(frame) (frame/16)
#define FRAMEBIT(frame)	(frame%16)
#include "types.h"

uint frames[16];

int setframe(uint addr) {
	uint frame, idx, off;

	frame = addr / 0x800;
	idx = FRAMEIDX(frame);
	off = FRAMEBIT(frame);
}





