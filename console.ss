;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff;	.global _kprintf
;	.code
_kprintf:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	stw	-2(bp),r0
	la16	r4,L3
	br.r r4
L2:
	ldw	r4,-2(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	push	r4
	la16	r2,_putc ; jaddr
	addi	r1,pc,2
	br.r	r2
	ldw	r4,-2(bp)
	addi	r4,r4,1
	stw	-2(bp),r4
L3:
	ldw	r4,-2(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	skip.eq r4,r0
	br L2
L1:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _putc
;	.end