OBJS = \
	boot.s\
	console.ss\
	common.ss\
	uart.ss\
	uartasm.s\
	kernel.s\
	kalloc.ss\
	vm.ss\
	proc.ss\
	trapasm.s\
	swtch.s\
	forkasm.s\
	trap.ss\
	syscall.ss\
	sys_proc.ss\
	sys_file.ss\
	fs.ss\
	bio.ss\
	cio.ss\
	file.ss\
	sd.ss\
	exec.ss\
	sdasm.s\
	kmain.ss\
	pseudo_ops.s\
	initcode.s\

ULIB = \
	usys.s\
	ulib.ss\
	ulibasm.s\
	pseudo_ops.s\

.PRECIOUS: %.ss

kernel: $(OBJS)
	ruby link.rb $(OBJS) -odme_os
	m4 dme_os.ss > dme_os.s
	asm.rb -f=dme_os.s -o=dme_os

_%: %.ss $(ULIB)
	ruby link.rb $@.ss $(ULIB) -oulinked
	m4 ulinked.ss > ulinked.s
	asm.rb -f=ulinked.s -o=ulinked
	cp ulinked.bin mkfs/$@

%.ss: %.c
	gcc -E $< | rcc -target=dme > $@

clean:
	rm *.ss

mkfs: $(ULIB)
	./mkfs/mkfs fs.img fs.h _init

UPROG= \
	fs.h\
	_init\
