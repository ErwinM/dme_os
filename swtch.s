;
; to make a context switch on dme:
; - INSIGHT: a context switch is just a SP switch... ip just keeps processing
; 	- save context on old stack
; 	- switch to new address space
; 	- switch sp (from saved context)
; 	- pop context of new stack
;
; void swtch(&old->context, new_proc->ptb, new_proc->context;
_swtch:
	push r1
	push bp
	mov bp, sp
	ldw r1, 4(bp) ; sched->context (to save SP)
	ldw r2, 6(bp) ; ptb
	ldw r3, 8(bp) ; context (= new SP)
	; i dont think i need to save much except sp and bp...
	; the registers are all clear after switch is called..

	stw r0(r1), sp  ; store old sp in sched->context
	wptb r2					; switch to new address space
	mov sp, r3      ; switch sp to new stack bottom

	pop bp
	pop pc


