;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff

	.data 0x1000
;	.global _argv
_argv:
	defw L1 ; DEFADDRESS
defw 0x0
;	.global _main
;	.code
_main:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
L3:
	la16	r4,_fork
	addi	r1,pc,2
	br.r	r4
	stw	-2(bp),r1
	ldw	r4,-2(bp)
	skip.lt r4, r0
	br L7
	la16	r4,_halt
	addi	r1,pc,2
	br.r	r4
L7:
	ldw	r4,-2(bp)
	skip.eq r4,r0
	br L9
	la16	r4,_breek
	addi	r1,pc,2
	br.r	r4
	la16	r4,_argv
	push	r4
	la16	r4,L1
	push	r4
	la16	r4,_exec
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L3
	br.r r4
L9:
	la16	r4,_wait
	addi	r1,pc,2
	br.r	r4
	la16	r4,L3
	br.r r4
L2:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _wait
;	.extern _exec
;	.extern _breek
;	.extern _halt
;	.extern _fork
	.data
L1:
	defb 47
	defb 115
	defb 104
	defb 0
;	.end