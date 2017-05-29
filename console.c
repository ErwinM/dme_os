
void kprintf(char *buf) {
	int i = 0;
	while( buf[i] != 0)
	{
		putc(buf[i]);
		i++;
	}
}