OBJS = \
	boot.s\
	console.ss\
	common.ss\
	uart.s\
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
	sd.ss\
	exec.ss\
	sdasm.s\
	kmain.ss\
	pseudo_ops.s\
	initcode.s\

ULIB = \
	usys.s\
	ulibasm.s\

kernel: $(OBJS)
	ruby link.rb $(OBJS)
	m4 linked.ss > linked.s
	asm.rb -f=linked.s

_%: %.ss $(ULIB)
	ruby link.rb $@.ss $(ULIB)
	m4 linked.ss > linked.s
	asm.rb -f=linked.s
	cp A.bin mkfs/$@

%.ss: %.c
	gcc -E $< | rcc -target=dme > $@

clean:
	rm *.ss

UPROG= \
	fs.h\
	_init\
