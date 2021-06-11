# Lab01
執行基本編譯流程。

在此我們先從最簡單的 main.c 開始學習，了解程式是怎麼被轉換成機器能執行的 Machine Code.

<details>
<summary>main.c</summary>

```c=
int main()
{
    return 0;
}
```
</details>

## Preprocessor
此階段為**預處理**，主要負責`文字替換`，`巨集展開`。
```shell
avr-gcc -E main.c -o main.i
```

<details>
<summary>main.i</summary>

```c=
# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
int main()
{
    return 0;
}
```
</details>

## Compilation
此階段為**編譯**，主要負責將高階語言轉換成組合語言。其中有很多坑可以挖...
```shell
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
    in r28,__SP_L__
    in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
    ldi r24,0
    ldi r25,0
/* epilogue start */
    pop r29
    pop r28
    ret
    .size	main, .-main
    .ident	"GCC: (GNU) 5.4.0"

```
</details>

## Assembling
此階段為**組譯**，主要負責將高階語言轉換成組合語言。
```shell
avr-gcc -c main.s -o main.o
```

- main.o

## Linking
此階段為**連結**，主要負責將各 **Relocatable Object File** 重新定位並合併，產生執行檔。
```shell
avr-gcc main.o -o main.elf
```

- main.elf

## 輔助工具
基本上從 `Assembling` 以後的步驟就難以直接觀察檔案獲取我們需要的資訊。
但是我們可以借助工具來幫我們看到有用的資訊！

### Map File
在 `Linking` 階段，我們可以加入以下參數輸出 Map File.
```shell
avr-gcc -Wl,-Map=main.map main.o -o main.elf
```

<details>
<summary>main.map</summary>

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

.text           0x0000000000000000       0x12
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
.text          0x0000000000000000       0x12 main.o
                0x0000000000000000                main
                0x0000000000000012                . = ALIGN (0x2)
*(.text.*)
                0x0000000000000012                . = ALIGN (0x2)
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
                0x0000000000000012                _etext = .

.data           0x0000000000800060        0x0 load address 0x0000000000000012
                [!provide]                        PROVIDE (__data_start, .)
*(.data)
.data          0x0000000000800060        0x0 main.o
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
*(.bss*)
*(COMMON)
                [!provide]                        PROVIDE (__bss_end, .)
                0x0000000000000012                __data_load_start = LOADADDR (.data)
                0x0000000000000012                __data_load_end = (__data_load_start + SIZEOF (.data))

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
OUTPUT(main.elf elf32-avr)
LOAD linker stubs

```
</details>

### Symbol Table
利用 `objdump` 工具，從 elf 中倒出 symbol table 的資訊。
```shell
avr-objdump -t main.elf > main.sym
```

<details>
<summary>main.sym</summary>

```c=
main.elf:     file format elf32-avr

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
0000ffa0 g       *ABS*	00000000 __DATA_REGION_LENGTH__
00000000 g       *ABS*	00000000 __TEXT_REGION_ORIGIN__
00000000 g       .text	00000000 __trampolines_start
00000012 g       .text	00000000 _etext
00000012 g       *ABS*	00000000 __data_load_end
00000000 g       .text	00000000 __trampolines_end
00000012 g       *ABS*	00000000 __data_load_start
00000000 g       .text	00000000 __dtors_end
00000400 g       *ABS*	00000000 __LOCK_REGION_LENGTH__
00810000 g       .data	00000000 __eeprom_end
00000400 g       *ABS*	00000000 __SIGNATURE_REGION_LENGTH__
00000000 g       .text	00000000 __ctors_start
00000000 g     F .text	00000012 main
00800060 g       *ABS*	00000000 __DATA_REGION_ORIGIN__
00000400 g       *ABS*	00000000 __USER_SIGNATURE_REGION_LENGTH__
00000000 g       .text	00000000 __dtors_start
00000000 g       .text	00000000 __ctors_end
00800060 g       .data	00000000 _edata
00800060 g       .data	00000000 _end
00010000 g       *ABS*	00000000 __EEPROM_REGION_LENGTH__
00000400 g       *ABS*	00000000 __FUSE_REGION_LENGTH__
00002000 g       *ABS*	00000000 __TEXT_REGION_LENGTH__
```
</details>
