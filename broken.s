




;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff

;	.data 0x1000
;	.global _Reg
_Reg:
defw 0x0
;	.global _main
;	.code
_main:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 86
	sub	sp, sp, r4
	la16	r4,_Next_Ptr_Glob
	la16	r3,_nomalloc1
	stw	r0(r4),r3
	la16	r3,_Ptr_Glob
	la16	r2,_nomalloc2
	stw	r0(r3),r2
	ldw	r3,r0(r3)
	ldw	r4,r0(r4)
	stw	r0(r3),r4
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,2
	stw	r0(r4),r0
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,4
	ld16	r3, 2
	stw	r0(r4),r3
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	ld16	r3, 6
	add	r4,r4,r3
	ld16	r3, 40
	stw	r0(r4),r3
	la16	r4,L7_dhryc
	push	r4
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,8
	push	r4
	la16	r4,_strcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L8_dhryc
	push	r4
	ldi	r4, -77
	add	r4, r4, bp
	push	r4
	la16	r4,_strcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Arr_2_Glob+800+14
	ld16	r3, 10
	stw	r0(r4),r3
	la16	r4,L11_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L12_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L13_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L14_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_halt
	addi	r1,pc,2
	br.r	r4
	ld16	r4, 5000
	stw	-46(bp),r4
	la16	r4,L12_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	ldw	r4,-46(bp)
	push	r4
	la16	r4,L15_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 1
	stw	-12(bp),r4
	la16	r4,L19_dhryc
	br.r r4
L16_dhryc:
	la16	r4,_Proc_5
	addi	r1,pc,2
	br.r	r4
	la16	r4,_Proc_4
	addi	r1,pc,2
	br.r	r4
	ld16	r4, 2
	stw	-2(bp),r4
	ld16	r4, 3
	stw	-4(bp),r4
	la16	r4,L20_dhryc
	push	r4
	ldi	r4, -43
	add	r4, r4, bp
	push	r4
	la16	r4,_strcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 1
	stw	-10(bp),r4
	ldi	r4, -43
	add	r4, r4, bp
	push	r4
	ldi	r4, -77
	add	r4, r4, bp
	push	r4
	la16	r4,_Func_2
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	skip.eq r1,r0
	br L22_dhryc
	ldi	r4, -80
	add	r4, r4, bp
	ld16	r3, 1
	stw	r0(r4),r3
	la16	r4,L23_dhryc
	br.r r4
L22_dhryc:
	ldi	r4, -80
	add	r4, r4, bp
	stw	r0(r4),r0
L23_dhryc:
	la16	r4,_Bool_Glob
	ldi	r3, -80
	add	r3, r3, bp
	ldw	r3,r0(r3)
	stw	r0(r4),r3
	la16	r4,L25_dhryc
	br.r r4
L24_dhryc:
	ldw	r4,-2(bp)
	ldi	r2, -84
	add	r2, r2, bp
	stw	r0(r2),r4
	ldw	r3,-4(bp)
	ldi	r4, -86
	add	r4, r4, bp
	stw	r0(r4),r3
	ld16	r2, 5
	ldi	r2, -82
	add	r2, r2, bp
	stw	r0(r2),r2

push r2
push r4
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	ldi	r4, -86
	add	r4, r4, bp
	ldw	r4,r0(r4)
	sub	r4,r1,r4
	stw	-8(bp),r4
	ldi	r4, -8
	add	r4, r4, bp
	push	r4
	ldi	r4, -86
	add	r4, r4, bp
	ldw	r4,r0(r4)
	push	r4
	ldi	r4, -84
	add	r4, r4, bp
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_Proc_7
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	ldw	r4,-2(bp)
	addi	r4,r4,1
	stw	-2(bp),r4
L25_dhryc:
	ldw	r4,-2(bp)
	ldw	r3,-4(bp)
	skip.gte	r4,r3
	br	L24_dhryc
	ldw	r4,-8(bp)
	push	r4
	ldw	r4,-2(bp)
	push	r4
	la16	r4,_Arr_2_Glob
	push	r4
	la16	r4,_Arr_1_Glob
	push	r4
	la16	r4,_Proc_8
	addi	r1,pc,2
	br.r	r4
	ldi	r2,8
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_Proc_1
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	ld16	r4, 65
	stb	-5(bp),r4
	la16	r4,L30_dhryc
	br.r r4
L27_dhryc:
	ld16	r4, 67
	push	r4
	ldb	r4,-5(bp)
	push	r4
	la16	r4,_Func_1
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ldw	r3,-10(bp)
	skip.eq r3,r1
	br L31_dhryc
	ldi	r4, -10
	add	r4, r4, bp
	push	r4
	push	r0
	la16	r4,_Proc_6
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L33_dhryc
	push	r4
	ldi	r4, -43
	add	r4, r4, bp
	push	r4
	la16	r4,_strcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ldw	r4,-12(bp)
	stw	-4(bp),r4
	la16	r3,_Int_Glob
	stw	r0(r3),r4
L31_dhryc:
L28_dhryc:
	ldb	r4,-5(bp)
	addi	r4,r4,1
	stb	-5(bp),r4
L30_dhryc:
	ldb	r4,-5(bp)
	la16	r3,_Ch_2_Glob
	ldb	r3,r0(r3)
	sext	r3,r3
	skip.gt	r4,r3
	br	L27_dhryc
	ldw	r4,-4(bp)
	ldw	r3,-2(bp)

push r4
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	stw	-4(bp),r1
	ldw	r4,-4(bp)
	ldi	r2, -82
	add	r2, r2, bp
	stw	r0(r2),r4
	ldw	r3,-8(bp)
	ldi	r4, -84
	add	r4, r4, bp
	stw	r0(r4),r3

push r4
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
; clean stack
addi sp, sp, 4
; result will be in r1

	stw	-2(bp),r1
	ld16	r4, 7
	ldi	r3, -82
	add	r3, r3, bp
	ldw	r3,r0(r3)
	ldi	r2, -84
	add	r2, r2, bp
	ldw	r2,r0(r2)
	sub	r3,r3,r2

push r4
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	ldw	r4,-2(bp)
	sub	r4,r1,r4
	stw	-4(bp),r4
	ldi	r4, -2
	add	r4, r4, bp
	push	r4
	la16	r4,_Proc_2
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
L17_dhryc:
	ldw	r4,-12(bp)
	addi	r4,r4,1
	stw	-12(bp),r4
L19_dhryc:
	ldw	r4,-12(bp)
	ldw	r3,-46(bp)
	skip.gt	r4,r3
	br	L16_dhryc
	la16	r4,L34_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L12_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L35_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L12_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_Int_Glob
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L36_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 5
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Bool_Glob
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L38_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 1
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Ch_1_Glob
	ldb	r4,r0(r4)
	sext	r4,r4
	push	r4
	la16	r4,L39_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 65
	push	r4
	la16	r4,L40_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Ch_2_Glob
	ldb	r4,r0(r4)
	sext	r4,r4
	push	r4
	la16	r4,L41_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 66
	push	r4
	la16	r4,L40_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Arr_1_Glob+16
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L42_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 7
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Arr_2_Glob+800+14
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L44_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L47_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L48_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L49_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L50_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,2
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L51_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	push	r0
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,4
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L52_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 2
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	ld16	r3, 6
	add	r4,r4,r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L53_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 17
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,8
	push	r4
	la16	r4,L54_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L55_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,L56_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_Next_Ptr_Glob
	ldw	r4,r0(r4)
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L49_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L57_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	la16	r4,_Next_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,2
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L51_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	push	r0
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Next_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,4
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L52_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 1
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Next_Ptr_Glob
	ldw	r4,r0(r4)
	ld16	r3, 6
	add	r4,r4,r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,L53_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 18
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_Next_Ptr_Glob
	ldw	r4,r0(r4)
	addi	r4,r4,8
	push	r4
	la16	r4,L54_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,L55_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	ldw	r4,-2(bp)
	push	r4
	la16	r4,L58_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 5
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ldw	r4,-4(bp)
	push	r4
	la16	r4,L59_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 13
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ldw	r4,-8(bp)
	push	r4
	la16	r4,L6_dhryc0
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ld16	r4, 7
	push	r4
	la16	r4,L37_dhryc
	push	r4
	la16	r4,_printf
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	la16	r4,_exit
	addi	r1,pc,2
	br.r	r4
	mov	r1,r0
L6_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_1
_Proc_1:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	ldw	r4,r0(r4)
	stw	-2(bp),r4
	ld16	r4, 40
	push	r4
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	push	r4
	ldw	r4,4(bp)
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_memcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	ldw	r4,4(bp)
	ld16	r3, 6
	add	r4,r4,r3
	ld16	r3, 5
	stw	r0(r4),r3
	ld16	r4, 6
	ldw	r3,-2(bp)
	add	r3,r3,r4
	ldw	r2,4(bp)
	add	r4,r2,r4
	ldw	r4,r0(r4)
	stw	r0(r3),r4
	ldw	r4,-2(bp)
	ldw	r3,4(bp)
	ldw	r3,r0(r3)
	stw	r0(r4),r3
	ldw	r4,-2(bp)
	push	r4
	la16	r4,_Proc_3
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	ldw	r4,-2(bp)
	addi	r4,r4,2
	ldw	r4,r0(r4)
	skip.eq r4,r0
	br L6_dhryc2
	ldw	r4,-2(bp)
	ld16	r3, 6
	add	r4,r4,r3
	ld16	r3, 6
	stw	r0(r4),r3
	ld16	r4, 4
	ldw	r3,-2(bp)
	add	r3,r3,r4
	push	r3
	ldw	r3,4(bp)
	add	r4,r3,r4
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_Proc_6
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	ldw	r4,-2(bp)
	la16	r3,_Ptr_Glob
	ldw	r3,r0(r3)
	ldw	r3,r0(r3)
	stw	r0(r4),r3
	ldw	r4,-2(bp)
	ld16	r3, 6
	add	r4,r4,r3
	push	r4
	ld16	r3, 10
	push	r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_Proc_7
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	la16	r4,L6_dhryc3
	br.r r4
L6_dhryc2:
	ld16	r4, 40
	push	r4
	ldw	r4,4(bp)
	ldw	r3,r0(r4)
	push	r3
	push	r4
	la16	r4,_memcpy
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
L6_dhryc3:
	mov	r1,r0
L6_dhryc1:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_2
_Proc_2:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 4
	sub	sp, sp, r4
	ldw	r4,4(bp)
	ldw	r4,r0(r4)
	ld16	r3, 10
	add	r4,r4,r3
	stw	-4(bp),r4
L6_dhryc5:
	la16	r4,_Ch_1_Glob
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 65
	skip.eq r4,r3
	br L6_dhryc8
	ldw	r4,-4(bp)
	subi	r4,r4,1
	stw	-4(bp),r4
	ldw	r4,4(bp)
	ldw	r3,-4(bp)
	la16	r2,_Int_Glob
	ldw	r2,r0(r2)
	sub	r3,r3,r2
	stw	r0(r4),r3
	stw	-2(bp),r0
L6_dhryc8:
L6_dhryc6:
	ldw	r4,-2(bp)
	skip.eq r4,r0
	br L6_dhryc5
	mov	r1,r0
L6_dhryc4:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_3
_Proc_3:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	skip.ne	r4,r0
	br	L7_dhryc1_dhryc
	ldw	r4,4(bp)
	la16	r3,_Ptr_Glob
	ldw	r3,r0(r3)
	ldw	r3,r0(r3)
	stw	r0(r4),r3
L7_dhryc1_dhryc:
	la16	r4,_Ptr_Glob
	ldw	r4,r0(r4)
	ld16	r3, 6
	add	r4,r4,r3
	push	r4
	la16	r4,_Int_Glob
	ldw	r4,r0(r4)
	push	r4
	ld16	r4, 10
	push	r4
	la16	r4,_Proc_7
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	mov	r1,r0
L7_dhryc0_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_4
_Proc_4:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 4
	sub	sp, sp, r4
	la16	r4,_Ch_1_Glob
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 65
	skip.eq r4,r3
	br L7_dhryc5_dhryc
	ld16	r4, 1
	stw	-4(bp),r4
	la16	r4,L7_dhryc6_dhryc
	br.r r4
L7_dhryc5_dhryc:
	stw	-4(bp),r0
L7_dhryc6_dhryc:
	ldw	r4,-4(bp)
	stw	-2(bp),r4
	la16	r4,_Bool_Glob
	ldw	r3,-2(bp)
	ldw	r2,r0(r4)
	or	r3,r3,r2
	stw	r0(r4),r3
	la16	r4,_Ch_2_Glob
	ld16	r3, 66
	stb	r0(r4),r3
	mov	r1,r0
L7_dhryc3_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_5
_Proc_5:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,_Ch_1_Glob
	ld16	r3, 65
	stb	r0(r4),r3
	la16	r4,_Bool_Glob
	stw	r0(r4),r0
	mov	r1,r0
L7_dhryc7_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _memcpy
_memcpy:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,L8_dhryc0_dhryc
	br.r r4
L7_dhryc9_dhryc:
	ldw	r4,4(bp)
	ld16	r3, 1
	add	r2,r4,r3
	stw	4(bp),r2
	ldw	r2,6(bp)
	add	r3,r2,r3
	stw	6(bp),r3
	ldb	r3,r0(r2)
	stb	r0(r4),r3
L8_dhryc0_dhryc:
	ldw	r4,8(bp)
	subi	r3,r4,1
	stw	8(bp),r3
	skip.eq r4,r0
	br L7_dhryc9_dhryc
	mov	r1,r0
L7_dhryc8_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_6
_Proc_6:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	stw	4(bp),r4
	ldw	r4,6(bp)
	ldw	r3,4(bp)
	stw	r0(r4),r3
	ldw	r4,4(bp)
	push	r4
	la16	r4,_Func_3
	addi	r1,pc,2
	br.r	r4
	ldi	r2,2
	add	sp,sp,r2
	skip.eq r1,r0
	br L8_dhryc3_dhryc
	ldw	r4,6(bp)
	ld16	r3, 3
	stw	r0(r4),r3
L8_dhryc3_dhryc:
	ldw	r4,4(bp)
	stw	-2(bp),r4
	ldw	r4,-2(bp)
	skip.gte	r4,r0
	br	L8_dhryc5_dhryc
	ld16	r3, 4
	skip.lte	r4,r3
	br	L8_dhryc5_dhryc
	shl	r4, r4, 1
	la16	r3,L95_dhryc
	add	r4,r4,r3
	ldw	r4,r0(r4)
	br.r r4
	.data
L95_dhryc:
	defw L8_dhryc8_dhryc ; DEFADDRESS
	defw L8_dhryc9_dhryc ; DEFADDRESS
	defw L92_dhryc ; DEFADDRESS
	defw L8_dhryc6_dhryc ; DEFADDRESS
	defw L94_dhryc ; DEFADDRESS
;	.code
L8_dhryc8_dhryc:
	ldw	r4,6(bp)
	stw	r0(r4),r0
	la16	r4,L8_dhryc6_dhryc
	br.r r4
L8_dhryc9_dhryc:
	la16	r4,_Int_Glob
	ldw	r4,r0(r4)
	ld16	r3, 100
	skip.gt	r4,r3
	br	L90_dhryc
	ldw	r4,6(bp)
	stw	r0(r4),r0
	la16	r4,L8_dhryc6_dhryc
	br.r r4
L90_dhryc:
	ldw	r4,6(bp)
	ld16	r3, 3
	stw	r0(r4),r3
	la16	r4,L8_dhryc6_dhryc
	br.r r4
L92_dhryc:
	ldw	r4,6(bp)
	ld16	r3, 1
	stw	r0(r4),r3
	la16	r4,L8_dhryc6_dhryc
	br.r r4
L94_dhryc:
	ldw	r4,6(bp)
	ld16	r3, 2
	stw	r0(r4),r3
L8_dhryc5_dhryc:
L8_dhryc6_dhryc:
	mov	r1,r0
L8_dhryc2_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_7
_Proc_7:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	addi	r4,r4,2
	stw	-2(bp),r4
	ldw	r4,8(bp)
	ldw	r3,6(bp)
	ldw	r2,-2(bp)
	add	r3,r3,r2
	stw	r0(r4),r3
	mov	r1,r0
L96_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Proc_8
_Proc_8:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 22
	sub	sp, sp, r4
	ldw	r4,8(bp)
	ld16	r3, 5
	add	r4,r4,r3
	stw	-2(bp),r4
	ldw	r4,-2(bp)
	shl	r4, r4, 1
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldw	r3,10(bp)
	stw	r0(r4),r3
	ldw	r4,-2(bp)
	shl	r4, r4, 1
	ldw	r3,4(bp)
	addi	r2,r4,2
	add	r2,r2,r3
	add	r4,r4,r3
	ldw	r4,r0(r4)
	stw	r0(r2),r4
	ldw	r4,-2(bp)
	shl	r3, r4, 1
	ld16	r2, 60
	add	r3,r3,r2
	ldw	r2,4(bp)
	add	r3,r3,r2
	stw	r0(r3),r4
	ldw	r4,-2(bp)
	stw	-4(bp),r4
	la16	r4,L101_dhryc
	br.r r4
L98_dhryc:
	ldw	r4,-2(bp)
	stw	-8(bp),r4
	ldw	r3,-4(bp)
	shl	r3, r3, 1
	stw	-10(bp),r3
	ld16	r2, 100
	stw	-6(bp),r2

push r2
push r4
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	ldw	r4,6(bp)
	add	r4,r1,r4
	ldw	r3,-10(bp)
	add	r4,r3,r4
	ldw	r3,-8(bp)
	stw	r0(r4),r3
L99_dhryc:
	ldw	r4,-4(bp)
	addi	r4,r4,1
	stw	-4(bp),r4
L101_dhryc:
	ldw	r4,-4(bp)
	ldw	r3,-2(bp)
	addi	r3,r3,1
	skip.gt	r4,r3
	br	L98_dhryc
	ldw	r4,-2(bp)
	stw	-12(bp),r4
	ld16	r3, 1
	stw	-16(bp),r3
	shl	r2, r4, 1
	subi	r2,r2,2
	stw	-14(bp),r2
	ld16	r1, 100

push r1
push r4
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	ldw	r4,6(bp)
	add	r4,r1,r4
	ldw	r3,-14(bp)
	add	r4,r3,r4
	ldw	r3,r0(r4)
	ldw	r2,-16(bp)
	add	r3,r3,r2
	stw	r0(r4),r3
	ldw	r4,-2(bp)
	stw	-20(bp),r4
	shl	r3, r4, 1
	stw	-22(bp),r3
	ld16	r2, 100
	stw	-18(bp),r2

push r2
push r4
ldi r2, 6
add r1, pc, r2
la16 r2, _mult
br.r r2
; clean stack
addi sp, sp, 4
; result should be in r1

	ld16	r4, 2000
	add	r4,r1,r4
	ldw	r3,6(bp)
	add	r4,r4,r3
	ldw	r3,-22(bp)
	add	r4,r3,r4
	ldw	r3,4(bp)
	ldw	r2,-22(bp)
	add	r3,r2,r3
	ldw	r3,r0(r3)
	stw	r0(r4),r3
	la16	r4,_Int_Glob
	ld16	r3, 5
	stw	r0(r4),r3
	mov	r1,r0
L97_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Func_1
_Func_1:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	stb	4(bp),r4
	ldw	r4,6(bp)
	stb	6(bp),r4
	ldb	r4,4(bp)
	stb	-1(bp),r4
	ldb	r4,-1(bp)
	stb	-2(bp),r4
	ldb	r4,-2(bp)
	ldb	r3,6(bp)
	skip.ne	r4,r3
	br	L103_dhryc
	mov	r1,r0
	la16	r4,L102_dhryc
	br.r r4
L103_dhryc:
	la16	r4,_Ch_1_Glob
	ldb	r3,-1(bp)
	stb	r0(r4),r3
	ld16	r1, 1
L102_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Func_2
_Func_2:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 4
	sub	sp, sp, r4
	ld16	r4, 2
	stw	-2(bp),r4
	la16	r4,L107_dhryc
	br.r r4
L106_dhryc:
	ldw	r4,-2(bp)
	addi	r3,r4,1
	ldw	r2,6(bp)
	add	r3,r3,r2
	ldb	r3,r0(r3)
	sext	r3,r3
	push	r3
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	sext	r4,r4
	push	r4
	la16	r4,_Func_1
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	skip.eq r1,r0
	br L109_dhryc
	ld16	r4, 65
	stb	-3(bp),r4
	ldw	r4,-2(bp)
	addi	r4,r4,1
	stw	-2(bp),r4
L109_dhryc:
L107_dhryc:
	ldw	r4,-2(bp)
	ld16	r3, 2
	skip.gt	r4,r3
	br	L106_dhryc
	ldb	r4,-3(bp)
	sext	r4,r4
	ld16	r3, 87
	skip.gte	r4,r3
	br	L11_dhryc1_dhryc
	ld16	r3, 90
	skip.lt r4, r3
	br L11_dhryc1_dhryc
	ld16	r4, 7
	stw	-2(bp),r4
L11_dhryc1_dhryc:
	ldb	r4,-3(bp)
	ld16	r3, 82
	skip.eq r4,r3
	br L11_dhryc3_dhryc
	ld16	r1, 1
	la16	r4,L105_dhryc
	br.r r4
L11_dhryc3_dhryc:
	ldw	r4,6(bp)
	push	r4
	ldw	r4,4(bp)
	push	r4
	la16	r4,_strcmp
	addi	r1,pc,2
	br.r	r4
	ldi	r2,4
	add	sp,sp,r2
	skip.gt	r1,r0
	br	L11_dhryc5_dhryc
	ldw	r4,-2(bp)
	ld16	r3, 7
	add	r4,r4,r3
	stw	-2(bp),r4
	la16	r4,_Int_Glob
	ldw	r3,-2(bp)
	stw	r0(r4),r3
	ld16	r1, 1
	la16	r4,L105_dhryc
	br.r r4
L11_dhryc5_dhryc:
	mov	r1,r0
L105_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _Func_3
_Func_3:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	stw	4(bp),r4
	ldw	r4,4(bp)
	stw	-2(bp),r4
	ldw	r4,-2(bp)
	ld16	r3, 2
	skip.eq r4,r3
	br L11_dhryc8_dhryc
	ld16	r1, 1
	la16	r4,L11_dhryc7_dhryc
	br.r r4
L11_dhryc8_dhryc:
	mov	r1,r0
L11_dhryc7_dhryc:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _strcmp
;	.extern _exit
;	.extern _halt
;	.extern _printf
;	.extern _strcpy
	.bss
;	.global _nomalloc2
_nomalloc2:
	defs 40
;	.global _nomalloc1
_nomalloc1:
	defs 40
;	.global _Arr_2_Glob
_Arr_2_Glob:
	defs 5000
;	.global _Arr_1_Glob
_Arr_1_Glob:
	defs 100
;	.global _Ch_2_Glob
_Ch_2_Glob:
	defs 1
;	.global _Ch_1_Glob
_Ch_1_Glob:
	defs 1
;	.global _Bool_Glob
_Bool_Glob:
	defs 2
;	.global _Int_Glob
_Int_Glob:
	defs 2
;	.global _Next_Ptr_Glob
_Next_Ptr_Glob:
	defs 2
;	.global _Ptr_Glob
_Ptr_Glob:
	defs 2
	.data
L6_dhryc0:
	defb 73
	defb 110
	defb 116
	defb 95
	defb 51
	defb 95
	defb 76
	defb 111
	defb 99
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L59_dhryc:
	defb 73
	defb 110
	defb 116
	defb 95
	defb 50
	defb 95
	defb 76
	defb 111
	defb 99
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L58_dhryc:
	defb 73
	defb 110
	defb 116
	defb 95
	defb 49
	defb 95
	defb 76
	defb 111
	defb 99
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L57_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 40
	defb 105
	defb 109
	defb 112
	defb 108
	defb 101
	defb 109
	defb 101
	defb 110
	defb 116
	defb 97
	defb 116
	defb 105
	defb 111
	defb 110
	defb 45
	defb 100
	defb 101
	defb 112
	defb 101
	defb 110
	defb 100
	defb 101
	defb 110
	defb 116
	defb 41
	defb 44
	defb 32
	defb 115
	defb 97
	defb 109
	defb 101
	defb 32
	defb 97
	defb 115
	defb 32
	defb 97
	defb 98
	defb 111
	defb 118
	defb 101
	defb 10
	defb 0
L56_dhryc:
	defb 78
	defb 101
	defb 120
	defb 116
	defb 95
	defb 80
	defb 116
	defb 114
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 45
	defb 62
	defb 10
	defb 0
L55_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 68
	defb 72
	defb 82
	defb 89
	defb 83
	defb 84
	defb 79
	defb 78
	defb 69
	defb 32
	defb 80
	defb 82
	defb 79
	defb 71
	defb 82
	defb 65
	defb 77
	defb 44
	defb 32
	defb 83
	defb 79
	defb 77
	defb 69
	defb 32
	defb 83
	defb 84
	defb 82
	defb 73
	defb 78
	defb 71
	defb 10
	defb 0
L54_dhryc:
	defb 32
	defb 32
	defb 83
	defb 116
	defb 114
	defb 95
	defb 67
	defb 111
	defb 109
	defb 112
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 115
	defb 10
	defb 0
L53_dhryc:
	defb 32
	defb 32
	defb 73
	defb 110
	defb 116
	defb 95
	defb 67
	defb 111
	defb 109
	defb 112
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L52_dhryc:
	defb 32
	defb 32
	defb 69
	defb 110
	defb 117
	defb 109
	defb 95
	defb 67
	defb 111
	defb 109
	defb 112
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L51_dhryc:
	defb 32
	defb 32
	defb 68
	defb 105
	defb 115
	defb 99
	defb 114
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L50_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 40
	defb 105
	defb 109
	defb 112
	defb 108
	defb 101
	defb 109
	defb 101
	defb 110
	defb 116
	defb 97
	defb 116
	defb 105
	defb 111
	defb 110
	defb 45
	defb 100
	defb 101
	defb 112
	defb 101
	defb 110
	defb 100
	defb 101
	defb 110
	defb 116
	defb 41
	defb 10
	defb 0
L49_dhryc:
	defb 32
	defb 32
	defb 80
	defb 116
	defb 114
	defb 95
	defb 67
	defb 111
	defb 109
	defb 112
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L48_dhryc:
	defb 80
	defb 116
	defb 114
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 45
	defb 62
	defb 10
	defb 0
L47_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 78
	defb 117
	defb 109
	defb 98
	defb 101
	defb 114
	defb 95
	defb 79
	defb 102
	defb 95
	defb 82
	defb 117
	defb 110
	defb 115
	defb 32
	defb 43
	defb 32
	defb 49
	defb 48
	defb 10
	defb 0
L44_dhryc:
	defb 65
	defb 114
	defb 114
	defb 95
	defb 50
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 91
	defb 56
	defb 93
	defb 91
	defb 55
	defb 93
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L42_dhryc:
	defb 65
	defb 114
	defb 114
	defb 95
	defb 49
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 91
	defb 56
	defb 93
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L41_dhryc:
	defb 67
	defb 104
	defb 95
	defb 50
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 99
	defb 10
	defb 0
L40_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 37
	defb 99
	defb 10
	defb 0
L39_dhryc:
	defb 67
	defb 104
	defb 95
	defb 49
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 99
	defb 10
	defb 0
L38_dhryc:
	defb 66
	defb 111
	defb 111
	defb 108
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L37_dhryc:
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 115
	defb 104
	defb 111
	defb 117
	defb 108
	defb 100
	defb 32
	defb 98
	defb 101
	defb 58
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L36_dhryc:
	defb 73
	defb 110
	defb 116
	defb 95
	defb 71
	defb 108
	defb 111
	defb 98
	defb 58
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 32
	defb 37
	defb 100
	defb 10
	defb 0
L35_dhryc:
	defb 70
	defb 105
	defb 110
	defb 97
	defb 108
	defb 32
	defb 118
	defb 97
	defb 108
	defb 117
	defb 101
	defb 115
	defb 32
	defb 111
	defb 102
	defb 32
	defb 116
	defb 104
	defb 101
	defb 32
	defb 118
	defb 97
	defb 114
	defb 105
	defb 97
	defb 98
	defb 108
	defb 101
	defb 115
	defb 32
	defb 117
	defb 115
	defb 101
	defb 100
	defb 32
	defb 105
	defb 110
	defb 32
	defb 116
	defb 104
	defb 101
	defb 32
	defb 98
	defb 101
	defb 110
	defb 99
	defb 104
	defb 109
	defb 97
	defb 114
	defb 107
	defb 58
	defb 10
	defb 0
L34_dhryc:
	defb 69
	defb 120
	defb 101
	defb 99
	defb 117
	defb 116
	defb 105
	defb 111
	defb 110
	defb 32
	defb 101
	defb 110
	defb 100
	defb 115
	defb 10
	defb 0
L33_dhryc:
	defb 68
	defb 72
	defb 82
	defb 89
	defb 83
	defb 84
	defb 79
	defb 78
	defb 69
	defb 32
	defb 80
	defb 82
	defb 79
	defb 71
	defb 82
	defb 65
	defb 77
	defb 44
	defb 32
	defb 51
	defb 39
	defb 82
	defb 68
	defb 32
	defb 83
	defb 84
	defb 82
	defb 73
	defb 78
	defb 71
	defb 0
L20_dhryc:
	defb 68
	defb 72
	defb 82
	defb 89
	defb 83
	defb 84
	defb 79
	defb 78
	defb 69
	defb 32
	defb 80
	defb 82
	defb 79
	defb 71
	defb 82
	defb 65
	defb 77
	defb 44
	defb 32
	defb 50
	defb 39
	defb 78
	defb 68
	defb 32
	defb 83
	defb 84
	defb 82
	defb 73
	defb 78
	defb 71
	defb 0
L15_dhryc:
	defb 69
	defb 120
	defb 101
	defb 99
	defb 117
	defb 116
	defb 105
	defb 111
	defb 110
	defb 32
	defb 115
	defb 116
	defb 97
	defb 114
	defb 116
	defb 115
	defb 44
	defb 32
	defb 37
	defb 100
	defb 32
	defb 114
	defb 117
	defb 110
	defb 115
	defb 32
	defb 116
	defb 104
	defb 114
	defb 111
	defb 117
	defb 103
	defb 104
	defb 32
	defb 68
	defb 104
	defb 114
	defb 121
	defb 115
	defb 116
	defb 111
	defb 110
	defb 101
	defb 10
	defb 0
L14_dhryc:
	defb 80
	defb 108
	defb 101
	defb 97
	defb 115
	defb 101
	defb 32
	defb 103
	defb 105
	defb 118
	defb 101
	defb 32
	defb 116
	defb 104
	defb 101
	defb 32
	defb 110
	defb 117
	defb 109
	defb 98
	defb 101
	defb 114
	defb 32
	defb 111
	defb 102
	defb 32
	defb 114
	defb 117
	defb 110
	defb 115
	defb 32
	defb 116
	defb 104
	defb 114
	defb 111
	defb 117
	defb 103
	defb 104
	defb 32
	defb 116
	defb 104
	defb 101
	defb 32
	defb 98
	defb 101
	defb 110
	defb 99
	defb 104
	defb 109
	defb 97
	defb 114
	defb 107
	defb 58
	defb 32
	defb 0
L13_dhryc:
	defb 80
	defb 114
	defb 111
	defb 103
	defb 114
	defb 97
	defb 109
	defb 32
	defb 99
	defb 111
	defb 109
	defb 112
	defb 105
	defb 108
	defb 101
	defb 100
	defb 32
	defb 119
	defb 105
	defb 116
	defb 104
	defb 111
	defb 117
	defb 116
	defb 32
	defb 39
	defb 114
	defb 101
	defb 103
	defb 105
	defb 115
	defb 116
	defb 101
	defb 114
	defb 39
	defb 32
	defb 97
	defb 116
	defb 116
	defb 114
	defb 105
	defb 98
	defb 117
	defb 116
	defb 101
	defb 10
	defb 0
L12_dhryc:
	defb 10
	defb 0
L11_dhryc:
	defb 68
	defb 104
	defb 114
	defb 121
	defb 115
	defb 116
	defb 111
	defb 110
	defb 101
	defb 32
	defb 66
	defb 101
	defb 110
	defb 99
	defb 104
	defb 109
	defb 97
	defb 114
	defb 107
	defb 44
	defb 32
	defb 86
	defb 101
	defb 114
	defb 115
	defb 105
	defb 111
	defb 110
	defb 32
	defb 50
	defb 46
	defb 49
	defb 32
	defb 40
	defb 76
	defb 97
	defb 110
	defb 103
	defb 117
	defb 97
	defb 103
	defb 101
	defb 58
	defb 32
	defb 67
	defb 41
	defb 10
	defb 0
L8_dhryc:
	defb 68
	defb 72
	defb 82
	defb 89
	defb 83
	defb 84
	defb 79
	defb 78
	defb 69
	defb 32
	defb 80
	defb 82
	defb 79
	defb 71
	defb 82
	defb 65
	defb 77
	defb 44
	defb 32
	defb 49
	defb 39
	defb 83
	defb 84
	defb 32
	defb 83
	defb 84
	defb 82
	defb 73
	defb 78
	defb 71
	defb 0
L7_dhryc:
	defb 68
	defb 72
	defb 82
	defb 89
	defb 83
	defb 84
	defb 79
	defb 78
	defb 69
	defb 32
	defb 80
	defb 82
	defb 79
	defb 71
	defb 82
	defb 65
	defb 77
	defb 44
	defb 32
	defb 83
	defb 79
	defb 77
	defb 69
	defb 32
	defb 83
	defb 84
	defb 82
	defb 73
	defb 78
	defb 71
	defb 0
;	.end


_fork:
	push r1
	push bp
	mov bp, sp

	ldi r1, 1
	br dosyscall_usys

_exit:
	push r1
	push bp
	mov bp, sp

	ldi r1, 2
	br dosyscall_usys

_wait:
	push r1
	push bp
	mov bp, sp

	ldi r1, 3
	br dosyscall_usys

_exec:
	push r1
	push bp
	mov bp, sp

	ldi r1, 7
	br dosyscall_usys

_read:
	push r1
	push bp
	mov bp, sp

	ldi r1, 5
	br dosyscall_usys

_open:
	push r1
	push bp
	mov bp, sp

	ldi r1, 15
	br dosyscall_usys

_write:
	push r1
	push bp
	mov bp, sp

	ldi r1, 16
	br dosyscall_usys

dosyscall_usys:
	push r1
	syscall

	pop r4 ; this pops r1 (syscall number) from the stack into a random reg
	pop bp
	pop pc

;	DME assembly file, generated by lcc 4.2

 ; INT_MAX: ffffffff

;	.data 0x1000
L3_ulib:
	defb 48
	defb 49
	defb 50
	defb 51
	defb 52
	defb 53
	defb 54
	defb 55
	defb 56
	defb 57
	defb 97
	defb 98
	defb 99
	defb 100
	defb 101
	defb 102
	defb 0
;	.code
_printint:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 28
	sub	sp, sp, r4
	ldw	r3,8(bp)
	skip.ne	r3,r0
	br	L4_ulib
	ldw	r3,4(bp)
	skip.lt r3, r0
	br L7_ulib
	ld16	r4, 1
	stw	-22(bp),r4
	la16	r4,L8_ulib
	br.r r4
L7_ulib:
	stw	-22(bp),r0
L8_ulib:
	ldw	r4,-22(bp)
	stw	8(bp),r4
	skip.ne	r4,r0
	br	L4_ulib
	ldw	r4,4(bp)
sub	r4,r0,r4
	stw	-4(bp),r4
	la16	r4,L5_ulib
	br.r r4
L4_ulib:
	ldw	r4,4(bp)
	stw	-4(bp),r4
L5_ulib:
	stw	-2(bp),r0
L9_ulib:
	ldw	r4,-2(bp)
	addi	r3,r4,1
	stw	-2(bp),r3
	ldi	r3, -20
	add	r3, r3, bp
	add	r4,r4,r3
	stw	-28(bp),r4
	ldw	r3,-4(bp)
	stw	-24(bp),r3
	ldw	r2,6(bp)
	stw	-26(bp),r2

push r3
push r2
ldi r2, 6
add r1, pc, r2
la16 r2, _mod
br.r r2
; clean stack
addi sp, sp, 4
; result will be in r1

	la16	r4,L3_ulib
	add	r4,r1,r4
	ldb	r4,r0(r4)
	ldw	r3,-28(bp)
	stb	r0(r3),r4
L10_ulib:
	ldw	r4,-4(bp)
	ldw	r3,6(bp)

push r4
push r3
ldi r2, 6
add r1, pc, r2
la16 r2, _div
br.r r2
; clean stack
addi sp, sp, 4
; result will be in r1

	stw	-4(bp),r1
	skip.eq r1,r0
	br L9_ulib
	ldw	r4,8(bp)
	skip.ne	r4,r0
	br	L15_ulib
	ldw	r4,-2(bp)
	addi	r3,r4,1
	stw	-2(bp),r3
	ldi	r3, -20
	add	r3, r3, bp
	add	r4,r4,r3
	ld16	r3, 45
	stb	r0(r4),r3
	la16	r4,L15_ulib
	br.r r4
L14_ulib:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	ldi	r2, -20
	add	r2, r2, bp
	add	r3,r3,r2
	ldb	r3,r0(r3)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L15_ulib:
	ldw	r4,-2(bp)
	subi	r4,r4,1
	stw	-2(bp),r4
	skip.lt r4, r0
	br L14_ulib
L2_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _printf
_printf:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 8
	sub	sp, sp, r4
	la16	r4,_pbuf+64
	stw	r0(r4),r0
	ldi	r4, 6
	add	r4, r4, bp
	stw	-8(bp),r4
	stw	-6(bp),r0
	la16	r4,L2_ulib5
	br.r r4
L2_ulib2:
	ldw	r4,-2(bp)
	ld16	r3, 37
	skip.ne	r4,r3
	br	L2_ulib6
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,L2_ulib3
	br.r r4
L2_ulib6:
	ldw	r4,-6(bp)
	addi	r4,r4,1
	stw	-6(bp),r4
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 255
	and	r4,r4,r3
	stw	-2(bp),r4
	ldw	r4,-2(bp)
	skip.eq r4,r0
	br L3_ulib0
	la16	r4,L2_ulib4
	br.r r4
L3_ulib0:
	ldw	r4,-2(bp)
	ld16	r3, 104
	skip.ne	r4,r3
	br	L3_ulib5
	skip.lte	r4,r3
	br	L5_ulib4
L5_ulib3:
	ldw	r4,-2(bp)
	ld16	r3, 37
	skip.ne	r4,r3
	br	L4_ulib6
	skip.gte	r4,r3
	br	L3_ulib2
L5_ulib5:
	ldw	r4,-2(bp)
	ld16	r3, 100
	skip.ne	r4,r3
	br	L3_ulib4
	la16	r4,L3_ulib2
	br.r r4
L5_ulib4:
	ldw	r4,-2(bp)
	ld16	r3, 112
	skip.ne	r4,r3
	br	L3_ulib5
	ld16	r2, 115
	skip.ne	r4,r2
	br	L3_ulib6
	skip.gte	r4,r3
	br	L3_ulib2
L5_ulib6:
	ldw	r4,-2(bp)
	ld16	r3, 120
	skip.ne	r4,r3
	br	L3_ulib5
	la16	r4,L3_ulib2
	br.r r4
L3_ulib4:
	ld16	r4, 1
	push	r4
	ld16	r4, 10
	push	r4
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_printint
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	la16	r4,L3_ulib3
	br.r r4
L3_ulib5:
	push	r0
	ld16	r4, 16
	push	r4
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_printint
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	la16	r4,L3_ulib3
	br.r r4
L3_ulib6:
	ldw	r4,-8(bp)
	addi	r3,r4,2
	stw	-8(bp),r3
	ldw	r4,r0(r4)
	stw	-4(bp),r4
	skip.eq r4,r0
	br L4_ulib3
	la16	r4,L3_ulib9
	stw	-4(bp),r4
	la16	r4,L4_ulib3
	br.r r4
L4_ulib0:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-4(bp)
	ldb	r3,r0(r3)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L4_ulib1:
	ldw	r4,-4(bp)
	addi	r4,r4,1
	stw	-4(bp),r4
L4_ulib3:
	ldw	r4,-4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	skip.eq r4,r0
	br L4_ulib0
	la16	r4,L3_ulib3
	br.r r4
L4_ulib6:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ld16	r3, 37
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,L3_ulib3
	br.r r4
L3_ulib2:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ld16	r3, 37
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	ldw	r3,-2(bp)
	stb	r0(r4),r3
	la16	r4,_pbuf+64
	ldw	r3,r0(r4)
	addi	r3,r3,1
	stw	r0(r4),r3
L3_ulib3:
L2_ulib3:
	ldw	r4,-6(bp)
	addi	r4,r4,1
	stw	-6(bp),r4
L2_ulib5:
	ldw	r4,-6(bp)
	ldw	r3,4(bp)
	add	r4,r4,r3
	ldb	r4,r0(r4)
	sext	r4,r4
	ld16	r3, 255
	and	r4,r4,r3
	stw	-2(bp),r4
	skip.eq r4,r0
	br L2_ulib2
L2_ulib4:
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	la16	r3,_pbuf
	add	r4,r4,r3
	stb	r0(r4),r0
	la16	r4,_pbuf+64
	ldw	r4,r0(r4)
	push	r4
	la16	r4,_pbuf
	push	r4
	ld16	r4, 1
	push	r4
	la16	r4,_write
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
L19_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _gets
_gets:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 4
	sub	sp, sp, r4
	stw	-4(bp),r0
	la16	r4,L63_ulib
	br.r r4
L60_ulib:
	ld16	r4, 1
	push	r4
	ldi	r4, -1
	add	r4, r4, bp
	push	r4
	ldw	r4,4(bp)
	push	r4
	la16	r4,_read
	addi	r1,pc,2
	br.r	r4
	ldi	r2,6
	add	sp,sp,r2
	ldb	r4,-1(bp)
	sext	r4,r4
	ld16	r3, 13
	skip.ne	r4,r3
	br	L67_ulib
	ld16	r3, 10
	skip.ne	r4,r3
	br	L67_ulib
	ld16	r3, 60
	skip.eq r4,r3
	br L64_ulib
L67_ulib:
	ldw	r4,-4(bp)
	ldw	r3,6(bp)
	add	r4,r4,r3
	stb	r0(r4),r0
	ldw	r1,-4(bp)
	la16	r4,L5_ulib9
	br.r r4
L64_ulib:
	ldw	r4,-4(bp)
	ldw	r3,6(bp)
	add	r4,r4,r3
	ldb	r3,-1(bp)
	stb	r0(r4),r3
	ldw	r4,-4(bp)
	addi	r4,r4,1
	stw	-4(bp),r4
L61_ulib:
L63_ulib:
	ldw	r4,-4(bp)
	ldw	r3,8(bp)
	skip.gt	r4,r3
	br	L60_ulib
	mov	r1,r0
L5_ulib9:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _strcmp
_strcmp:
	push	r1
	push	bp
	mov	bp, sp
	la16	r4,L7_ulib0
	br.r r4
L69_ulib:
	ldw	r4,8(bp)
	subi	r4,r4,1
	stw	8(bp),r4
	ld16	r4, 1
	ldw	r3,4(bp)
	add	r3,r3,r4
	stw	4(bp),r3
	ldw	r3,6(bp)
	add	r4,r3,r4
	stw	6(bp),r4
L7_ulib0:
	ldw	r4,8(bp)
	skip.ne	r4,r0
	br	L7_ulib3
	ldw	r4,4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	skip.ne	r4,r0
	br	L7_ulib3
	ldw	r3,6(bp)
	ldb	r3,r0(r3)
	sext	r3,r3
	skip.ne	r4,r3
	br	L69_ulib
L7_ulib3:
	ldw	r4,8(bp)
	skip.eq r4,r0
	br L7_ulib4
	mov	r1,r0
	la16	r4,L68_ulib
	br.r r4
L7_ulib4:
	ldw	r4,4(bp)
	ldb	r4,r0(r4)
	sext	r4,r4
	ldw	r3,6(bp)
	ldb	r3,r0(r3)
	sext	r3,r3
	sub	r1,r4,r3
L68_ulib:
	mov	sp, bp
	pop	bp
	pop	pc

;	.global _strcpy
_strcpy:
	push	r1
	push	bp
	mov	bp, sp
	ldi	r4, 2
	sub	sp, sp, r4
	ldw	r4,4(bp)
	stw	-2(bp),r4
L7_ulib7:
L7_ulib8:
	ldw	r4,4(bp)
	ld16	r3, 1
	add	r2,r4,r3
	stw	4(bp),r2
	ldw	r2,6(bp)
	add	r3,r2,r3
	stw	6(bp),r3
	ldb	r3,r0(r2)
	stb	r0(r4),r3
	skip.eq r3,r0
	br L7_ulib7
	ldw	r1,-2(bp)
L7_ulib6:
	mov	sp, bp
	pop	bp
	pop	pc

;	.extern _read
;	.extern _write
	.bss
;	.global _pbuf
_pbuf:
	defs 66
	.data
L3_ulib9:
	defb 40
	defb 110
	defb 117
	defb 108
	defb 108
	defb 41
	defb 0
;	.end


_halt:
	hlt

_breek:
	push r1
	brk
	pop pc

;_strcpy:
;	push	r1
;	push	bp
;	mov	bp, sp
;	ldw	r4,4(bp)    ; dst
;	ldw	r3,6(bp)    ; src
;	ldw	r2,8(bp)    ; n
;	add	r4,r4,r2
;	add	r3,r3,r2
;	br _strcopyL3
;_strcopyL2:
;	subi	r2,r2,1
;	addi	r3,r3,-1
;	addi	r4,r4,-1
;	ldb	r1,r0(r3)
;	skip.eq r1,r0
;	br _strcopyL4
;	stb r0(r4),r0
;	br _strcopyL3
;_strcopyL4:
;	stb	r0(r4),r1
;_strcopyL3:
;	skip.eq r2,r0
;	br _strcopyL2
;	mov	r1,r4
;	mov	sp, bp
;	pop	bp
;	pop	pc
;
_memmove:
	push	r1
	push	bp
	mov	bp, sp
	ldw	r4,4(bp)    ; dst
	ldw	r3,6(bp)    ; src
	ldw	r2,8(bp)    ; n
	add	r4,r4,r2
	add	r3,r3,r2
	br _memmoveL3
_memmoveL2:
	subi	r2,r2,1
	addi	r3,r3,-1
	addi	r4,r4,-1
	ldb	r1,r0(r3)
	stb	r0(r4),r1
_memmoveL3:
	skip.eq r2,r0
	br _memmoveL2
	mov	r1,r4
	mov	sp, bp
	pop	bp
	pop	pc

; https://en.wikipedia.org/wiki/Division_algorithm#Integer_division_.28unsigned.29_with_remainder


; DIVIDE -------------------------
_div:
; normal function conventions to keep life simple
; we will not args to locals, since we kow what we are doing (he..)
; N is be in bp+6, D is in bp+4
; create 1 local to hold Q: bp-2
; r1 temp
; r2 cntr
; r3 load/store N/Q/D
; r4 R
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
divL1_pseudo_ops:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br divL2_pseudo_ops

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

divL2_pseudo_ops:
	skip.eq r2, r0
	br divL1_pseudo_ops
	ldw r1, -2(bp)
	mov	sp, bp
	pop	bp
	pop	pc

; MODULO -------------------------
; UNSIGNED
; (same algo as div, just returning remainer)
_mod:
	push r1
	push bp
	mov bp, sp
	ldi r2, 16
	mov r4, r0
	stw -2(bp), r0
modL1_pseudo_ops:
	subi r2, r2, 1
	shl r4,r4,1

	ld16 r1, 0xfffe
	and r4, r4, r1

	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, 6(bp)
	and r1, r3, r1

	shr.r r1, r1, r2
	or r4, r4, r1

	ldw r3, 4(bp)
	skip.ulte r3, r4
	br modL2_pseudo_ops

	sub r4, r4, r3
	ldi r1, 1
	shl.r r1, r1, r2
	ldw r3, -2(bp)
	or r3, r3, r1
	stw -2(bp), r3

modL2_pseudo_ops:
	skip.eq r2, r0
	br modL1_pseudo_ops
	mov r1, r4 ; transfer result to r1
	mov	sp, bp
	pop	bp
	pop	pc

; MULTIPLY  -------------------------
;
; (unsigned)
_mult:
	push r1
	push bp
	mov bp, sp
	ldw r2, 4(bp)
	ldw r2, 6(bp)

	mov r1, r0 ; result reg
; if a > b
	skip.gt r2, r3
	br multL2_pseudo_ops
; switch them
	mov r4, r2
	mov r2, r3
	mov r3, r4

multL2_pseudo_ops:
; while r1 > 1 loop
	ldi r4, 1
	skip.gt r2, r4
	br multL3_pseudo_ops
; check if r1 is even/odd
	andi r4, r2, 1
	skip.eq r4, r0
	add r1, r1, r3
	shr r2, r2, 1
	shl r3, r3, 1
	br multL2_pseudo_ops
multL3_pseudo_ops:
	andi r4, r2, 1
	skip.eq r4, r0
	add r1, r1, r3
	mov	sp, bp
	pop	bp
	pop	pc

