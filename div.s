
; http://www.tofla.iconbar.com/tofla/arm/arm02/index.htm
;
; THIS DOES NOT WORK FOR HIGH 16B NUMBERS!!!!

	ldi r4, 1
	ldi r2, 87
	ldi r3, 7

div:
	mov r1, r0
divL1:
	skip.gt r2, r3
	br divL2
	shl r3, r3, 1
	shl r4, r4, 1
	br divL1

divL2:
	;ldi r5, 1
	;skip.gt r4, r5
	addskpi.nz r0, r4, 1
	br divL3
	shr r3, r3, 1
	shr r4, r4, 1

	skip.gte r2, r3
	br divL2
	sub r2, r2, r3
	or	r1, r1, r4
	br divL2

divL3:
	hlt
