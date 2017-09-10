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
extern uint sys_fork(void);
extern uint sys_exit(void);
extern uint sys_wait(void);
extern uint sys_write(void);
extern uint sys_read(void);


extern struct proc *currproc;

static uint (*syscalls[17])(void)={
	0,
	sys_fork,
	sys_exit,
	sys_wait,
	0,
	sys_read,
	0,
	sys_exec,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	sys_write
};

/* Fetch the nth 16-bit system call argument.
 * ustack: syscallnr - bp - ret addr - arg1 - arg2 - arg3
 */

int
argint(int n, int *ip)
{
  int addr;

	addr = currproc->tf->sp + 6 + 2*n;
	//kprintf("argint: addr %x\n", addr);
	*ip = *(int*)addr;

	return 0;
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
	return 0;
}

int
argptr(int n, char **p, int sz)
{
	int i;

	if(argint(n, &i) < 0)
		halt();
	if( n>currproc->sz || i+sz>currproc->sz) {
		kprintf("hiero komt de halt: n(%x) proc.sz(%x), i+sz(%x)\n", n, currproc->sz, i+sz);
		halt();
	}
	*p = (char*)i;
	return 0;
}

void syscall(void)
{
	uint callnr;
	callnr = *(uint*)currproc->tf->sp;
	if(!syscalls[callnr]) {
		kprintf("unknown syscall nr %d\n", callnr);
		halt();
	} else {
		//kprintf("syscall: call id: %x\n", callnr);
		currproc->tf->r1 = syscalls[callnr]();
	}
}