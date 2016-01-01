




;	DME assembly file, generated by lcc 4.2

;	.global _main
;	.code
_main:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 18
	sub	sp, sp, r4
	la16	r4,L2_ls
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	push	r0
	la16	r4,L3_ls
	push	r4
	la16	r4,_open
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	stw	-18(bp),r1
	la16	r4,L5_ls
	br.r r4
L4_ls:
	ld16	r4, 16
	push	r4
	ld16	r4, -16
	add	r4, r4, bp
	push	r4
	ldw	r4,-18(bp)
	push	r4
	la16	r4,_read
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	ld16	r4, -14
	add	r4, r4, bp
	push	r4
	la16	r4,L7_ls
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
L5_ls:
	ldw	r4,-16(bp)
	skip.eq r4,r0
	br L4_ls
	la16	r4,_breek
	addi	r1,pc,2
	br.r	r4
	la16	r4,_exit
	addi	r1,pc,2
	br.r	r4
	mov	r1,r0
L1_ls:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _exit
;	.extern _breek
;	.extern _read
;	.extern _open
;	.extern _printf
	.bss
;	.global _buf
_buf:
	defs 14
	.data
L7_ls:
	defb 37
	defb 115
	defb 0
L3_ls:
	defb 46
	defb 0
L2_ls:
	defb 76
	defb 83
	defb 32
	defb 105
	defb 115
	defb 32
	defb 114
	defb 117
	defb 110
	defb 110
	defb 105
	defb 110
	defb 103
	defb 33
	defb 10
	defb 10
	defb 10
	defb 0
;	.end


_fork:
	push r1
	push bp
	mov bp, sp

	ldi r1, 1
	br dosyscall_usys

_exit:
	push r1
	push bp
	mov bp, sp

	ldi r1, 2
	br dosyscall_usys

_wait:
	push r1
	push bp
	mov bp, sp

	ldi r1, 3
	br dosyscall_usys

_exec:
	push r1
	push bp
	mov bp, sp

	ldi r1, 7
	br dosyscall_usys

_read:
	push r1
	push bp
	mov bp, sp

	ldi r1, 5
	br dosyscall_usys

_open:
	push r1
	push bp
	mov bp, sp

	ldi r1, 15
	br dosyscall_usys

_write:
	push r1
	push bp
	mov bp, sp

	ldi r1, 16
	br dosyscall_usys

dosyscall_usys:
	push r1
	syscall

	pop r4 ; this pops r1 (syscall number) from the stack into a random reg
	pop bp
	pop pc

;	DME assembly file, generated by lcc 4.2

;	.data 0x1000
L3_ulib:
	defb 48
	defb 49
	defb 50
	defb 51
	defb 52
	defb 53
	defb 54
	defb 55
	defb 56
	defb 57
	defb 97
	defb 98
	defb 99
	defb 100
	defb 101
	defb 102
	defb 0
;	.code
_printint:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 24
	sub	sp, sp, r4
	ldw	r3,8(bp)
	skip.ne	r3,r0
	br	L4_ulib
	ldw	r3,4(bp)
	skip.lt	r3,r0
	br L7_ulib
	ld16	r4, 1
	stw	-22(bp),r4
	la16	r4,L8_ulib
	br.r r4
L7_ulib:
	stw	-22(bp),r0
L8_ulib:
	ldw	r4,-22(bp)
	stw	8(bp),r4
	skip.ne	r4,r0
	br	L4_ulib
	ldw	r4,4(bp)
sub	r4,r0,r4
	stw	-4(bp),r4
	la16	r4,L5_ulib
	br.r r4
L4_ulib:
	ldw	r4,4(bp)
	stw	-4(bp),r4
L5_ulib:
	stw	-2(bp),r0
L9_ulib:
	ldw	r4,-2(bp)
	addi	r3,r4,1
	stw	-2(bp),r3
	ld16	r3, -20
	add	r3, r3, bp
	add	r4,r4,r3
	stw	-24(bp),r4
	ldw	r2,-4(bp)
	ldw	r3,6(bp)

push r2
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _mod
br.r r2
; restore registers & clean stack
pop r3
pop r2
; result will be in r1

	la16	r4,L3_ulib
	add	r4,r1,r4
	ldb	r4,r0(r4)
	ldw	r3,-24(bp)
	stb	r0(r3),r4
L10_ulib:
	ldw	r2,-4(bp)
	ldw	r4,6(bp)
	mov	r3,r4

push r2
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
; restore registers & clean stack
pop r3
pop r2
; result will be in r1

	stw	-4(bp),r1
	skip.eq r1,r0
	br L9_ulib
	ldw	r4,8(bp)
	skip.ne	r4,r0
	br	L15_ulib
	ldw	r4,-2(bp)
	addi	r3,r4,1
	stw	-2(bp),r3
	ld16	r3, -20
	add	r3, r3, bp
	add	r4,r4,r3
	ld16	r3, 45
	stb	r0(r4),r3
	la16	r4,L15_ulib
	br.r r4
L14_ulib:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	ld16	r2, -20
	add	r2, r2, bp
	add	r3,r3,r2
	ldb	r3,r0(r3)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L15_ulib:
	ldw	r4,-2(bp)
	subi	r4,r4,1
	stw	-2(bp),r4
	skip.lt	r4,r0
	br L14_ulib
L2_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _printf
_printf:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 8
	sub	sp, sp, r4
	la16	r4,_pbuf+64
	stw	r0(r4),r0
	ld16	r4, 6
	add	r4, r4, bp
	stw	-8(bp),r4
	stw	-6(bp),r0
	la16	r4,L2_ulib5
	br.r r4
L2_ulib2:
	ldw	r4,-2(bp)
	ld16	r3, 37
	skip.ne	r4,r3
	br	L2_ulib6
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,L2_ulib3
	br.r r4
L2_ulib6:
	ldw	r4,-6(bp)
	addi	r4,r4,1
	stw	-6(bp),r4
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 255
	and	r4,r4,r3
	stw	-2(bp),r4
	ldw	r4,-2(bp)
	skip.eq r4,r0
	br L3_ulib0
	la16	r4,L2_ulib4
	br.r r4
L3_ulib0:
	ldw	r4,-2(bp)
	ld16	r3, 104
	skip.ne	r4,r3
	br	L3_ulib5
	skip.lte	r4,r3
	br	L5_ulib4
L5_ulib3:
	ldw	r4,-2(bp)
	ld16	r3, 37
	skip.ne	r4,r3
	br	L4_ulib6
	skip.gte	r4,r3
	br	L3_ulib2
L5_ulib5:
	ldw	r4,-2(bp)
	ld16	r3, 100
	skip.ne	r4,r3
	br	L3_ulib4
	la16	r4,L3_ulib2
	br.r r4
L5_ulib4:
	ldw	r4,-2(bp)
	ld16	r3, 112
	skip.ne	r4,r3
	br	L3_ulib5
	ld16	r2, 115
	skip.ne	r4,r2
	br	L3_ulib6
	skip.gte	r4,r3
	br	L3_ulib2
L5_ulib6:
	ldw	r4,-2(bp)
	ld16	r3, 120
	skip.ne	r4,r3
	br	L3_ulib5
	la16	r4,L3_ulib2
	br.r r4
L3_ulib4:
	ld16	r4, 1
	push	r4
	ld16	r4, 10
	push	r4
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_printint
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	la16	r4,L3_ulib3
	br.r r4
L3_ulib5:
	push	r0
	ld16	r4, 16
	push	r4
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_printint
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	la16	r4,L3_ulib3
	br.r r4
L3_ulib6:
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	stw	-4(bp),r4
	skip.eq r4,r0
	br L4_ulib3
	la16	r4,L3_ulib9
	stw	-4(bp),r4
	la16	r4,L4_ulib3
	br.r r4
L4_ulib0:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-4(bp)
	ldb	r3,r0(r3)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L4_ulib1:
	ldw	r4,-4(bp)
	addi	r4,r4,1
	stw	-4(bp),r4
L4_ulib3:
	ldw	r4,-4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	skip.eq r4,r0
	br L4_ulib0
	la16	r4,L3_ulib3
	br.r r4
L4_ulib6:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ld16	r3, 37
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,L3_ulib3
	br.r r4
L3_ulib2:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ld16	r3, 37
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L3_ulib3:
L2_ulib3:
	ldw	r4,-6(bp)
	addi	r4,r4,1
	stw	-6(bp),r4
L2_ulib5:
	ldw	r4,-6(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 255
	and	r4,r4,r3
	stw	-2(bp),r4
	skip.eq r4,r0
	br L2_ulib2
L2_ulib4:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	stb	r0(r4),r0
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_pbuf
	push	r4
	ld16	r4, 1
	push	r4
	la16	r4,_write
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
L19_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _gets
_gets:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 4
	sub	sp, sp, r4
	stw	-4(bp),r0
	la16	r4,L61_ulib
	br.r r4
L60_ulib:
	ld16	r4, 1
	push	r4
	ld16	r4, -1
	add	r4, r4, bp
	push	r4
	ldw	r4,4(bp)
	push	r4
	la16	r4,_read
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	ldb	r4,-1(bp)
	sext	r4,r4
	ld16	r3, 13
	skip.ne	r4,r3
	br	L66_ulib
	ld16	r3, 10
	skip.ne	r4,r3
	br	L66_ulib
	ld16	r3, 60
	skip.eq r4,r3
	br L63_ulib
L66_ulib:
	ldw	r4,-4(bp)
	ldw	r3,6(bp)
	add	r4,r4,r3
	stb	r0(r4),r0
	ldw	r1,-4(bp)
	la16	r4,L5_ulib9
	br.r r4
L63_ulib:
	ldw	r4,-4(bp)
	ldw	r3,6(bp)
	add	r4,r4,r3
	ldb	r3,-1(bp)
	stb	r0(r4),r3
	ldw	r4,-4(bp)
	addi	r4,r4,1
	stw	-4(bp),r4
L61_ulib:
	ldw	r4,-4(bp)
	ldw	r3,8(bp)
	skip.gte	r4,r3
	br	L60_ulib
	mov	r1,r0
L5_ulib9:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _strcmp
_strcmp:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,L69_ulib
	br.r r4
L68_ulib:
	ldw	r4,8(bp)
	subi	r4,r4,1
	stw	8(bp),r4
	ld16	r4, 1
	ldw	r3,4(bp)
	add	r3,r3,r4
	stw	4(bp),r3
	ldw	r3,6(bp)
	add	r4,r3,r4
	stw	6(bp),r4
L69_ulib:
	ldw	r4,8(bp)
	skip.ne	r4,r0
	br	L7_ulib2
	ldw	r4,4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	skip.ne	r4,r0
	br	L7_ulib2
	ldw	r3,6(bp)
	ldb	r3,r0(r3)
	sext	r3,r3
	skip.ne	r4,r3
	br	L68_ulib
L7_ulib2:
	ldw	r4,8(bp)
	skip.eq r4,r0
	br L7_ulib3
	mov	r1,r0
	la16	r4,L67_ulib
	br.r r4
L7_ulib3:
	ldw	r4,4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	ldw	r3,6(bp)
	ldb	r3,r0(r3)
	sext	r3,r3
	sub	r1,r4,r3
L67_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _strcpy
_strcpy:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	stw	-2(bp),r4
L7_ulib6:
L7_ulib7:
	ldw	r4,4(bp)
	ld16	r3, 1
	add	r2,r4,r3
	stw	4(bp),r2
	ldw	r2,6(bp)
	add	r3,r2,r3
	stw	6(bp),r3
	ldb	r3,r0(r2)
	stb	r0(r4),r3
	skip.eq r3,r0
	br L7_ulib6
	ldw	r1,-2(bp)
L7_ulib5:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _read
;	.extern _write
	.bss
;	.global _pbuf
_pbuf:
	defs 66
	.data
L3_ulib9:
	defb 40
	defb 110
	defb 117
	defb 108
	defb 108
	defb 41
	defb 0
;	.end


_halt:
	push r1 ; for debugging
	hlt

_breek:
	push r1
	brk
	pop pc

;_strcpy:
;	push	r1
;	push	bp
;	mov	bp, sp
;	ldw	r4,4(bp)    ; dst
;	ldw	r3,6(bp)    ; src
;	ldw	r2,8(bp)    ; n
;	add	r4,r4,r2
;	add	r3,r3,r2
;	br _strcopyL3
;_strcopyL2:
;	subi	r2,r2,1
;	addi	r3,r3,-1
;	addi	r4,r4,-1
;	ldb	r1,r0(r3)
;	skip.eq r1,r0
;	br _strcopyL4
;	stb r0(r4),r0
;	br _strcopyL3
;_strcopyL4:
;	stb	r0(r4),r1
;_strcopyL3:
;	skip.eq r2,r0
;	br _strcopyL2
;	mov	r1,r4
;	mov	sp, bp
;	pop	bp
;	pop	pc

memmove_ulibasm:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r4,4(bp)    ; dst
	ldw	r3,6(bp)    ; src
	ldw	r2,8(bp)    ; n
	add	r4,r4,r2
	add	r3,r3,r2
	br _memmove_ulibasmL3
_memmove_ulibasmL2:
	subi	r2,r2,1
	addi	r3,r3,-1
	addi	r4,r4,-1
	ldb	r1,r0(r3)
	stb	r0(r4),r1
_memmove_ulibasmL3:
	skip.eq r2,r0
	br _memmove_ulibasmL2
	mov	r1,r4
	mov	sp, bp
	pop	bp
	pop	pc

; https://en.wikipedia.org/wiki/Division_algorithm#Integer_division_.28unsigned.29_with_remainder


; DIVIDE -------------------------
_div:
; normal function conventions to keep life simple
; we will not args to locals, since we kow what we are doing (he..)
; N is be in bp+6, D is in bp+4
; create 1 local to hold Q: bp-2
; r1 temp
; r2 cntr
; r3 load/store N/Q/D
; r4 R
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
divL1_pseudo_ops:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br divL2_pseudo_ops

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

divL2_pseudo_ops:
	skip.eq r2, r0
	br divL1_pseudo_ops
	ldw r1, -2(bp)
	mov	sp, bp
	pop	bp
	pop	pc

; MODULO -------------------------
; UNSIGNED
; (same algo as div, just returning remainer)
_mod:
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
modL1_pseudo_ops:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br modL2_pseudo_ops

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

modL2_pseudo_ops:
	skip.eq r2, r0
	br modL1_pseudo_ops
	mov r1, r4 ; transfer result to r1
	mov	sp, bp
	pop	bp
	pop	pc

; MULTIPLY  -------------------------
;
; (unsigned)
_mult:
	push r1
	push bp
	mov bp, sp
	ldw r2, 4(bp)
	ldw r3, 6(bp)

	mov r1, r0 ; result reg
; if a > b
	skip.gt r2, r3
	br multL2_pseudo_ops
; switch them
	mov r4, r2
	mov r2, r3
	mov r3, r4

multL2_pseudo_ops:
; while r1 > 1 loop
	ldi r4, 1
	skip.gt r2, r4
	br multL3_pseudo_ops
; check if r1 is even/odd
	andi r4, r2, 1
	skip.eq r4, r0
	add r1, r1, r3
	shr r2, r2, 1
	shl r3, r3, 1
	br multL2_pseudo_ops
multL3_pseudo_ops:
	andi r4, r2, 1
	skip.eq r4, r0
	add r1, r1, r3
	mov	sp, bp
	pop	bp
	pop	pc
