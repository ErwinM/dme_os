; bp + 8 has n
; bp + 6 has c (already a word)
; bp + 4 has dst
_stosw:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r1,4(bp) ; load dst
	ldw	r2,6(bp) ; load c
	ldw	r3,8(bp) ; load n
	subi r3, r3, 2
_stoswL1:
	add	r4,r1,r3
	stw	r0(r4),r2
	addskpi.z r3, r3, -2
	br _stoswL1
	stw r0(r1), r2
	pop	bp
	pop	pc

; bp + 8 has n
; bp + 6 has c
; bp + 4 has dst
_stosb:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r1,4(bp) ; load dst
	ldw	r2,6(bp) ; load c
	ldw	r3,8(bp) ; load n
	subi r3, r3, 1
_stosbL1:
	add	r4,r1,r3
	stb	r0(r4),r2
	addskpi.z r3, r3, -1
	br _stosbL1
	stb r0(r1), r2
	pop	bp
	pop	pc