gcc -E ulib.c | rcc -target=dme > ulib.ss
gcc -E mkdir.c | rcc -target=dme > mkdir.ss
ruby link.rb _mkdir.ss usys.s ulib.ss ulibasm.s pseudo_ops.s  -oulinked
mkdir
mkdir.ss
usys
usys.s
ulib
ulib.ss
ulibasm
ulibasm.s
pseudo_ops
pseudo_ops.s
m4 ulinked.ss > ulinked.s
asm.rb -f=ulinked.s -o=ulinked
skip
skip
skip
skip
skip
skip
Found label: _main
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r4", 2]}
{:command=>"sub", :args=>["sp", "sp", "r4"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"ld16", :args=>["r3", 2]}
{:command=>"skip", :args=>["r4", "r3", "lt"]}
{:command=>"br", :args=>["L2_mkdir"]}
{:command=>"la16", :args=>["r4", "L4_mkdir"]}
{:command=>"push", :args=>["r4"]}
{:command=>"ld16", :args=>["r4", 2]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_printf"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 4]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
{:command=>"la16", :args=>["r4", "_exit"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
Found label: L2_mkdir
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
{:command=>"la16", :args=>["r4", "L8_mkdir"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L5_mkdir
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"shl", :args=>["r3", "r4", 1]}
{:command=>"ldw", :args=>["r2", 6, "bp"]}
{:command=>"add", :args=>["r3", "r3", "r2"]}
{:command=>"ldw", :args=>["r3", "r0", "r3"]}
{:command=>"push", :args=>["r3"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "L9_mkdir"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_printf"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
Found label: L6_mkdir
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"addi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
Found label: L8_mkdir
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"skip", :args=>["r4", "r3", "gte"]}
{:command=>"br", :args=>["L5_mkdir"]}
{:command=>"la16", :args=>["r4", "_exit"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"mov", :args=>["r1", "r0"]}
Found label: L1_mkdir
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: L9_mkdir
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found label: L4_mkdir
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
skip
skip
Found label: _fork
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 1]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _exit
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 2]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _wait
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 3]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _exec
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 7]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _read
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 5]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _open
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 15]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: _write
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
skip
{:command=>"ldi", :args=>["r1", 16]}
{:command=>"br", :args=>["dosyscall_usys"]}
skip
Found label: dosyscall_usys
{:command=>"push", :args=>["r1"]}
skip
{:command=>"pop", :args=>["r4"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
skip
Found label: L3_ulib
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found label: _printint
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r4", 24]}
{:command=>"sub", :args=>["sp", "sp", "r4"]}
{:command=>"ldw", :args=>["r3", 8, "bp"]}
{:command=>"skip", :args=>["r3", "r0", "ne"]}
{:command=>"br", :args=>["L4_ulib"]}
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"skip", :args=>["r3", "r0", "lt"]}
{:command=>"br", :args=>["L7_ulib"]}
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"stw", :args=>[-22, "bp", "r4"]}
{:command=>"la16", :args=>["r4", "L8_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L7_ulib
{:command=>"stw", :args=>[-22, "bp", "r0"]}
Found label: L8_ulib
{:command=>"ldw", :args=>["r4", -22, "bp"]}
{:command=>"stw", :args=>[8, "bp", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "ne"]}
{:command=>"br", :args=>["L4_ulib"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"sub", :args=>["r4", "r0", "r4"]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
{:command=>"la16", :args=>["r4", "L5_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L4_ulib
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
Found label: L5_ulib
{:command=>"stw", :args=>[-2, "bp", "r0"]}
Found label: L9_ulib
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"addi", :args=>["r3", "r4", 1]}
{:command=>"stw", :args=>[-2, "bp", "r3"]}
{:command=>"ld16", :args=>["r3", -20]}
{:command=>"add", :args=>["r3", "r3", "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"stw", :args=>[-24, "bp", "r4"]}
{:command=>"ldw", :args=>["r2", -4, "bp"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
skip
{:command=>"push", :args=>["r2"]}
{:command=>"push", :args=>["r3"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["r1", "pc", "r2"]}
{:command=>"la16", :args=>["r2", "_mod"]}
{:command=>"br.r", :args=>["r2"]}
{:command=>"pop", :args=>["r3"]}
{:command=>"pop", :args=>["r2"]}
skip
{:command=>"la16", :args=>["r4", "L3_ulib"]}
{:command=>"add", :args=>["r4", "r1", "r4"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"ldw", :args=>["r3", -24, "bp"]}
{:command=>"stb", :args=>["r0", "r3", "r4"]}
Found label: L10_ulib
{:command=>"ldw", :args=>["r2", -4, "bp"]}
{:command=>"ldw", :args=>["r4", 6, "bp"]}
{:command=>"mov", :args=>["r3", "r4"]}
skip
{:command=>"push", :args=>["r2"]}
{:command=>"push", :args=>["r3"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["r1", "pc", "r2"]}
{:command=>"la16", :args=>["r2", "_div"]}
{:command=>"br.r", :args=>["r2"]}
{:command=>"pop", :args=>["r3"]}
{:command=>"pop", :args=>["r2"]}
skip
{:command=>"stw", :args=>[-4, "bp", "r1"]}
{:command=>"skip", :args=>["r1", "r0", "eq"]}
{:command=>"br", :args=>["L9_ulib"]}
{:command=>"ldw", :args=>["r4", 8, "bp"]}
{:command=>"skip", :args=>["r4", "r0", "ne"]}
{:command=>"br", :args=>["L15_ulib"]}
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"addi", :args=>["r3", "r4", 1]}
{:command=>"stw", :args=>[-2, "bp", "r3"]}
{:command=>"ld16", :args=>["r3", -20]}
{:command=>"add", :args=>["r3", "r3", "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ld16", :args=>["r3", 45]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "L15_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L14_ulib
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldw", :args=>["r3", -2, "bp"]}
{:command=>"ld16", :args=>["r2", -20]}
{:command=>"add", :args=>["r2", "r2", "bp"]}
{:command=>"add", :args=>["r3", "r3", "r2"]}
{:command=>"ldb", :args=>["r3", "r0", "r3"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
Found label: L15_ulib
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"subi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "lt"]}
{:command=>"br", :args=>["L14_ulib"]}
Found label: L2_ulib
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _printf
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r4", 8]}
{:command=>"sub", :args=>["sp", "sp", "r4"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"stw", :args=>["r0", "r4", "r0"]}
{:command=>"ld16", :args=>["r4", 6]}
{:command=>"add", :args=>["r4", "r4", "bp"]}
{:command=>"stw", :args=>[-8, "bp", "r4"]}
{:command=>"stw", :args=>[-6, "bp", "r0"]}
{:command=>"la16", :args=>["r4", "L2_ulib5"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L2_ulib2
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 37]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L2_ulib6"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldw", :args=>["r3", -2, "bp"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "L2_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L2_ulib6
{:command=>"ldw", :args=>["r4", -6, "bp"]}
{:command=>"addi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-6, "bp", "r4"]}
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"ld16", :args=>["r3", 255]}
{:command=>"and", :args=>["r4", "r4", "r3"]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"br", :args=>["L3_ulib0"]}
{:command=>"la16", :args=>["r4", "L2_ulib4"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L3_ulib0
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 104]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L3_ulib5"]}
{:command=>"skip", :args=>["r4", "r3", "lte"]}
{:command=>"br", :args=>["L5_ulib4"]}
Found label: L5_ulib3
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 37]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L4_ulib6"]}
{:command=>"skip", :args=>["r4", "r3", "gte"]}
{:command=>"br", :args=>["L3_ulib2"]}
Found label: L5_ulib5
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 100]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L3_ulib4"]}
{:command=>"la16", :args=>["r4", "L3_ulib2"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L5_ulib4
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 112]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L3_ulib5"]}
{:command=>"ld16", :args=>["r2", 115]}
{:command=>"skip", :args=>["r4", "r2", "ne"]}
{:command=>"br", :args=>["L3_ulib6"]}
{:command=>"skip", :args=>["r4", "r3", "gte"]}
{:command=>"br", :args=>["L3_ulib2"]}
Found label: L5_ulib6
{:command=>"ldw", :args=>["r4", -2, "bp"]}
{:command=>"ld16", :args=>["r3", 120]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L3_ulib5"]}
{:command=>"la16", :args=>["r4", "L3_ulib2"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L3_ulib4
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"push", :args=>["r4"]}
{:command=>"ld16", :args=>["r4", 10]}
{:command=>"push", :args=>["r4"]}
{:command=>"ldw", :args=>["r4", -8, "bp"]}
{:command=>"addi", :args=>["r3", "r4", 2]}
{:command=>"stw", :args=>[-8, "bp", "r3"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_printint"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
{:command=>"la16", :args=>["r4", "L3_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L3_ulib5
{:command=>"push", :args=>["r0"]}
{:command=>"ld16", :args=>["r4", 16]}
{:command=>"push", :args=>["r4"]}
{:command=>"ldw", :args=>["r4", -8, "bp"]}
{:command=>"addi", :args=>["r3", "r4", 2]}
{:command=>"stw", :args=>[-8, "bp", "r3"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_printint"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
{:command=>"la16", :args=>["r4", "L3_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L3_ulib6
{:command=>"ldw", :args=>["r4", -8, "bp"]}
{:command=>"addi", :args=>["r3", "r4", 2]}
{:command=>"stw", :args=>[-8, "bp", "r3"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"br", :args=>["L4_ulib3"]}
{:command=>"la16", :args=>["r4", "L3_ulib9"]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
{:command=>"la16", :args=>["r4", "L4_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L4_ulib0
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldw", :args=>["r3", -4, "bp"]}
{:command=>"ldb", :args=>["r3", "r0", "r3"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
Found label: L4_ulib1
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"addi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
Found label: L4_ulib3
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"br", :args=>["L4_ulib0"]}
{:command=>"la16", :args=>["r4", "L3_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L4_ulib6
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ld16", :args=>["r3", 37]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "L3_ulib3"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L3_ulib2
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ld16", :args=>["r3", 37]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldw", :args=>["r3", -2, "bp"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r3", "r0", "r4"]}
{:command=>"addi", :args=>["r3", "r3", 1]}
{:command=>"stw", :args=>["r0", "r4", "r3"]}
Found label: L3_ulib3
Found label: L2_ulib3
{:command=>"ldw", :args=>["r4", -6, "bp"]}
{:command=>"addi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-6, "bp", "r4"]}
Found label: L2_ulib5
{:command=>"ldw", :args=>["r4", -6, "bp"]}
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"ld16", :args=>["r3", 255]}
{:command=>"and", :args=>["r4", "r4", "r3"]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"br", :args=>["L2_ulib2"]}
Found label: L2_ulib4
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"la16", :args=>["r3", "_pbuf"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"stb", :args=>["r0", "r4", "r0"]}
{:command=>"la16", :args=>["r4", "_pbuf+64"]}
{:command=>"ldw", :args=>["r4", "r0", "r4"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_pbuf"]}
{:command=>"push", :args=>["r4"]}
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_write"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
Found label: L19_ulib
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _gets
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r4", 4]}
{:command=>"sub", :args=>["sp", "sp", "r4"]}
{:command=>"stw", :args=>[-4, "bp", "r0"]}
{:command=>"la16", :args=>["r4", "L61_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L60_ulib
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"push", :args=>["r4"]}
{:command=>"ld16", :args=>["r4", -1]}
{:command=>"add", :args=>["r4", "r4", "bp"]}
{:command=>"push", :args=>["r4"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"push", :args=>["r4"]}
{:command=>"la16", :args=>["r4", "_read"]}
{:command=>"addi", :args=>["r1", "pc", 2]}
{:command=>"br.r", :args=>["r4"]}
{:command=>"ldi", :args=>["r2", 6]}
{:command=>"add", :args=>["sp", "sp", "r2"]}
{:command=>"ldb", :args=>["r4", -1, "bp"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"ld16", :args=>["r3", 13]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L66_ulib"]}
{:command=>"ld16", :args=>["r3", 10]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L66_ulib"]}
{:command=>"ld16", :args=>["r3", 60]}
{:command=>"skip", :args=>["r4", "r3", "eq"]}
{:command=>"br", :args=>["L63_ulib"]}
Found label: L66_ulib
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"stb", :args=>["r0", "r4", "r0"]}
{:command=>"ldw", :args=>["r1", -4, "bp"]}
{:command=>"la16", :args=>["r4", "L5_ulib9"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L63_ulib
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"add", :args=>["r4", "r4", "r3"]}
{:command=>"ldb", :args=>["r3", -1, "bp"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"addi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[-4, "bp", "r4"]}
Found label: L61_ulib
{:command=>"ldw", :args=>["r4", -4, "bp"]}
{:command=>"ldw", :args=>["r3", 8, "bp"]}
{:command=>"skip", :args=>["r4", "r3", "gte"]}
{:command=>"br", :args=>["L60_ulib"]}
{:command=>"mov", :args=>["r1", "r0"]}
Found label: L5_ulib9
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _strcmp
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"la16", :args=>["r4", "L69_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L68_ulib
{:command=>"ldw", :args=>["r4", 8, "bp"]}
{:command=>"subi", :args=>["r4", "r4", 1]}
{:command=>"stw", :args=>[8, "bp", "r4"]}
{:command=>"ld16", :args=>["r4", 1]}
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"add", :args=>["r3", "r3", "r4"]}
{:command=>"stw", :args=>[4, "bp", "r3"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"add", :args=>["r4", "r3", "r4"]}
{:command=>"stw", :args=>[6, "bp", "r4"]}
Found label: L69_ulib
{:command=>"ldw", :args=>["r4", 8, "bp"]}
{:command=>"skip", :args=>["r4", "r0", "ne"]}
{:command=>"br", :args=>["L7_ulib2"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"skip", :args=>["r4", "r0", "ne"]}
{:command=>"br", :args=>["L7_ulib2"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"ldb", :args=>["r3", "r0", "r3"]}
{:command=>"sext", :args=>["r3", "r3"]}
{:command=>"skip", :args=>["r4", "r3", "ne"]}
{:command=>"br", :args=>["L68_ulib"]}
Found label: L7_ulib2
{:command=>"ldw", :args=>["r4", 8, "bp"]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"br", :args=>["L7_ulib3"]}
{:command=>"mov", :args=>["r1", "r0"]}
{:command=>"la16", :args=>["r4", "L67_ulib"]}
{:command=>"br.r", :args=>["r4"]}
Found label: L7_ulib3
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"ldb", :args=>["r4", "r0", "r4"]}
{:command=>"sext", :args=>["r4", "r4"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"ldb", :args=>["r3", "r0", "r3"]}
{:command=>"sext", :args=>["r3", "r3"]}
{:command=>"sub", :args=>["r1", "r4", "r3"]}
Found label: L67_ulib
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _strcpy
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r4", 2]}
{:command=>"sub", :args=>["sp", "sp", "r4"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"stw", :args=>[-2, "bp", "r4"]}
Found label: L7_ulib6
Found label: L7_ulib7
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"ld16", :args=>["r3", 1]}
{:command=>"add", :args=>["r2", "r4", "r3"]}
{:command=>"stw", :args=>[4, "bp", "r2"]}
{:command=>"ldw", :args=>["r2", 6, "bp"]}
{:command=>"add", :args=>["r3", "r2", "r3"]}
{:command=>"stw", :args=>[6, "bp", "r3"]}
{:command=>"ldb", :args=>["r3", "r0", "r2"]}
{:command=>"stb", :args=>["r0", "r4", "r3"]}
{:command=>"skip", :args=>["r3", "r0", "eq"]}
{:command=>"br", :args=>["L7_ulib6"]}
{:command=>"ldw", :args=>["r1", -2, "bp"]}
Found label: L7_ulib5
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _pbuf
Found mem instr: defs
Found label: L3_ulib9
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
Found mem instr: defb
skip
skip
Found label: _halt
{:command=>"push", :args=>["r1"]}
skip
Found label: _breek
{:command=>"push", :args=>["r1"]}
{:command=>"pop", :args=>["pc"]}
skip
skip
Found label: memmove_ulibasm
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldw", :args=>["r4", 4, "bp"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"ldw", :args=>["r2", 8, "bp"]}
{:command=>"add", :args=>["r4", "r4", "r2"]}
{:command=>"add", :args=>["r3", "r3", "r2"]}
{:command=>"br", :args=>["_memmove_ulibasmL3"]}
Found label: _memmove_ulibasmL2
{:command=>"subi", :args=>["r2", "r2", 1]}
{:command=>"addi", :args=>["r3", "r3", -1]}
{:command=>"addi", :args=>["r4", "r4", -1]}
{:command=>"ldb", :args=>["r1", "r0", "r3"]}
{:command=>"stb", :args=>["r0", "r4", "r1"]}
Found label: _memmove_ulibasmL3
{:command=>"skip", :args=>["r2", "r0", "eq"]}
{:command=>"br", :args=>["_memmove_ulibasmL2"]}
{:command=>"mov", :args=>["r1", "r4"]}
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
skip
skip
Found label: _div
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r2", 16]}
{:command=>"mov", :args=>["r4", "r0"]}
{:command=>"stw", :args=>[-2, "bp", "r0"]}
Found label: divL1_pseudo_ops
{:command=>"subi", :args=>["r2", "r2", 1]}
{:command=>"shl", :args=>["r4", "r4", 1]}
skip
{:command=>"ld16", :args=>["r1", 65534]}
{:command=>"and", :args=>["r4", "r4", "r1"]}
skip
{:command=>"ldi", :args=>["r1", 1]}
{:command=>"shl.r", :args=>["r1", "r1", "r2"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"and", :args=>["r1", "r3", "r1"]}
skip
{:command=>"shr.r", :args=>["r1", "r1", "r2"]}
{:command=>"or", :args=>["r4", "r4", "r1"]}
skip
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"skip", :args=>["r3", "r4", "ulte"]}
{:command=>"br", :args=>["divL2_pseudo_ops"]}
skip
{:command=>"sub", :args=>["r4", "r4", "r3"]}
{:command=>"ldi", :args=>["r1", 1]}
{:command=>"shl.r", :args=>["r1", "r1", "r2"]}
{:command=>"ldw", :args=>["r3", -2, "bp"]}
{:command=>"or", :args=>["r3", "r3", "r1"]}
{:command=>"stw", :args=>[-2, "bp", "r3"]}
skip
Found label: divL2_pseudo_ops
{:command=>"skip", :args=>["r2", "r0", "eq"]}
{:command=>"br", :args=>["divL1_pseudo_ops"]}
{:command=>"ldw", :args=>["r1", -2, "bp"]}
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _mod
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldi", :args=>["r2", 16]}
{:command=>"mov", :args=>["r4", "r0"]}
{:command=>"stw", :args=>[-2, "bp", "r0"]}
Found label: modL1_pseudo_ops
{:command=>"subi", :args=>["r2", "r2", 1]}
{:command=>"shl", :args=>["r4", "r4", 1]}
skip
{:command=>"ld16", :args=>["r1", 65534]}
{:command=>"and", :args=>["r4", "r4", "r1"]}
skip
{:command=>"ldi", :args=>["r1", 1]}
{:command=>"shl.r", :args=>["r1", "r1", "r2"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
{:command=>"and", :args=>["r1", "r3", "r1"]}
skip
{:command=>"shr.r", :args=>["r1", "r1", "r2"]}
{:command=>"or", :args=>["r4", "r4", "r1"]}
skip
{:command=>"ldw", :args=>["r3", 4, "bp"]}
{:command=>"skip", :args=>["r3", "r4", "ulte"]}
{:command=>"br", :args=>["modL2_pseudo_ops"]}
skip
{:command=>"sub", :args=>["r4", "r4", "r3"]}
{:command=>"ldi", :args=>["r1", 1]}
{:command=>"shl.r", :args=>["r1", "r1", "r2"]}
{:command=>"ldw", :args=>["r3", -2, "bp"]}
{:command=>"or", :args=>["r3", "r3", "r1"]}
{:command=>"stw", :args=>[-2, "bp", "r3"]}
skip
Found label: modL2_pseudo_ops
{:command=>"skip", :args=>["r2", "r0", "eq"]}
{:command=>"br", :args=>["modL1_pseudo_ops"]}
{:command=>"mov", :args=>["r1", "r4"]}
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
Found label: _mult
{:command=>"push", :args=>["r1"]}
{:command=>"push", :args=>["bp"]}
{:command=>"mov", :args=>["bp", "sp"]}
{:command=>"ldw", :args=>["r2", 4, "bp"]}
{:command=>"ldw", :args=>["r3", 6, "bp"]}
skip
{:command=>"mov", :args=>["r1", "r0"]}
{:command=>"skip", :args=>["r2", "r3", "gt"]}
{:command=>"br", :args=>["multL2_pseudo_ops"]}
{:command=>"mov", :args=>["r4", "r2"]}
{:command=>"mov", :args=>["r2", "r3"]}
{:command=>"mov", :args=>["r3", "r4"]}
skip
Found label: multL2_pseudo_ops
{:command=>"ldi", :args=>["r4", 1]}
{:command=>"skip", :args=>["r2", "r4", "gt"]}
{:command=>"br", :args=>["multL3_pseudo_ops"]}
{:command=>"andi", :args=>["r4", "r2", 1]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"add", :args=>["r1", "r1", "r3"]}
{:command=>"shr", :args=>["r2", "r2", 1]}
{:command=>"shl", :args=>["r3", "r3", 1]}
{:command=>"br", :args=>["multL2_pseudo_ops"]}
Found label: multL3_pseudo_ops
{:command=>"andi", :args=>["r4", "r2", 1]}
{:command=>"skip", :args=>["r4", "r0", "eq"]}
{:command=>"add", :args=>["r1", "r1", "r3"]}
{:command=>"mov", :args=>["sp", "bp"]}
{:command=>"pop", :args=>["bp"]}
{:command=>"pop", :args=>["pc"]}
skip
ID SYM
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
<<calc _pbuf
 - exists
<<calc _pbuf
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
 - exists
- SYMBOL TABLE ----- (80)
0 => {:name=>"_main", :type=>:label, :ptr=>1, :addr=>0} (0)
1 => {:name=>"L2_mkdir", :type=>:label, :ptr=>26, :addr=>48} (30)
2 => {:name=>"L5_mkdir", :type=>:label, :ptr=>32, :addr=>58} (3a)
3 => {:name=>"L6_mkdir", :type=>:label, :ptr=>49, :addr=>90} (5a)
4 => {:name=>"L8_mkdir", :type=>:label, :ptr=>53, :addr=>96} (60)
5 => {:name=>"L1_mkdir", :type=>:label, :ptr=>63, :addr=>114} (72)
6 => {:name=>"L9_mkdir", :type=>:label, :ptr=>67, :addr=>1374} (55e)
7 => {:name=>"L4_mkdir", :type=>:label, :ptr=>94, :addr=>1400} (578)
8 => {:name=>"_fork", :type=>:label, :ptr=>118, :addr=>120} (78)
9 => {:name=>"_exit", :type=>:label, :ptr=>124, :addr=>130} (82)
10 => {:name=>"_wait", :type=>:label, :ptr=>130, :addr=>140} (8c)
11 => {:name=>"_exec", :type=>:label, :ptr=>136, :addr=>150} (96)
12 => {:name=>"_read", :type=>:label, :ptr=>142, :addr=>160} (a0)
13 => {:name=>"_open", :type=>:label, :ptr=>148, :addr=>170} (aa)
14 => {:name=>"_write", :type=>:label, :ptr=>154, :addr=>180} (b4)
15 => {:name=>"dosyscall_usys", :type=>:label, :ptr=>160, :addr=>190} (be)
16 => {:name=>"L3_ulib", :type=>:label, :ptr=>166, :addr=>1423} (58f)
17 => {:name=>"_printint", :type=>:label, :ptr=>184, :addr=>200} (c8)
18 => {:name=>"L7_ulib", :type=>:label, :ptr=>201, :addr=>232} (e8)
19 => {:name=>"L8_ulib", :type=>:label, :ptr=>203, :addr=>234} (ea)
20 => {:name=>"L4_ulib", :type=>:label, :ptr=>214, :addr=>254} (fe)
21 => {:name=>"L5_ulib", :type=>:label, :ptr=>217, :addr=>258} (102)
22 => {:name=>"L9_ulib", :type=>:label, :ptr=>219, :addr=>260} (104)
23 => {:name=>"L10_ulib", :type=>:label, :ptr=>244, :addr=>308} (134)
24 => {:name=>"L14_ulib", :type=>:label, :ptr=>274, :addr=>366} (16e)
25 => {:name=>"L15_ulib", :type=>:label, :ptr=>292, :addr=>400} (190)
26 => {:name=>"L2_ulib", :type=>:label, :ptr=>298, :addr=>410} (19a)
27 => {:name=>"_printf", :type=>:label, :ptr=>302, :addr=>416} (1a0)
28 => {:name=>"L2_ulib2", :type=>:label, :ptr=>318, :addr=>446} (1be)
29 => {:name=>"L2_ulib6", :type=>:label, :ptr=>339, :addr=>486} (1e6)
30 => {:name=>"L3_ulib0", :type=>:label, :ptr=>356, :addr=>518} (206)
31 => {:name=>"L5_ulib3", :type=>:label, :ptr=>363, :addr=>530} (212)
32 => {:name=>"L5_ulib5", :type=>:label, :ptr=>370, :addr=>542} (21e)
33 => {:name=>"L5_ulib4", :type=>:label, :ptr=>378, :addr=>556} (22c)
34 => {:name=>"L5_ulib6", :type=>:label, :ptr=>388, :addr=>574} (23e)
35 => {:name=>"L3_ulib4", :type=>:label, :ptr=>396, :addr=>588} (24c)
36 => {:name=>"L3_ulib5", :type=>:label, :ptr=>415, :addr=>624} (270)
37 => {:name=>"L3_ulib6", :type=>:label, :ptr=>433, :addr=>658} (292)
38 => {:name=>"L4_ulib0", :type=>:label, :ptr=>447, :addr=>684} (2ac)
39 => {:name=>"L4_ulib1", :type=>:label, :ptr=>462, :addr=>712} (2c8)
40 => {:name=>"L4_ulib3", :type=>:label, :ptr=>466, :addr=>718} (2ce)
41 => {:name=>"L4_ulib6", :type=>:label, :ptr=>475, :addr=>734} (2de)
42 => {:name=>"L3_ulib2", :type=>:label, :ptr=>492, :addr=>766} (2fe)
43 => {:name=>"L3_ulib3", :type=>:label, :ptr=>520, :addr=>818} (332)
44 => {:name=>"L2_ulib3", :type=>:label, :ptr=>520, :addr=>818} (332)
45 => {:name=>"L2_ulib5", :type=>:label, :ptr=>524, :addr=>824} (338)
46 => {:name=>"L2_ulib4", :type=>:label, :ptr=>535, :addr=>844} (34c)
47 => {:name=>"L19_ulib", :type=>:label, :ptr=>558, :addr=>888} (378)
48 => {:name=>"_gets", :type=>:label, :ptr=>562, :addr=>894} (37e)
49 => {:name=>"L60_ulib", :type=>:label, :ptr=>572, :addr=>912} (390)
50 => {:name=>"L66_ulib", :type=>:label, :ptr=>597, :addr=>960} (3c0)
51 => {:name=>"L63_ulib", :type=>:label, :ptr=>606, :addr=>976} (3d0)
52 => {:name=>"L61_ulib", :type=>:label, :ptr=>615, :addr=>992} (3e0)
53 => {:name=>"L5_ulib9", :type=>:label, :ptr=>621, :addr=>1002} (3ea)
54 => {:name=>"_strcmp", :type=>:label, :ptr=>625, :addr=>1008} (3f0)
55 => {:name=>"L68_ulib", :type=>:label, :ptr=>632, :addr=>1020} (3fc)
56 => {:name=>"L69_ulib", :type=>:label, :ptr=>643, :addr=>1040} (410)
57 => {:name=>"L7_ulib2", :type=>:label, :ptr=>657, :addr=>1066} (42a)
58 => {:name=>"L7_ulib3", :type=>:label, :ptr=>665, :addr=>1080} (438)
59 => {:name=>"L67_ulib", :type=>:label, :ptr=>673, :addr=>1094} (446)
60 => {:name=>"_strcpy", :type=>:label, :ptr=>677, :addr=>1100} (44c)
61 => {:name=>"L7_ulib6", :type=>:label, :ptr=>686, :addr=>1114} (45a)
62 => {:name=>"L7_ulib7", :type=>:label, :ptr=>686, :addr=>1114} (45a)
63 => {:name=>"L7_ulib5", :type=>:label, :ptr=>699, :addr=>1138} (472)
64 => {:name=>"_pbuf", :type=>:label, :ptr=>703, :addr=>1448} (5a8)
65 => {:name=>"L3_ulib9", :type=>:label, :ptr=>738, :addr=>1440} (5a0)
66 => {:name=>"_halt", :type=>:label, :ptr=>746, :addr=>1144} (478)
67 => {:name=>"_breek", :type=>:label, :ptr=>749, :addr=>1148} (47c)
68 => {:name=>"memmove_ulibasm", :type=>:label, :ptr=>753, :addr=>1154} (482)
69 => {:name=>"_memmove_ulibasmL2", :type=>:label, :ptr=>763, :addr=>1172} (494)
70 => {:name=>"_memmove_ulibasmL3", :type=>:label, :ptr=>769, :addr=>1182} (49e)
71 => {:name=>"_div", :type=>:label, :ptr=>776, :addr=>1194} (4aa)
72 => {:name=>"divL1_pseudo_ops", :type=>:label, :ptr=>783, :addr=>1206} (4b6)
73 => {:name=>"divL2_pseudo_ops", :type=>:label, :ptr=>804, :addr=>1246} (4de)
74 => {:name=>"_mod", :type=>:label, :ptr=>811, :addr=>1258} (4ea)
75 => {:name=>"modL1_pseudo_ops", :type=>:label, :ptr=>818, :addr=>1270} (4f6)
76 => {:name=>"modL2_pseudo_ops", :type=>:label, :ptr=>839, :addr=>1310} (51e)
77 => {:name=>"_mult", :type=>:label, :ptr=>846, :addr=>1322} (52a)
78 => {:name=>"multL2_pseudo_ops", :type=>:label, :ptr=>858, :addr=>1344} (540)
79 => {:name=>"multL3_pseudo_ops", :type=>:label, :ptr=>868, :addr=>1362} (552)
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L2_mkdir into 48
BR: calculated offset 30
Resolved: L4_mkdir into 1400
Resolved: L4_mkdir into 1400
Resolved:  into false
Resolved:  into false
Resolved: _printf into 416
Resolved: _printf into 416
Resolved:  into false
Resolved: _exit into 130
Resolved: _exit into 130
Resolved:  into false
Resolved: L8_mkdir into 96
Resolved: L8_mkdir into 96
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L9_mkdir into 1374
Resolved: L9_mkdir into 1374
Resolved:  into false
Resolved: _printf into 416
Resolved: _printf into 416
Resolved:  into false
Resolved: L5_mkdir into 58
BR: calculated offset -46
Resolved: _exit into 130
Resolved: _exit into 130
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 60
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 50
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 40
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 30
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 20
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 10
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: dosyscall_usys into 190
BR: calculated offset 0
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L4_ulib into 254
BR: calculated offset 38
Resolved: L7_ulib into 232
BR: calculated offset 10
Resolved: L8_ulib into 234
Resolved: L8_ulib into 234
Resolved:  into false
Resolved: L4_ulib into 254
BR: calculated offset 12
Resolved: L5_ulib into 258
Resolved: L5_ulib into 258
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _mod into 1258
Resolved: _mod into 1258
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L3_ulib into 1423
Resolved: L3_ulib into 1423
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _div into 1194
Resolved: _div into 1194
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L9_ulib into 260
BR: calculated offset -78
Resolved: L15_ulib into 400
BR: calculated offset 56
Resolved: L15_ulib into 400
Resolved: L15_ulib into 400
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: L14_ulib into 366
BR: calculated offset -44
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: L2_ulib5 into 824
Resolved: L2_ulib5 into 824
Resolved:  into false
Resolved: L2_ulib6 into 486
BR: calculated offset 32
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: L2_ulib3 into 818
Resolved: L2_ulib3 into 818
Resolved:  into false
Resolved:  into false
Resolved: L3_ulib0 into 518
BR: calculated offset 6
Resolved: L2_ulib4 into 844
Resolved: L2_ulib4 into 844
Resolved:  into false
Resolved: L3_ulib5 into 624
BR: calculated offset 98
Resolved: L5_ulib4 into 556
BR: calculated offset 26
Resolved: L4_ulib6 into 734
BR: calculated offset 196
Resolved: L3_ulib2 into 766
BR: calculated offset 224
Resolved: L3_ulib4 into 588
BR: calculated offset 38
Resolved: L3_ulib2 into 766
Resolved: L3_ulib2 into 766
Resolved:  into false
Resolved: L3_ulib5 into 624
BR: calculated offset 60
Resolved: L3_ulib6 into 658
BR: calculated offset 88
Resolved: L3_ulib2 into 766
BR: calculated offset 192
Resolved: L3_ulib5 into 624
BR: calculated offset 42
Resolved: L3_ulib2 into 766
Resolved: L3_ulib2 into 766
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _printint into 200
Resolved: _printint into 200
Resolved:  into false
Resolved: L3_ulib3 into 818
Resolved: L3_ulib3 into 818
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _printint into 200
Resolved: _printint into 200
Resolved:  into false
Resolved: L3_ulib3 into 818
Resolved: L3_ulib3 into 818
Resolved:  into false
Resolved: L4_ulib3 into 718
BR: calculated offset 46
Resolved: L3_ulib9 into 1440
Resolved: L3_ulib9 into 1440
Resolved: L4_ulib3 into 718
Resolved: L4_ulib3 into 718
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved:  into false
Resolved: L4_ulib0 into 684
BR: calculated offset -44
Resolved: L3_ulib3 into 818
Resolved: L3_ulib3 into 818
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: L3_ulib3 into 818
Resolved: L3_ulib3 into 818
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved:  into false
Resolved: L2_ulib2 into 446
BR: calculated offset -398
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved:  into false
Resolved: _pbuf into 1448
Resolved: _pbuf into 1448
Resolved:  into false
Resolved:  into false
Resolved: _write into 180
Resolved: _write into 180
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L61_ulib into 992
Resolved: L61_ulib into 992
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _read into 160
Resolved: _read into 160
Resolved:  into false
Resolved:  into false
Resolved: L66_ulib into 960
BR: calculated offset 12
Resolved: L66_ulib into 960
BR: calculated offset 6
Resolved: L63_ulib into 976
BR: calculated offset 16
Resolved: L5_ulib9 into 1002
Resolved: L5_ulib9 into 1002
Resolved:  into false
Resolved: L60_ulib into 912
BR: calculated offset -88
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L69_ulib into 1040
Resolved: L69_ulib into 1040
Resolved:  into false
Resolved: L7_ulib2 into 1066
BR: calculated offset 20
Resolved:  into false
Resolved: L7_ulib2 into 1066
BR: calculated offset 10
Resolved:  into false
Resolved: L68_ulib into 1020
BR: calculated offset -46
Resolved: L7_ulib3 into 1080
BR: calculated offset 8
Resolved:  into false
Resolved: L67_ulib into 1094
Resolved: L67_ulib into 1094
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: L7_ulib6 into 1114
BR: calculated offset -22
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: _memmove_ulibasmL3 into 1182
BR: calculated offset 10
Resolved: _memmove_ulibasmL2 into 1172
BR: calculated offset -14
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: divL2_pseudo_ops into 1246
BR: calculated offset 12
Resolved: divL1_pseudo_ops into 1206
BR: calculated offset -44
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: modL2_pseudo_ops into 1310
BR: calculated offset 12
Resolved: modL1_pseudo_ops into 1270
BR: calculated offset -44
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: multL2_pseudo_ops into 1344
BR: calculated offset 6
Resolved:  into false
Resolved:  into false
Resolved:  into false
Resolved: multL3_pseudo_ops into 1362
BR: calculated offset 12
Resolved: multL2_pseudo_ops into 1344
BR: calculated offset -18
Resolved:  into false
Resolved:  into false
Resolved:  into false
Done!
cp ulinked.bin mkfs/_mkdir
