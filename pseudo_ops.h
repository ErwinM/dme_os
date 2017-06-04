divert(-1)
#

define(MULT16,
`
push bp
push $2
push $3
addi bp, pc, 2
br _mult
; result should be in $1
pop bp
')

define(DIV16,
`
push bp
push $2
push $3
addi bp, pc, 2
br _div
; result should be in $1
pop bp
')

define(MOD16,
`
push bp
push $2
push $3
addi bp, pc, 2
br _mod
; result should be in $1
pop bp
')

divert


