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
	addskp.z r2, r2, r1
	br check_tx_free
	; tx is free, load char (SP+2) and write to UART
	addi r1, bp, 4
	ldw r3, r0(r1)
	stb r0(r4), r3
	pop	bp
	pop	pc