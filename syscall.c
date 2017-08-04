#include "types.h"
#include "syscall.h"
#include "proc.h"

/*
#define SYS_fork    1
#define SYS_exit    2
#define SYS_wait    3
#define SYS_pipe    4
#define SYS_read    5
#define SYS_kill    6
#define SYS_exec    7
#define SYS_fstat   8
#define SYS_chdir   9
#define SYS_dup    10
#define SYS_getpid 11
#define SYS_sbrk   12
#define SYS_sleep  13
#define SYS_uptime 14
#define SYS_open   15
#define SYS_write  16
#define SYS_mknod  17
#define SYS_unlink 18
#define SYS_link   19
#define SYS_mkdir  20
#define SYS_close  21
*/

extern uint sys_exec(void);
extern uint sys_exit(void);

extern struct proc *currproc;

static uint (*syscalls[8])(void)={
	0, 0,
	sys_exit,
	0,
	0,
	0,
	0,
	sys_exec
};

/* Fetch the nth 16-bit system call argument.
 * ustack: syscallnr - ret addr - *exec - *argv
 */

int
argint(int n, int *ip)
{
  int addr;

	addr = currproc->tf->sp + 4 + 2*n;
	*ip = *(int*)addr;

	return 1;
}

int
argstr(int n, char **str)
{
	int addr;

	if(argint(n, &addr)<0)
		return -1;
	kprintf("argstr: addr is %x", addr);
	*str = (char*)addr;
	kprintf("argstr: str is %x", *str);
	return 1;
}

void syscall(void)
{
	uint callnr;
	callnr = *(uint*)currproc->tf->sp;
	if(!syscalls[callnr]) {
		kprintf("unknown syscall nr %d", callnr);
		halt();
	} else {
		currproc->tf->r1 = syscalls[callnr]();
	}
}