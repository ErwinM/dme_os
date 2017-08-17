
// bio.c
void binit(void);
struct buf* bread(uint blockno);

// fs.c
void fsinit(void);
struct inode* iget(uint inum);
void ilock(struct inode *ip);
char* nextelem(char *path, char *name);
struct inode* namei(char *path);
struct inode* dirlookup(struct inode*, char*);
int loaduvm(struct inode *ip, uint doff, uint size);