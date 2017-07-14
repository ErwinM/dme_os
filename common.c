void*
memmove(void *dst, const void *src, unsigned int n)
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
