# Lab02
觀察 if-else 判斷式編譯後的組合語言

### C code
- if_else_conditopn
    ```c
    int if_else_condition(int val)
    {
        if (val == 1)
            val = 0;
        else if (val == 3)
            val = 0;
        else if (val == 5)
            val = 0;
        else
            val = 1;
        return val;
    }
    ```
- main
    ```c
    int main()
    {
        int a = 10;
        a = if_else_condition(a);

        return 0;
    }
    ```

### Assembly Code
- if_else_condition
    ```asm
    if_else_condition:
        @ args = 0, pretend = 0, frame = 8
        @ frame_needed = 1, uses_anonymous_args = 0
        @ link register save eliminated.
        push	{r7}
        sub	sp, sp, #12
        add	r7, sp, #0
        str	r0, [r7, #4]
        ldr	r3, [r7, #4]
        cmp	r3, #1
        bne	.L2
        movs	r3, #0
        str	r3, [r7, #4]
        b	.L3
    .L2:
        ldr	r3, [r7, #4]
        cmp	r3, #3
        bne	.L4
        movs	r3, #0
        str	r3, [r7, #4]
        b	.L3
    .L4:
        ldr	r3, [r7, #4]
        cmp	r3, #5
        bne	.L5
        movs	r3, #0
        str	r3, [r7, #4]
        b	.L3
    .L5:
        movs	r3, #1
        str	r3, [r7, #4]
    .L3:
        ldr	r3, [r7, #4]
        mov	r0, r3
        adds	r7, r7, #12
        mov	sp, r7
        @ sp needed
        pop	{r7}
        bx	lr
    ```
- main
    ```asm
    push	{r7, lr}
        sub	sp, sp, #8
        add	r7, sp, #0
        movs	r3, #10
        str	r3, [r7, #4]
        ldr	r0, [r7, #4]
        bl	if_else_condition
        str	r0, [r7, #4]
        movs	r3, #0
        mov	r0, r3
        adds	r7, r7, #8
        mov	sp, r7
        @ sp needed
        pop	{r7, pc}
    ```