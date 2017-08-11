;	reads a single block identified by blockno
; into buffer pointed to by ptr
; usage: sdreadb(bf.blockno, &bf.data)
_sdreadb:
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

	; FIXME: wait for finish here...

	la16 r3, 0xffa8
	la16 r1, 512
	add r4, r2, r1	; when buf ptr reaches this address we are done (512 bytes)

L4:
	ldw r1, r0(r3)
	stw r0(r2), r1
	addi r2, r2, 2

	addi r3, r3, 2 ; increment sd fifo addr to low byte
	ldw r1, r0(r3)
	stw r0(r2), r1
	addi r2, r2, 2
	subi r3, r3, 2 ; decrease sd fifo addr to high byte

	skip.gte r2, r4
	br L4

L3:
	mov	sp, bp
	pop	bp
	pop	pc