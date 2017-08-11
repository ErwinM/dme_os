// fork and exec sh


char *argv[] = { "sh", 0 };

void
main()
{
	// TODO: setup default read,write,error
	int pid;

	for(;;)
		if((pid=fork()) < 0);
			halt();

		if(i == 0) {
			// we are returning in the child process
			exec('/sh', argv);
			// exit();
			halt();
		} else {
			// we are returning in the parent
			// wait();

		}
	}
}