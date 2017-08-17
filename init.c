// setup default in/out/err-io
// fork and exec sh in an endless loop
// clean up any zombie processes


char *argv[] = { "sh", 0 };

void
main()
{
	// TODO: setup default read,write,error
	int pid;

	for(;;) {
		pid=fork();

		if(pid < 0) {
			halt();
		}

		if(pid == 0) {
			// we are returning in the child process
			exec("/sh", argv);
			//halt(); // control will never get here; exec replaces memory contents of this process
		} else {
			// we are returning in the parent
			wait();
			// check for zombies
		}
	}
}