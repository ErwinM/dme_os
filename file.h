#define TOTFILE			15 // number of concurrent open files across kernel

struct file {
  enum { FD_NONE, FD_PIPE, FD_INODE } type;
  int ref; // reference count
  char readable;
  char writable;
  //struct pipe *pipe;
  struct inode *ip;
  uint off;
};