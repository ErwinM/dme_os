;	.global _sdread
_sdreadasm:
	push	r1
	push	bp
	mov	bp, sp
	ldw r1, 4(bp) ; blockno
	ldw r2, 6(bp) ; buf ptr
	la16	r4,0xffa6
	stw	r0(r4),r1

	la16	r4,0xffa2
	ld16	r3, 0x8851
	stw	r0(r4),r3

	; wait for finish here...

	la16 r3, 0xffa8
	la16 r4, 0xffaa
L4:
	ldw r1, r0(r3)
	stw r0(r2), r1
	addi r2, r2, 2

	ldw r1, r0(r4)
	stw r0(r2), r1
	addi r2, r2, 2

	la16 r1, 512
	skip.gte r2, r1
	br L4

L3:
	mov	sp, bp
	pop	bp
	pop	pc