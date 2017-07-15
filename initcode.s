;  Initial process execs /init.
;
; include "syscall.h"
; include "traps.h"
;
;
;  exec(init, argv)

_initcodestart:
  la16 r1, L2
  push r1
	la16 r1, L1
  push r1
	push r0    ; where caller pc would be
  ldi r1, 7 ; syscall 7 = exec
	push r1
  syscall

;# for(;;) exit();
;exit:
;  movl $SYS_exit, %eax
;  int $T_SYSCALL
;  jmp exit
;
;# char init[] = "/init\0";
L1:
 defstr "/init\0"
;
;# char *argv[] = { init, 0 };
;.p2align 2
;
L2:
  defw L1
	defw 0

