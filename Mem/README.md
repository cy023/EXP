# 記憶體位置學習筆記

## 說明
測試不同變數存放在記憶體的不同區段

## 測試平台
- Host
    ```sh
    cy023@cy023-e14:~/project/EXP/Mem$ uname -a
    Linux cy023-e14 5.8.0-55-generic #62~20.04.1-Ubuntu SMP Wed Jun 2 08:55:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
    ```
- gcc
    ```sh
    cy023@cy023-e14:~/project/EXP/Mem$ gcc --version
    gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
    Copyright (C) 2019 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    ```
- avr-gcc
    ```sh
    cy023@cy023-e14:~/project/EXP/Mem$ avr-gcc --version
    avr-gcc (GCC) 5.4.0
    Copyright (C) 2015 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    ```
- arm-none-eabi-gcc
    ```sh
    cy023@cy023-e14:~/project/EXP/Mem$ arm-none-eabi-gcc --version
    arm-none-eabi-gcc (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]
    Copyright (C) 2019 Free Software Foundation, Inc.avr-gcc also needs a -mmcu specified in order to link runtime libraries.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    ```

## 編譯過程



## 觀察
### 觀察一
初次編譯時發現，如預想的 `gcc` 編譯過程中的 symbol table 實在是無法理解 www，暫時不把他當成學習目標
但是在 `arm-none-eabi-gcc` 編譯過程中的 symbol table 卻比 `avr-gcc` 編譯過程中的 symbol table 簡單的多。
那就可以想像是不是 `avr-gcc` 多做了些什麼。

- 查閱 avr-libc User Manual
    [Memory Section](http://www.nongnu.org/avr-libc/user-manual/mem_sections.html)
    理解不同記憶體區段。








