all: gcc_build avr-gcc_build arm-none-eabi-gcc_build

gcc_build: main.c
	@echo ==================== gcc ====================
	@gcc --version
	gcc main.c -o gcc_build/main.exe
	objdump -t gcc_build/main.exe > gcc_build/main.sym
	objdump -D gcc_build/main.exe > gcc_build/main.s

avr-gcc_build: main.c
	@echo ==================== avr-gcc ====================
	@avr-gcc --version
	avr-gcc main.c -o avr-gcc_build/main.elf
	avr-objdump -t avr-gcc_build/main.elf > avr-gcc_build/main.sym
	avr-objdump -D avr-gcc_build/main.elf > avr-gcc_build/main.s

arm-none-eabi-gcc_build: main.c
	@echo ==================== arm-none-eabi-gcc ====================
	@arm-none-eabi-gcc --version
	arm-none-eabi-gcc -c main.c -o arm-none-eabi-gcc_build/main.elf
	arm-none-eabi-objdump -t arm-none-eabi-gcc_build/main.elf > arm-none-eabi-gcc_build/main.sym
	arm-none-eabi-objdump -D arm-none-eabi-gcc_build/main.elf > arm-none-eabi-gcc_build/main.s

clean:
	rm gcc_build/*
	rm avr-gcc_build/*
	rm arm-none-eabi-gcc_build/*
