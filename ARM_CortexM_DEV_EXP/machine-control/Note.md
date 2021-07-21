# machine-control

## control.c

### old style
```c
long absdiff(long x, long y)
{
    long result;
    if (x > y)
	    result = x-y;
    else
	    result = y-x;
    return result;
}
```

```asm
absdiff:
	cmp	r0, r1          # r0 : x, r1 : y
	ble	.L4
	subs	r0, r0, r1
	bx	lr
.L4:
	subs	r0, r1, r0
	bx	lr
```

### jump version
```c
long absdiff_j(long x, long y)
{
    long result;
    int ntest = x <= y;
    if (ntest) goto Else;
    result = x-y;
    goto Done;
 Else:
    result = y-x;
 Done:
    return result;
}
```

```asm
absdiff_j:
	cmp	r0, r1
	bgt	.L7
	subs	r0, r1, r0
	bx	lr
.L7:
	subs	r0, r0, r1
.L8:
	bx	lr
```

### conditional moves
兩個結果都先算出來，再判斷要回傳哪個結果。
`val = Test ? Then_expr : Else_expr;`
- ==注意==
    - Expensive computations (Bad performance)
        `val = Test(x) ? Hard1(x) : Hard2(x);`
        - 算出兩個結果都需要耗費很多時間反而失去優化的效果
        - 只有兩個結果都很好算的條件下才能得到優化的效果
    - Risky computations (unsafe)
        `val = p ? *p : 0;`
        - 兩者皆會計算
        - 小心會造成錯誤的操作 (eg. dereference null pointer)
    - Computations with side effects (illegal)
        `val = x > 0 ? x*=7 : x+=3;`
        - 兩者皆會計算
        - 小心會造成非預期的運算
```c
long absdiff_cm(long x, long y)
{
    long result;
    result = x-y;
    long eval = y-x;
    if (x <= y)
	    result = eval;
    return result;
}
```

```asm
absdiff_cm:
	mov	r3, r0          # r3 : x
	subs	r2, r0, r1  # r2 : result
	subs	r0, r1, r0  # r0 : eval
	cmp	r3, r1
	ble	.L9
	mov	r0, r2
.L9:
	bx	lr
```

## loop.c

### do-while version
[lsr{s} instruction](https://www.keil.com/support/man/docs/armasm/armasm_dom1361289876525.htm)
: `S` is an optional suffix. If `S` is specified, the condition flags are updated on the result of the operation.
```c
long pcount_do(unsigned long x)
{
    long result = 0;
    do {
        result += x & 0x1;
        x >>= 1;
    } while (x);
    return result;
}
```

```
pcount_do:
	mov	r3, r0          # r3 : x
	movs	r0, #0      # r0 : result
.L2:
	and	r2, r3, #1      # r2 = r3 & 0x1
	add	r0, r0, r2      # result += r2
	lsrs	r3, r3, #1  # r3 = r3 >> 1
	bne	.L2             # check Z flag is not 1
	bx	lr
```

### goto version
```c
long pcount_goto(unsigned long x)
{
    long result = 0;
 loop:
    result += x & 0x1;
    x >>= 1;
    if (x) goto loop;
    return result;
}
```
與 do-while version 一樣
```
pcount_goto:
	mov	r3, r0
	movs	r0, #0
.L4:
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	bne	.L4
	bx	lr
```

### while version
[CBZ and CBNZ](https://www.keil.com/support/man/docs/armasm/armasm_dom1361289867296.htm)
```c
long pcount_while(unsigned long x)
{
    long result = 0;
    while (x) {
        result += x & 0x1;
        x >>= 1;
    }
    return result;
}
```

```
pcount_while:
	mov	r3, r0          # r3 : x
	movs	r0, #0      # r0 : reslut
.L6:
	cbz	r3, .L8         # Compare and Branch on Zero
	and	r2, r3, #1      # r2 = r3 & 0x1
	add	r0, r0, r2      # reslut += r2
	lsrs	r3, r3, #1  # r3 = r3 >> 1
	b	.L6
.L8:
	bx	lr
```

### goto-do-while version
```c
long pcount_goto_dw(unsigned long x)
{
    long result = 0;
    if (!x)
        goto done;
 loop:
    result += x & 0x1;
    x >>= 1;
    if (x)
        goto loop;
 done:
    return result;
}
```

### goto-jtm version
```c
long pcount_goto_jtm(unsigned long x) {
    long result = 0;
    goto test;
 loop:
    result += x & 0x1;
    x >>= 1;
 test:
    if (x)
        goto loop;
    return result;
}

#define WSIZE 8*sizeof(unsigned long)
```

### for version
```c
long pcount_for(unsigned long x) {
    size_t i;
    long result = 0;
    for (i = 0; i < WSIZE; i++) {
        unsigned bit = (x >> i) & 0x1;
        result += bit;
    }
    return result;
}
```

### for goto down version
```c
long pcount_for_goto_dw(unsigned long x) {
    size_t i;
    long result = 0;
    i = 0;
    if (!(i < WSIZE))
        goto done;
 loop:
    {
        unsigned bit = (x >> i) & 0x1;
        result += bit;
    }
    i++;
    if (i < WSIZE)
        goto loop;
 done:
    return result;
}
```

### for goto jtm version
```c
long pcount_for_goto_jtm(unsigned long x) {
    size_t i;
    long result = 0;
    i = 0;
    goto test;
 loop:
    {
        unsigned bit = (x >> i) & 0x1;
        result += bit;
    }
    i++;
 test:
    if (i < WSIZE)
        goto loop;
    return result;
}
