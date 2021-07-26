	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"recurse.c"
	.text
	.align	1
	.global	pcount_r
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_r, %function
pcount_r:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbnz	r0, .L8
	movs	r0, #0
	bx	lr
.L8:
	push	{r4, lr}
	and	r4, r0, #1
	lsrs	r0, r0, #1
	bl	pcount_r
	add	r0, r0, r4
	pop	{r4, pc}
	.size	pcount_r, .-pcount_r
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
