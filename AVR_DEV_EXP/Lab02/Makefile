all: main.s

%.s: %.c
	avr-gcc -E lib.c  -o lib.i
	avr-gcc -E main.c -o main.i
	avr-gcc -S lib.i -o lib.s
	avr-gcc -S main.i -o main.s
	avr-gcc -c lib.s  -o lib.o
	avr-gcc -c main.s -o main.o
	avr-gcc -Wl,-Map=output.map main.o lib.o -o output.elf
	avr-objdump -t lib.o > lib.sym
	avr-objdump -t output.elf > output.sym

clean:
	rm *.i *.s *.o *.elf *.map *.sym