all: lib.a

lib.a: libsrc1.c libsrc2.c libsrc3.c
	avr-gcc -c libsrc1.c -o libsrc1.o
	avr-gcc -c libsrc2.c -o libsrc2.o
	avr-gcc -c libsrc3.c -o libsrc3.o
	avr-ar rcs lib.a libsrc1.o libsrc2.o libsrc3.o
	avr-objdump -t libsrc1.o > libsrc1.sym
	avr-objdump -t libsrc2.o > libsrc2.sym
	avr-objdump -t libsrc3.o > libsrc3.sym
	avr-objdump -t lib.a > lib.sym

clean:
	rm *.o *.a *.sym
