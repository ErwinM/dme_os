#include "types.h"


uint
sys_write(void)
{
/* syscall:
 * write(fd, buf, nbytes)
 * we will use standard convention of argc and *argv
 * ustack: syscallnr - fd - *buf - n
 */
	char *buf;
	uint fd, n;

	if(argint(0, &fd) < 0)
		halt();
	if(argint(2, &n) < 0)
		halt();
	if(argptr(1, &buf, n) < 0)
		halt();

	//kprintf("sys_write: call to write: %x, n(%x)\n", (uint)buf, n);
	writeterm(buf, n);
	return 0;
}

uint
sys_read(void)
{
	// read(fd, buf, nbytes)
	char *buf;
	uint fd, n;

	if(argint(0, &fd) < 0)
		halt();
	if(argint(2, &n) < 0)
		halt();
	if(argptr(1, &buf, n) < 0)
		halt();

	//kprintf("sys_read: fd(%d)\n", fd);

	return fileread(fd, buf, n);
}

uint
sys_open(void)
{
	// open(path, mode)
	// ustack: syscallnr - *buf - omod
	char *path;
	uint omod;

	if(argstr(0, &path) < 0)
		halt();
	if(argint(1, omod) < 0)
		halt();

	return fileopen(path, omod);

}