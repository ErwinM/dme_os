OBJS = \
	boot.s\
	console.ss\
	uart.s\
	kernel.s\
	kalloc.ss\
	vm.ss\
	proc.ss\
	trapasm.s\
	swtch.s\
	kmain.ss\
	pseudo_ops.s\


kernel: $(OBJS)
	ruby link.rb $(OBJS)
	m4 linked.ss > linked.s
	asm.rb -f=linked.s


%.ss: %.c
	gcc -E $< | rcc -target=dme > $@

clean:
	rm *.ss