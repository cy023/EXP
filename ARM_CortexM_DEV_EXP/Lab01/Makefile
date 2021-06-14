all: main.s

%.s: %.c
	arm-none-eabi-gcc -E main.c -o main.i
	arm-none-eabi-gcc -S main.i -o main.s
	arm-none-eabi-gcc -c main.s -o main.o
	arm-none-eabi-gcc -Wl,-Map=main.map --specs=nosys.specs main.o -o main.elf
	arm-none-eabi-objdump -t main.elf > main.sym
	
clean:
	rm *.i *.s *.o *.elf *.map *.sym
