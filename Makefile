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
	sdasm.s\
	kmain.ss\
	pseudo_ops.s\
	initcode.s\

USER = \
	usys.s\
	init.ss\
	ulic.ss\
	ulibasm.s\

kernel: $(OBJS)
	ruby link.rb $(OBJS)
	m4 linked.ss > linked.s
	asm.rb -f=linked.s

user: $(USER)
	ruby link.rb $(USER)
	m4 linked.ss > linked.s
	asm.rb -f=linked.s

%.ss: %.c
	gcc -E $< | rcc -target=dme > $@

clean:
	rm *.ss