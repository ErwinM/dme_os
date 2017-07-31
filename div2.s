; this does work for high 16b numbers
; but uses so many (6) regs!!

; if D = 0 then error(DivisionByZeroException) end
; Q := 0                  -- Initialize quotient and remainder to zero
; R := 0
; for i := n − 1 .. 0 do  -- Where n is number of bits in N
;   R := R << 1           -- Left-shift R by 1 bit
;   R(0) := N(i)          -- Set the least-significant bit of R equal to bit i of the numerator
;   if R ≥ D then
;     R := R − D
;     Q(i) := 1
;   end
; end

	ld16 r4, 0xffff
	mov r6, r4 ; n
	ldi r4, 16
	mov bp, r4 ; cntr

	la16 r2, 0xffff ; d
	mov r3,r0 ; q
	mov r4,r0 ; r

L1:
	subi bp, bp, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, bp
	and r1, r6, r1

	shr.r r1, r1, bp
	or r4, r4, r1

	skip.ulte r2, r4
	br L2

	sub r4, r4, r2
	ldi r1, 1
	shl.r r1, r1, bp
	or r3, r3, r1

L2:
	skip.eq bp, r0
	br L1
	hlt





