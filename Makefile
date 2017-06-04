OBJS = \
	boot.s\
	console.ss\
	uart.s\
	kernel.s\
	vm.ss\
	kalloc.ss\
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