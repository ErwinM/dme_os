// block io via buffer cache

#include "types.h"
#include "buf.h"

struct {
	struct buf buf[3];
	struct buf head;
} bcache;


void binit(void)
{
  struct buf *b;
	breek();
  // Create linked list of buffers
  bcache.head.prev = &bcache.head;
  bcache.head.next = &bcache.head;
  for(b = bcache.buf; b < bcache.buf+NBUF; b++){
    b->next = bcache.head.next;
    b->prev = &bcache.head;
    bcache.head.next->prev = b;
    bcache.head.next = b;
  }
	kprintf("binit: buffer cache initialised...\n");
}

// Look through buffer cache for block on device dev.
// If not found, allocate a buffer.
// In either case, return B_BUSY buffer.
static struct buf* bget(uint blockno)
{
  struct buf *b;

 loop:
  // Is the block already cached?
 kprintf("bget: looking for buf with blockno: %x\n", blockno);
  for(b = bcache.head.next; b != &bcache.head; b = b->next){
    if(b->blockno == blockno){
      if(!(b->flags & B_BUSY)){
        b->flags |= B_BUSY;
        return b;
      }
			kprintf("bget: found block with blockno: %x at %x\n", blockno, b);
			breek();
      kprintf("sleep(b, &bcache.lock)\n");
			halt();
      goto loop;
    }
  }

  // Not cached; recycle some non-busy and clean buffer.
  // "clean" because B_DIRTY and !B_BUSY means log.c
  // hasn't yet committed the changes to the buffer.
  for(b = bcache.head.prev; b != &bcache.head; b = b->prev){
    if((b->flags & B_BUSY) == 0 && (b->flags & B_DIRTY) == 0){
      b->blockno = blockno;
      b->flags = B_BUSY;
			kprintf("bget: allocating new buffer at %x\n", (uint)b);
      return b;
    }
  }
 	kprintf("bget: no buffers");
	halt();
}


// Return a B_BUSY buf with the contents of the indicated block.
struct buf* bread(uint blockno)
{
  struct buf *b;

  b = bget(blockno);
  if(!(b->flags & B_VALID)) {
    sdrw(b);
  }
  return b;
}

// Write b's contents to disk.  Must be B_BUSY.
void
bwrite(struct buf *b)
{
  if((b->flags & B_BUSY) == 0)
    //panic("bwrite");
  b->flags |= B_DIRTY;
  //iderw(b);
}

// Release a B_BUSY buffer.
// Move to the head of the MRU list.
void
brelse(struct buf *b)
{
  if((b->flags & B_BUSY) == 0)
    //panic("brelse");

  b->next->prev = b->prev;
  b->prev->next = b->next;
  b->next = bcache.head.next;
  b->prev = &bcache.head;
  bcache.head.next->prev = b;
  bcache.head.next = b;

  b->flags &= ~B_BUSY;
  //wakeup(b);

}