// #include <stdlib.h>
typedef unsigned int size_t;

// popcount
// do-while version
long pcount_do(unsigned long x)
{
    long result = 0;
    do {
        result += x & 0x1;
        x >>= 1;
    } while (x);
    return result;
}

// popcount
// goto version
long pcount_goto(unsigned long x)
{
    long result = 0;
 loop:
    result += x & 0x1;
    x >>= 1;
    if (x) goto loop;
    return result;
}

// popcount
// while version
long pcount_while(unsigned long x)
{
    long result = 0;
    while (x) {
        result += x & 0x1;
        x >>= 1;
    }
    return result;
}

// popcount
// goto-do-while version
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

// popcount
// goto-jump_to_middle version
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

// popcount
// for version
long pcount_for(unsigned long x) {
    size_t i;
    long result = 0;
    for (i = 0; i < WSIZE; i++) {
        unsigned bit = (x >> i) & 0x1;
        result += bit;
    }
    return result;
}

// popcount
// for-goto-do-while version
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

// popcount
// for-goto-jump-to-middle version
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
