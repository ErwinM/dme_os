
enum procstate { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };

// Per-process state
struct proc {
  uint sz;                     // Size of process memory (bytes)
  uint ptb;                	   // Page table base (e.g. address space)
  uint *kstack;                // Bottom of kernel stack for this process
	uint kspage;                  // page that holds the stack for this process
  enum procstate state;        // Process state
  int pid;                     // Process ID

	struct trapframe *tf;

	void *chan;                  // If non-zero, sleeping on chan
  int killed;                  // If non-zero, have been killed

	char name[8];               // Process name (debugging)
};

struct trapframe {
	uint r1;
	uint r2;
	uint r3;
	uint r4;
	uint bp;
	uint sp;
	uint ip;
	char flags;
};

struct scheduler {
	uint *kstack;
};