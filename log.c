/* thoughts on the log
 instead of writing blocks directly to disk (and run the risk of not finishing
 and corrupting the disk), we will buffer writes and do them atomously

 we write them to a dedicated area on the disk, with an index as to where they belong
 we have some special instruction triggering the commit of the blocks
 we check at boot if we have uncommmitted blocks that need writing

 log header will occupy the first block of the header section (super wasteful, yeah)
 log section is not controlled through inodes (readi, iget, etc)

 xv6 buffers the entire transaction in the bcache and than writes everything to log and
 then to final disk location. We have a small bcache and thus write each block to the log
 as log_write is called. ACTUALLY, this won't do, since we could be writing many times to
 the same buffer (small nr of bytes at a time)
*/

#include "types.h"
#include "fs.h"
#include "buf.h"

extern struct superblock sb;

// struct log {
// 	uint
// };

// log always fills from the front: if n = 3, log blocks 1-3 need to be written to disk
struct logheader {
	uint n;
	uint blockno[LOGSIZE-1];
} loghdr;

void
getloghdr()
{
	struct buf *b;

	b = bread(sb.logstart);
	memmove(&loghdr, b->data, (uint)sizeof(loghdr));

}

// this function replaces bwrite to channel writes through the log
int
log_write(struct buf *b)
{
	// write the contents to log area of disk
	// status !DIRTY
	uint nextlog;
	struct buf *logblock;

	getloghdr();
	logblock = bget(sb.logstart + loghdr.n + 1);
	memmove(logblock->data, b->data, 512);
	bwrite(logblock);
	brelse(logblock);
	b->flags &=~B_DIRTY;
}