void* memmove(void *dst, const void *src, unsigned int n)
{
  const char *s;
  char *d;

  s = src;
  d = dst;

	s += n;
  d += n;
  while(n-- > 0)
    *--d = *--s;


  return dst;
}

void panic(const char *message)
{
    // We encountered a massive problem and have to stop.
    //asm volatile("cli"); // Disable interrupts.

		kprintf("PANIC(%s) at %s: %d\n", message);
    // trigger Bochs debug mode (magic instruction)
		breek();
}