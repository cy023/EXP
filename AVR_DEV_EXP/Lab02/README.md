# Lab02
連結不同目的檔到執行檔

<details>
<summary>main.c</summary>

```c=
#include "lib.h"

int main(void)
{
    int var;
    var = func(1, 1);
    return 0;
}
```
</details>

<details>
<summary>lib.c</summary>

```c=
#include "lib.h"

int func(int a, int b)
{
    return a + b;
}
```
</details>

<details>
<summary>lib.c</summary>

```c=
int func(int a, int b);
```
</details>

## Preprocessor
```shell
avr-gcc -E lib.c  -o lib.i
avr-gcc -E main.c -o main.i
```

<details>
<summary>main.i</summary>

```c=
# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "lib.h" 1
int func(int a, int b);
# 2 "main.c" 2

int main(void)
{
    int var;
    var = func(1, 1);
    return 0;
}
```
</details>

<details>
<summary>lib.i</summary>

```c=
# 1 "lib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lib.c"
# 1 "lib.h" 1
int func(int a, int b);
# 2 "lib.c" 2

int func(int a, int b)
{
    return a + b;
}
```
</details>

## Compilation
```shell
avr-gcc -S lib.i -o lib.s
avr-gcc -S main.i -o main.s
```

<details>
<summary>main.s</summary>

```c=
	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	main
	.type	main, @function
main:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(1)
	ldi r25,0
	rcall func
	std Y+2,r25
	std Y+1,r24
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 5.4.0"
```
</details>

<details>
<summary>lib.s</summary>

```c=
	.file	"lib.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	func
	.type	func, @function
func:
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	std Y+2,r25
	std Y+1,r24
	std Y+4,r23
	std Y+3,r22
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r24,Y+3
	ldd r25,Y+4
	add r24,r18
	adc r25,r19
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.size	func, .-func
	.ident	"GCC: (GNU) 5.4.0"
```
</details>

## Assembling
```shell
avr-gcc -c lib.s  -o lib.o
avr-gcc -c main.s -o main.o
```

- main.o

- lib.o

## Linking
連結不同目的檔到一份執行檔，觀察合併兩份 symbol table 之後的變化。
```shell
avr-gcc main.o lib.o -o output.elf
```

- output.elf

## 輔助工具
### Map File
```shell
avr-gcc -Wl,-Map=output.map main.o lib.o -o output.elf
```

<details>
<summary>output.map</summary>

```c=

Memory Configuration

Name             Origin             Length             Attributes
text             0x0000000000000000 0x0000000000002000 xr
data             0x0000000000800060 0x000000000000ffa0 rw !x
eeprom           0x0000000000810000 0x0000000000010000 rw !x
fuse             0x0000000000820000 0x0000000000000400 rw !x
lock             0x0000000000830000 0x0000000000000400 rw !x
signature        0x0000000000840000 0x0000000000000400 rw !x
user_signatures  0x0000000000850000 0x0000000000000400 rw !x
*default*        0x0000000000000000 0xffffffffffffffff

Linker script and memory map

LOAD main.o
LOAD lib.o
START GROUP
LOAD /usr/lib/gcc/avr/5.4.0/libgcc.a
LOAD /usr/lib/gcc/avr/5.4.0/../../../avr/lib/libm.a
LOAD /usr/lib/gcc/avr/5.4.0/../../../avr/lib/libc.a
END GROUP
                0x0000000000000000                __TEXT_REGION_ORIGIN__ = DEFINED (__TEXT_REGION_ORIGIN__)?__TEXT_REGION_ORIGIN__:0x0
                0x0000000000800060                __DATA_REGION_ORIGIN__ = DEFINED (__DATA_REGION_ORIGIN__)?__DATA_REGION_ORIGIN__:0x800060
                0x0000000000002000                __TEXT_REGION_LENGTH__ = DEFINED (__TEXT_REGION_LENGTH__)?__TEXT_REGION_LENGTH__:0x2000
                0x000000000000ffa0                __DATA_REGION_LENGTH__ = DEFINED (__DATA_REGION_LENGTH__)?__DATA_REGION_LENGTH__:0xffa0
                0x0000000000010000                __EEPROM_REGION_LENGTH__ = DEFINED (__EEPROM_REGION_LENGTH__)?__EEPROM_REGION_LENGTH__:0x10000
                0x0000000000000400                __FUSE_REGION_LENGTH__ = DEFINED (__FUSE_REGION_LENGTH__)?__FUSE_REGION_LENGTH__:0x400
                0x0000000000000400                __LOCK_REGION_LENGTH__ = DEFINED (__LOCK_REGION_LENGTH__)?__LOCK_REGION_LENGTH__:0x400
                0x0000000000000400                __SIGNATURE_REGION_LENGTH__ = DEFINED (__SIGNATURE_REGION_LENGTH__)?__SIGNATURE_REGION_LENGTH__:0x400
                0x0000000000000400                __USER_SIGNATURE_REGION_LENGTH__ = DEFINED (__USER_SIGNATURE_REGION_LENGTH__)?__USER_SIGNATURE_REGION_LENGTH__:0x400

.hash
*(.hash)

.dynsym
*(.dynsym)

.dynstr
*(.dynstr)

.gnu.version
*(.gnu.version)

.gnu.version_d
*(.gnu.version_d)

.gnu.version_r
*(.gnu.version_r)

.rel.init
*(.rel.init)

.rela.init
*(.rela.init)

.rel.text
*(.rel.text)
*(.rel.text.*)
*(.rel.gnu.linkonce.t*)

.rela.text
*(.rela.text)
*(.rela.text.*)
*(.rela.gnu.linkonce.t*)

.rel.fini
*(.rel.fini)

.rela.fini
*(.rela.fini)

.rel.rodata
*(.rel.rodata)
*(.rel.rodata.*)
*(.rel.gnu.linkonce.r*)

.rela.rodata
*(.rela.rodata)
*(.rela.rodata.*)
*(.rela.gnu.linkonce.r*)

.rel.data
*(.rel.data)
*(.rel.data.*)
*(.rel.gnu.linkonce.d*)

.rela.data
*(.rela.data)
*(.rela.data.*)
*(.rela.gnu.linkonce.d*)

.rel.ctors
*(.rel.ctors)

.rela.ctors
*(.rela.ctors)

.rel.dtors
*(.rel.dtors)

.rela.dtors
*(.rela.dtors)

.rel.got
*(.rel.got)

.rela.got
*(.rela.got)

.rel.bss
*(.rel.bss)

.rela.bss
*(.rela.bss)

.rel.plt
*(.rel.plt)

.rela.plt
*(.rela.plt)

.text           0x0000000000000000       0x54
*(.vectors)
*(.vectors)
*(.progmem.gcc*)
                0x0000000000000000                . = ALIGN (0x2)
                0x0000000000000000                __trampolines_start = .
*(.trampolines)
.trampolines   0x0000000000000000        0x0 linker stubs
*(.trampolines*)
                0x0000000000000000                __trampolines_end = .
*libprintf_flt.a:*(.progmem.data)
*libc.a:*(.progmem.data)
*(.progmem*)
                0x0000000000000000                . = ALIGN (0x2)
*(.jumptables)
*(.jumptables*)
*(.lowtext)
*(.lowtext*)
                0x0000000000000000                __ctors_start = .
*(.ctors)
                0x0000000000000000                __ctors_end = .
                0x0000000000000000                __dtors_start = .
*(.dtors)
                0x0000000000000000                __dtors_end = .
SORT(*)(.ctors)
SORT(*)(.dtors)
*(.init0)
*(.init0)
*(.init1)
*(.init1)
*(.init2)
*(.init2)
*(.init3)
*(.init3)
*(.init4)
*(.init4)
*(.init5)
*(.init5)
*(.init6)
*(.init6)
*(.init7)
*(.init7)
*(.init8)
*(.init8)
*(.init9)
*(.init9)
*(.text)
.text          0x0000000000000000       0x26 main.o
                0x0000000000000000                main
.text          0x0000000000000026       0x2e lib.o
                0x0000000000000026                func
                0x0000000000000054                . = ALIGN (0x2)
*(.text.*)
                0x0000000000000054                . = ALIGN (0x2)
*(.fini9)
*(.fini9)
*(.fini8)
*(.fini8)
*(.fini7)
*(.fini7)
*(.fini6)
*(.fini6)
*(.fini5)
*(.fini5)
*(.fini4)
*(.fini4)
*(.fini3)
*(.fini3)
*(.fini2)
*(.fini2)
*(.fini1)
*(.fini1)
*(.fini0)
*(.fini0)
                0x0000000000000054                _etext = .

.data           0x0000000000800060        0x0 load address 0x0000000000000054
                [!provide]                        PROVIDE (__data_start, .)
*(.data)
.data          0x0000000000800060        0x0 main.o
.data          0x0000000000800060        0x0 lib.o
*(.data*)
*(.gnu.linkonce.d*)
*(.rodata)
*(.rodata*)
*(.gnu.linkonce.r*)
                0x0000000000800060                . = ALIGN (0x2)
                0x0000000000800060                _edata = .
                [!provide]                        PROVIDE (__data_end, .)

.bss            0x0000000000800060        0x0
                [!provide]                        PROVIDE (__bss_start, .)
*(.bss)
.bss           0x0000000000800060        0x0 main.o
.bss           0x0000000000800060        0x0 lib.o
*(.bss*)
*(COMMON)
                [!provide]                        PROVIDE (__bss_end, .)
                0x0000000000000054                __data_load_start = LOADADDR (.data)
                0x0000000000000054                __data_load_end = (__data_load_start + SIZEOF (.data))

.noinit         0x0000000000800060        0x0
                [!provide]                        PROVIDE (__noinit_start, .)
*(.noinit*)
                [!provide]                        PROVIDE (__noinit_end, .)
                0x0000000000800060                _end = .
                [!provide]                        PROVIDE (__heap_start, .)

.eeprom         0x0000000000810000        0x0
*(.eeprom*)
                0x0000000000810000                __eeprom_end = .

.fuse
*(.fuse)
*(.lfuse)
*(.hfuse)
*(.efuse)

.lock
*(.lock*)

.signature
*(.signature*)

.user_signatures
*(.user_signatures*)

.stab
*(.stab)

.stabstr
*(.stabstr)

.stab.excl
*(.stab.excl)

.stab.exclstr
*(.stab.exclstr)

.stab.index
*(.stab.index)

.stab.indexstr
*(.stab.indexstr)

.comment        0x0000000000000000       0x11
*(.comment)
.comment       0x0000000000000000       0x11 main.o
                                        0x12 (size before relaxing)
.comment       0x0000000000000011       0x12 lib.o

.note.gnu.build-id
*(.note.gnu.build-id)

.debug
*(.debug)

.line
*(.line)

.debug_srcinfo
*(.debug_srcinfo)

.debug_sfnames
*(.debug_sfnames)

.debug_aranges
*(.debug_aranges)

.debug_pubnames
*(.debug_pubnames)

.debug_info
*(.debug_info .gnu.linkonce.wi.*)

.debug_abbrev
*(.debug_abbrev)

.debug_line
*(.debug_line .debug_line.* .debug_line_end)

.debug_frame
*(.debug_frame)

.debug_str
*(.debug_str)

.debug_loc
*(.debug_loc)

.debug_macinfo
*(.debug_macinfo)

.debug_weaknames
*(.debug_weaknames)

.debug_funcnames
*(.debug_funcnames)

.debug_typenames
*(.debug_typenames)

.debug_varnames
*(.debug_varnames)

.debug_pubtypes
*(.debug_pubtypes)

.debug_ranges
*(.debug_ranges)

.debug_macro
*(.debug_macro)
OUTPUT(output.elf elf32-avr)
LOAD linker stubs

```
</details>

### Symbol Table
```shell
avr-objdump -t lib.o > lib.sym
avr-objdump -t output.elf > output.sym
```

<details>
<summary>main.sym</summary>

```c=
output.elf:     file format elf32-avr

SYMBOL TABLE:
00000000 l    d  .text	00000000 .text
00800060 l    d  .data	00000000 .data
00000000 l    d  .comment	00000000 .comment
00000000 l    df *ABS*	00000000 main.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    df *ABS*	00000000 lib.c
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
0000ffa0 g       *ABS*	00000000 __DATA_REGION_LENGTH__
00000000 g       *ABS*	00000000 __TEXT_REGION_ORIGIN__
00000000 g       .text	00000000 __trampolines_start
00000054 g       .text	00000000 _etext
00000054 g       *ABS*	00000000 __data_load_end
00000000 g       .text	00000000 __trampolines_end
00000054 g       *ABS*	00000000 __data_load_start
00000000 g       .text	00000000 __dtors_end
00000400 g       *ABS*	00000000 __LOCK_REGION_LENGTH__
00810000 g       .data	00000000 __eeprom_end
00000400 g       *ABS*	00000000 __SIGNATURE_REGION_LENGTH__
00000000 g       .text	00000000 __ctors_start
00000000 g     F .text	00000026 main
00800060 g       *ABS*	00000000 __DATA_REGION_ORIGIN__
00000400 g       *ABS*	00000000 __USER_SIGNATURE_REGION_LENGTH__
00000026 g     F .text	0000002e func
00000000 g       .text	00000000 __dtors_start
00000000 g       .text	00000000 __ctors_end
00800060 g       .data	00000000 _edata
00800060 g       .data	00000000 _end
00010000 g       *ABS*	00000000 __EEPROM_REGION_LENGTH__
00000400 g       *ABS*	00000000 __FUSE_REGION_LENGTH__
00002000 g       *ABS*	00000000 __TEXT_REGION_LENGTH__
```
</details>

<details>
<summary>lib.sym</summary>

```c=
lib.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 lib.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	0000002e func
```
</details>
