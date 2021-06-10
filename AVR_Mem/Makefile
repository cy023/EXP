all: main.s

%.s: %.c
	avr-gcc main.c -o build/main.elf
	avr-objdump -D -x build/main.elf > build/main.s

clean:
	rm build/*
