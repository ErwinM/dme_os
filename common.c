#include "types.h"

int
strcmp(const char *p, const char *q, uint n)
{
	while(n > 0 && *p && *p == *q)
		n--, p++, q++;
  if(n == 0)
    return 0;
  return (uchar)*p - (uchar)*q;
}

char*
safestrcpy(char *s, const char *t, int n)
{
  char *os;
  os = s;
  if(n <= 0)
    return os;
  while(--n > 0 && (*s++ = *t++) != 0)
    ;
  *s = 0;
  return os;
}

char*
strcopy(char *s, char *t)
{
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    ;
  return os;
}
