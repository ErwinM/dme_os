
struct buf {
	int flags;
	uint dev;
	uint blockno;
	struct buf *prev;
	struct buf *next;
	uchar data[512];
};

#define B_BUSY  0x1  // buffer is locked by some process
#define B_VALID 0x2  // buffer has been read from disk
#define B_DIRTY 0x4  // buffer needs to be written to disk

#define NBUF	10