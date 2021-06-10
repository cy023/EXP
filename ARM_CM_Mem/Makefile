all: main.s

%.s: src/%.c
	arm-none-eabi-gcc -c src/main.c -o build/main.elf
	arm-none-eabi-objdump -D -x build/main.elf > build/main.s

clean:
	rm build/*
