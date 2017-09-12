
enum procstate { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };

#define NOFILE	3						 // nr of files a single process can have open

// Per-process state
struct proc {
  uint sz;                     // Size of process memory (bytes)
  uint ptb;                	   // Page table base (e.g. address space)
  uint *kstack;                // Bottom of kernel stack for this process
	uint kstackpage;             // page that holds the stack for this process
	struct proc *parent;				 // parent process
	struct inode *cwd;           // pointer to current working dir
  enum procstate state;        // Process state
  int pid;                     // Process ID
	struct trapframe *tf;				 // ptr to tf;
	struct contextframe *cf;		 // ptr to cf; only used in timer-irq switch traps
	struct file *ofile[NOFILE];  // open files for process
	void *chan;                  // If non-zero, sleeping on chan
  int killed;                  // If non-zero, have been killed

	char name[8];                // Process name (debugging)
};

struct trapframe {
	uint trapno;
	uint r1;
	uint sp;
	uint pc;
};

struct contextframe {
	uint r1;
	uint r2;
	uint r3;
	uint r4;
	uint bp;
	uint sp;
	uint ip;
	uint cr;
};