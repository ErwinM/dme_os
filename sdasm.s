;	reads a single block identified by blockno
; into buffer pointed to by ptr
; usage: sdreadb(bf.blockno, &bf.data)
_sdreadb:
	push	r1
	push	bp
	mov	bp, sp
	ldw r1, 4(bp) ; blockno
	ldw r2, 6(bp) ; buf ptr
	; set fifo
	la16 r4, 0x0700
	la16	r3, 0xffa6
	stw r0(r3), r4

	la16	r4,0xffa6
	stw	r0(r4),r1

	la16	r4,0xffa2
	la16	r3, 0x8851
	stw	r0(r4),r3

	; FIXME: wait for finish here...
	push r2
	addi r1, pc, 4
	push r1
	br wait_while_busy
	pop r2

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


_sdreadcmd:
	push	r1
	la16 r2, 0xffa2
	ldw r1, r0(r2)
	pop	pc

;	writes a single block identified by blockno
; from buffer pointed to by ptr
; usage: sdwriteb(bf.blockno, &bf.data)
_sdwriteb:
	push	r1
	push	bp
	mov	bp, sp
	ldw r2, 6(bp) ; buf ptr

	; set fifo
	la16 r4, 0x0700
	la16	r3, 0xffa6
	stw r0(r3), r4

	; write block to fifo
	la16 r3, 0xffa8
	la16 r1, 512
	add r4, r2, r1	; when buf ptr reaches this address we are done (512 bytes)
L5:
	ldw r1, r0(r2)
	stw r0(r3), r1
	addi r2, r2, 2

	addi r3, r3, 2 ; increment sd fifo addr to low byte
	ldw r1, r0(r2)
	stw r0(r3), r1
	addi r2, r2, 2
	subi r3, r3, 2 ; decrease sd fifo addr to high byte

	skip.gte r2, r4
	br L5

	; issue write command
	ldw r1, 4(bp) ; blockno
	la16	r4,0xffa6
	stw	r0(r4),r1

	la16	r4, 0xffa2
	la16	r3, 0x8c58
	stw	r0(r4),r3
L6:
	mov	sp, bp
	pop	bp
	pop	pc

; SD initiation sequence
_sdinit:
	push	r1
	push	bp

	; INIT controller
	la16 r3, 0xffa0
	mov bp, r3
	; clear errors
	la16 r1, 0x8000
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

	ldi r1, 9  ; divider
	stw 6(bp), r1 ; save divider in data
	la16 r1, 0x0ff
	stw 2(bp), r1 ; issue SD_SETAUX command

	; Start INIT SDcard

	; CMD0
	ldi r1, 0x40
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

	la16 r1, 0x4000
	stw 4(bp), r1
	stw 6(bp), r0
	la16 r1, 0x41
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

	; CMD8
	la16 r1, 0x1a5
	stw 6(bp), r1
	ldi r1, 0x48
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

; Loop CMD 55 + CMD ACMD41 with HCS 1
get_out_of_idle:
	ldi r1, 0x77
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

	la16 r1, 0x4000
	stw 4(bp), r1
	stw 6(bp), r0
	la16 r1, 0x69
	stw 2(bp), r1
	addi r4, pc, 4
	push r4
	br wait_while_busy

	ldw r1, 2(bp)
	andi r1, r1, 1
	skip.eq r1, r0
	br get_out_of_idle

	pop	bp
	pop	pc

wait_while_busy:
	ld16 r1, 0xffa2
	ldw r2, r0(r1)
	la16 r1, 0x4000
	and r2, r1, r2
	skip.eq r1, r2
	pop pc
	br wait_while_busy