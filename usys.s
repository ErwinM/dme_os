
_fork:
	push r1
	push bp
	mov bp, sp

	ldi r1, 1
	push r1
	syscall

	pop bp
	pop pc

_exec:
	push r1
	push bp
	mov bp, sp

	ldi r1, 7
	push r1
	syscall

	pop bp
	pop pc
