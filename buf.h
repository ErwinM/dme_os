
struct buf {
	int flags;
	uint blockno;
	struct buf *prev;
	struct buf *next;
	struct buf *qnext; // next to be processed by disk driver
	uchar data[512];
};

#define B_BUSY  0x1  // buffer is locked by some process
#define B_VALID 0x2  // buffer has been read from disk
#define B_DIRTY 0x4  // buffer needs to be written to disk

#define NBUF	3