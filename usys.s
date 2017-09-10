_fork:
	push r1
	push bp
	mov bp, sp

	ldi r1, 1
	br dosyscall

_exit:
	push r1
	push bp
	mov bp, sp

	ldi r1, 2
	br dosyscall

_wait:
	push r1
	push bp
	mov bp, sp

	ldi r1, 3
	br dosyscall

_exec:
	push r1
	push bp
	mov bp, sp

	ldi r1, 7
	br dosyscall

_read:
	push r1
	push bp
	mov bp, sp

	ldi r1, 5
	br dosyscall

_write:
	push r1
	push bp
	mov bp, sp

	ldi r1, 16
	br dosyscall

dosyscall:
	push r1
	syscall

	pop r4 ; this pops r1 (syscall number) from the stack into a random reg
	pop bp
	pop pc