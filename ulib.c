#include "types.h"

struct {
	char data[64];
	int idx;
} pbuf;

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

  while(--i >= 0){
    pbuf.data[pbuf.idx] = buf[i];
		pbuf.idx++;
	}
}

void
printf(int fd, char *fmt, ...)
{
  int i, c;
  uint *argp;
  char *s;

	pbuf.idx = 0;
	//memset(pbuf.data,0,64);

  argp = (uint*)(&fmt + 1);


  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
    if(c != '%'){
      pbuf.data[pbuf.idx] = c;
			pbuf.idx++;
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
			breek();
      if((s = (char*)*argp++) == 0)
        s = "(null)";
      for(; *s; s++){
	      pbuf.data[pbuf.idx] = *s;
				pbuf.idx++;
			}
      break;
    case '%':
			pbuf.data[pbuf.idx] = '%';
			pbuf.idx++;
      break;
    default:
		/* Print unknown % sequence to draw attention. */
			pbuf.data[pbuf.idx] = '%';
			pbuf.idx++;
			pbuf.data[pbuf.idx] = c;
			pbuf.idx++;
     }
	}
	pbuf.data[pbuf.idx] = '\0';
	write(fd, &pbuf.data, pbuf.idx);
}

int
gets(int fd, char *buf, int max)
{
	int i;
	char c;
	//breek();
	for(i=0;i<=max;){
		read(fd, &c, 1);
		//printf("%x", c);
		if(c=='\r' || c=='\n' || c==0x3c){
			buf[i]=0;
			return i;
		} else {
			buf[i]=c;
			i++;
		}
	}
}