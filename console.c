#include "types.h"

void kprintfold(char *buf) {
	int i = 0;
	while( buf[i] != 0)
	{
		putc(buf[i]);
		i++;
	}
}

static void
printint(int xx, int base, int sign)
{
  static char digits[] = "0123456789abcdef";
  char buf[16];
  int i;
  uint x;

  if(sign && (sign = xx < 0))
    x = -xx;
  else
    x = xx;

  i = 0;
  do{
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);

  if(sign)
    buf[i++] = '-';

  while(--i >= 0)
    putc(buf[i]);
}

void
kprintf(char *fmt, ...)
{
  int i, c;
  uint *argp;
  char *s;

  argp = (uint*)(&fmt + 1);

  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
    if(c != '%'){
      putc(c);
      continue;
    }
    c = fmt[++i] & 0xff;
    if(c == 0)
      break;
    switch(c){
    case 'd':
			printint(*argp++, 10, 1);
      break;
    case 'x':
    case 'p':
		case 'h':
      printint(*argp++, 16, 0);
      break;
    case 's':
      if((s = (char*)*argp++) == 0)
        s = "(null)";
      for(; *s; s++)
        putc(*s);
      break;
    case '%':
      putc('%');
      break;
    default:
		/* Print unknown % sequence to draw attention.*/
      putc('%');
      putc(c);

    }
	}
}