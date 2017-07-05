_putc:
	; satisfy calling convention
	; we are not using stack so we can ommit some
	push r1
	push bp
	mov bp, sp
	; setup a pointer to uart reg at 0xff90
	la16 r4, 0xff90

	; wait until tx is free
check_tx_free:
	ldi r1, 5
	add r1, r1, r4
	ldw r1, r0(r1)
	ldi r2, 0x60
	and r1, r1, r2
	skip.eq r2, r1
	br check_tx_free
	; tx is free, load char (SP+2) and write to UART
	addi r1, bp, 4
	ldw r3, r0(r1)
	stb r0(r4), r3
	pop	bp
	pop	pc


_inituart:
	push r1
	push bp
	la16 r1, 0xff90
	mov r5, r1
	mov r1, r0
	stw 1(bp), r1   ; port + 1 0x00 - disable all interrupts
	ldi r1, 0x80
	stw 3(bp), r1   ; port + 3 0x80 enable dlab
	ldi r1, 32
	stw 0(bp), r1		; port + 0 set divisor to 1 LSB
	ldi r1, 0
	stw 1(bp), r1		; port + 1 set divisor to 1 MSB
	ldi r1, 3
	stw 3(bp), r1		; port + 3 set LCR - validate
	pop	bp
	pop	pc