// user shell, sh

char ibuf[32];

struct execcmd {
  int type;
	int argc;
  char *argv[5];
  char *eargv[5];
};

struct execcmd ecmd;

void
main()
{
	// lets assume we have our standard fd open

	printf(1, "DME shell v1 starting..\n\n");
	while(1){
		getcmd();
		wait();
		printf(1, "sh: getcmd returned\n");
	}
	halt();
}

int
getcmd()
{
	int pid;

	// for now it is always an execcmd
	printf(1, "DME OS$ ");
	gets(0, &ibuf, 20);
	parseline(&ibuf);
	nulterminate();
	//breek();
	pid = fork();
	if(pid==0)
		exec(ecmd.argv[0], ecmd.argv[0]);
}

char*
nspace(char *start)
{
	char *c;

	c = start;
	while(*c != 0){
		if(*c==0x20||*c=='_'){
			//printf("nspace: returning %x(%c)\n", c, *c);
			return c;
		}
		c++;
	}
	return c;
}

int
parseline(char *buf)
{
	char *c;

	// for as long as you do not reach the end of line
	// find the next space, which will be the end of the command
	ecmd.argc=0;
	for(c=buf;*c!=0;){
		ecmd.argv[ecmd.argc] = c;
		ecmd.eargv[ecmd.argc] = nspace(c);
		c = ecmd.eargv[ecmd.argc]+1;
		ecmd.argc++;
		if(ecmd.argc>4){
			printf("too many arguments!\n");
			return 0;
		}
	}
	return 1;
}

void
nulterminate()
{
	int i;
	struct execcmd *ecmdptr;

	ecmdptr = &ecmd;

	for(i=0;ecmdptr->argv[i];i++){
		*ecmdptr->eargv[i]=0;
	}
}