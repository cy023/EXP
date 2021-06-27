# Data Lab
###### tags: `CMU15-213`

- [ ] bitXor
- [x] tmin
- [ ] isTmax
- [x] allOddBits
- [x] negate
- [x] isAsciiDigit
- [ ] conditional
- [ ] isLessOrEqual
- [x] logicalNeg
- [ ] howManyBits
- [ ] float_twice
- [ ] float_i2f
- [ ] float_f2i

### bitXor
:::spoiler 不能用 `|` QQ
```c
int bitXor(int x, int y) {
  return ((x & ~y) | (~x & y));
}
```
:::

```c
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
  return ((x & ~y) | (~x & y));
}
```


### tmin
:::spoiler Stupid
```c
int tmin(void) {
  int x = 1;
  x = x << 31;
  return x;
}
```
:::

```c
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  return 1 << 31;
}
```

### isTmax
:::spoiler 不能用 `<<` QQ
```c
int isTmax(int x) {
  int tmax = ~(1 << 31);
  return !(x ^ tmax);
}
```
:::

```c
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 2
 */
int isTmax(int x) {
  int tmax = ~(1 << 31);
  return !(x ^ tmax);
}
```

:::info
- 心得 : 
    - 從第一題的 xor 運算得到靈感
        - `!(x ^ y)` 可以用來檢查，`x` 是否等於 `y`.
:::

### allOddBits
```c
/* 
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   Examples allOddBits(0xFFFFFFFD) = 0, allOddBits(0xAAAAAAAA) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int allOddBits(int x) {
  int res = x & (x >> 16);
  res &= (res >> 8);
  res &= (res >> 4);
  res &= (res >> 2);
  return (res & 0x2) >> 1;
}
```
:::info
- 心得 : 
    - 用重疊的概念把所有的奇數位濃縮在一位，以 8 bit 為例。
        - 將高 4 位與低 4 位作 `&` 運算
        ```c
            10 10 10 10          x
         &)       10 10 10 10    x >> 4
        ---------------------------------
            00 00 10 10          res
        ```
        - 將 2, 3 位與 0, 1 位作 `&` 運算
        ```c
            00 00 10 10          res
         &)    00 00 10 10       res >> 8
        ---------------------------------
            00 00 00 10          res
        - res 的第一個 bit 可以解讀成 1, 3, 5, 7 位的濃縮。
            如果 res 的第一個 bit 為 1 也代表 1, 3, 5, 7 位皆為 1。
        ```
:::

### negate
```c
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x + 1;
}
```
:::info
- 心得 : 
    - 基本二補數的正負數轉換。
:::

### isAsciiDigit
:::spoiler too much ops
```c
int isAsciiDigit(int x) {
  int res = 0;
  res += !(x ^ 0x30);
  res += !(x ^ 0x31);
  res += !(x ^ 0x32);
  res += !(x ^ 0x33);
  res += !(x ^ 0x34);
  res += !(x ^ 0x35);
  res += !(x ^ 0x36);
  res += !(x ^ 0x37);
  res += !(x ^ 0x38);
  res += !(x ^ 0x39);
  return res;
}
```
:::

```c
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  int res = 0;
  res += !((x >> 3) ^ 0x06);
  res += !(x ^ 0x38);
  res += !(x ^ 0x39);
  return res;
}
```
:::info
- 心得 : 
    - 一開使用窮舉法想要檢查所有的 case 結果運算子用太多。
    - 既然窮舉法過於費時，那就考慮先用排除法。
    - 使用排除法時誤用 `＆` 導致錯誤結果
        - eg. 用以下語句檢查 x ，想排除 x = 0b0011 1xxx 的可能 
            > !((x & 0xF8) ^ 0x30)
            
            (ps. `!(x ^ y)` 可以檢查 `x`, `y` 是否相等)
            結果變成高位元不記入檢查，可以用以下修正
            > !((x & 0xFFFFFFF8) ^ 0x30)

            可是題目禁止使用超過 8 bit 的常數。(Why 8 bit ?)
    - 改用平移修正前一點產生的錯誤。
        > res += !((x >> 3) ^ (0x30 >> 3));
:::

### conditional
```c
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  int res = x;
  return res;
}
```

### isLessOrEqual
```c
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {

  return 2;
}
```

### logicalNeg
```c
/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int logicalNeg(int x) {
  int res = x | (x >> 16);
  res |= (res >> 8);
  res |= (res >> 4);
  res |= (res >> 2);
  res |= (res >> 1);
  return (~res & 0x1);
}
```
:::info
- 心得 : 
    - 利用 `allOddBits` 用到的濃縮的概念，把所有的位元作 `|` 運算，濃縮到第零位，並取出結果。
:::

### howManyBits
```c
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
int howManyBits(int x) {
  int res = 1;
  res += (x >> 31) & 0x1;
  
  return res;
}
```

### float_twice
```c
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  return 2;
}
```

### float_i2f
```c
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  return 2;
}
```

### float_f2i
```c
/* 
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf) {
  return 2;
}
```