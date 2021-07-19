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

.c.bs:
	$(CC) $(CFLAGS) $(OFLAGS) -S $(NCMOV) $*.c -o $*.bs

.c.o:
	$(CC) $(CFLAGS) $(OFLAGS) -C $*.c -o $*.o



.c.d:
	$(CC) $(CFLAGS) $(OFLAG) --specs=nosys.specs $*.c -o $*.elf
	arm-none-eabi-objdump -d $*.elf > $*.d
	rm -f $*.elf


all: files

files:	control.bs control.s control.d loop.s loop.O1s switch.s switch.d

switch: switch.c
	$(CC) -g $(CFLAGS) $(OFLAG) switch.c -o switch


clean:
	rm -f *~ *.s *.d *.bs *.O1s
	rm -f switch

