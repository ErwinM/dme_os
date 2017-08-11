
// bio.c
struct buf* bread(uint blockno);

// fs.c
struct inode* iget(uint inum);
void ilock(struct inode *ip);
char* nextelem(char *path, char *name);
struct inode* namei(char *path);
struct inode* dirlookup(struct inode*, char*);