all: main.s

%.s: %.c
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -S main.c -o main.s
	
clean:
	rm *.s
