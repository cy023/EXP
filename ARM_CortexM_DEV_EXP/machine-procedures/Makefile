CC = arm-none-eabi-gcc

MCU     = -mcpu=cortex-m4
THUMB   = -mthumb

OFLAGS  = -Og
O1FLAGS = -O1

CFLAGS = $(MCU) $(THUMB) -std=gnu99 -Wall

NCMOV = -fno-if-conversion

.SUFFIXES: .c .s .bs .O1s .o .d

.c.s:
	$(CC) $(CFLAGS) $(OFLAGS) -S $*.c -o $*.s

.c.O1s:
	$(CC) $(CFLAGS) $(O1FLAGS) -S $*.c -o $*.O1s

.c.d:
	$(CC) $(CFLAGS) $(OFLAG) --specs=nosys.specs $*.c -o $*.elf
	arm-none-eabi-objdump -d $*.elf > $*.d
	rm -f $*.elf


files:	incr.s mstore-exe.d recurse.s

mstore-exe.d: mstore.c main.c
	$(CC) $(CFLAGS) $(OFLAG) --specs=nosys.specs mstore.c main.c -o mstore-exe.elf
	arm-none-eabi-objdump -d $*.elf > $*.d
	rm -f $*.elf

clean:
	rm -f *~ *.s *.o *.d
	rm -f incr mstore