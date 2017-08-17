#include "types.h"

uint sys_exit(void) {
	kprintf("sys_exit\n");
}

uint sys_exec(void) {
/* the executable will have been called like so:
 * /path/to/executable arg1 argn
 * we will use standard convention of argc and *argv
 * ustack: syscallnr - ret addr - *exec - *argv
 */
	char *path, *argv;
	if(argstr(0, &path) < 0)
		halt();
	kprintf("sys_exec: path is %s\n", path);
	exec(path, argv);
}

uint sys_fork(void) {
/* fork does not take any arguments */
	kprintf("sys_fork: called\n");
	return fork();
}