# Lab03
連結不同目的檔到靜態函式庫

<details>
<summary>libsrc1.c</summary>

```c=
int lib1_fun1(void)
{
    return 11;
}

int lib1_fun2(void)
{
    return 12;
}
```
</details>

<details>
<summary>libsrc2.c</summary>

```c=
int lib2_fun1(void)
{
    return 21;
}

int lib2_fun2(void)
{
    return 22;
}
```
</details>

<details>
<summary>libsrc3.c</summary>

```c=
int lib3_fun1(void)
{
    return 31;
}

int lib3_fun2(void)
{
    return 32;
}
```
</details>

## Compilation and Assembling
```shell
avr-gcc -c libsrc1.c -o libsrc1.o
avr-gcc -c libsrc2.c -o libsrc2.o
avr-gcc -c libsrc3.c -o libsrc3.o
```

- libsrc1.o
- libsrc2.o
- libsrc3.o

## Archive
```shell
avr-ar rcs lib.a libsrc1.o libsrc2.o libsrc3.o
```

- lib.a

## Symbol Table
```shell
avr-objdump -t libsrc1.o > libsrc1.sym
avr-objdump -t libsrc2.o > libsrc2.sym
avr-objdump -t libsrc3.o > libsrc3.sym
avr-objdump -t lib.a > lib.sym
```

<details>
<summary>libsrc1.sym</summary>

```c=
libsrc1.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc1.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib1_fun1
00000012 g     F .text	00000012 lib1_fun2
```
</details>

<details>
<summary>libsrc2.sym</summary>

```c=
libsrc2.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc2.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib2_fun1
00000012 g     F .text	00000012 lib2_fun2
```
</details>

<details>
<summary>libsrc3.sym</summary>

```c=
libsrc3.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc3.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib3_fun1
00000012 g     F .text	00000012 lib3_fun2
```
</details>

<details>
<summary>lib.sym</summary>

```c=
In archive lib.a:

libsrc1.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc1.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib1_fun1
00000012 g     F .text	00000012 lib1_fun2



libsrc2.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc2.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib2_fun1
00000012 g     F .text	00000012 lib2_fun2



libsrc3.o:     file format elf32-avr

SYMBOL TABLE:
00000000 l    df *ABS*	00000000 libsrc3.c
00000000 l    d  .text	00000000 .text
00000000 l    d  .data	00000000 .data
00000000 l    d  .bss	00000000 .bss
0000003e l       *ABS*	00000000 __SP_H__
0000003d l       *ABS*	00000000 __SP_L__
0000003f l       *ABS*	00000000 __SREG__
00000000 l       *ABS*	00000000 __tmp_reg__
00000001 l       *ABS*	00000000 __zero_reg__
00000000 l    d  .comment	00000000 .comment
00000000 g     F .text	00000012 lib3_fun1
00000012 g     F .text	00000012 lib3_fun2
```
</details>