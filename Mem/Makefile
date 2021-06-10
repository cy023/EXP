all: main.s

%.s: %.c
	@echo ==================== gcc ====================
	@gcc --version
	gcc main.c -o gcc_build/main.exe
	objdump -D -x gcc_build/main.exe > gcc_build/main.s

	@echo ==================== avr-gcc ====================
	@avr-gcc --version
	avr-gcc main.c -o avr-gcc_build/main.elf
	avr-objdump -D -x avr-gcc_build/main.elf > avr-gcc_build/main.s

	@echo ==================== arm-none-eabi-gcc ====================
	@arm-none-eabi-gcc --version
	arm-none-eabi-gcc -c main.c -o arm-none-eabi-gcc_build/main.elf
	arm-none-eabi-objdump -D -x arm-none-eabi-gcc_build/main.elf > arm-none-eabi-gcc_build/main.s

clean:
	rm *_build/*
