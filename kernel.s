; MEMSET (char *dst, int c, uint n)
; bp + 8 has n
; bp + 6 has c
; bp + 4 has dst

_memset:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r1,4(bp) ; load dst
	ldw	r2,6(bp) ; load c
	ldw	r3,8(bp) ; load n
	; skip if n = aligned
	andi r4,r3,1
	skip.eq r4, r0
	br _stosb
	; skip if dst = aligned
	andi r4, r1, 1
	skip.eq r4, r0
	br _stosb
	; both n and dst are 2 byte aligned
	shl r4, r2, 8
	or r2, r2, r4
	subi r3, r3, 2
_stoswL1:
	add	r4,r1,r3
	stw	r0(r4),r2
	addskpi.z r3, r3, -2
	br _stoswL1
	stw r0(r1), r2
	br _memsetend
_stosb:
	subi r3, r3, 1
_stosbL1:
	add	r4,r1,r3
	stb	r0(r4),r2
	addskpi.z r3, r3, -1
	br _stosbL1
	stb r0(r1), r2
_memsetend:
	pop	bp
	pop	pc