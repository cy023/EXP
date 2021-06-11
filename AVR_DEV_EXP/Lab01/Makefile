all: main.s

%.s: %.c
	avr-gcc -E main.c -o main.i
	avr-gcc -S main.i -o main.s
	avr-gcc -c main.s -o main.o
	avr-gcc -Wl,-Map=main.map main.o -o main.elf
	avr-objdump -t main.elf > main.sym

clean:
	rm *.i *.s *.o *.elf *.map *.sym
