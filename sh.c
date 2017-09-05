// user shell, sh

char buf[32];

void
main()
{
	// lets assume we have our standard fd open

	printf(1, "DME shell v1 stating..\n\n");
	printf(1, "DME OS$ ");
	gets(0, &buf, 10);
	printf("you typed %s<<", buf);
	halt();
}

int
getcmd(char *buf)
{

}