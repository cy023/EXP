all: gcc_build avr-gcc_build arm-none-eabi-gcc_build

gcc_build: main.c
	@echo
	@gcc --version
	
	@echo
	gcc main.c -o gcc_build/main.exe

	@echo
	objdump -t gcc_build/main.exe > gcc_build/main.lst

avr-gcc_build: main.c
	@echo
	@avr-gcc --version
	
	@echo
	avr-gcc main.c -o avr-gcc_build/main.elf

	@echo
	avr-objdump -t avr-gcc_build/main.elf > avr-gcc_build/main.lst

arm-none-eabi-gcc_build: main.c
	@echo
	@arm-none-eabi-gcc --version
	
	@echo
	arm-none-eabi-gcc -c main.c -o arm-none-eabi-gcc_build/main.elf
	
	@echo
	arm-none-eabi-nm -n arm-none-eabi-gcc_build/main.elf > arm-none-eabi-gcc_build/main.sym
	
	@echo
	arm-none-eabi-objdump -h -S -C arm-none-eabi-gcc_build/main.elf > arm-none-eabi-gcc_build/main.lst
	
	@echo
	arm-none-eabi-size -A arm-none-eabi-gcc_build/main.elf

clean:
	rm gcc_build/*
	rm avr-gcc_build/*
	rm arm-none-eabi-gcc_build/*
