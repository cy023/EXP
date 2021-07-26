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
	.file	"incr.c"
	.text
	.align	1
	.global	incr
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	incr, %function
incr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	ldr	r0, [r0]
	add	r1, r1, r0
	str	r1, [r3]
	bx	lr
	.size	incr, .-incr
	.align	1
	.global	call_incr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	call_incr, %function
call_incr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	movw	r3, #15213
	str	r3, [sp, #4]
	movw	r1, #3000
	add	r0, sp, #4
	bl	incr
	ldr	r3, [sp, #4]
	add	r0, r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	call_incr, .-call_incr
	.align	1
	.global	call_incr2
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	call_incr2, %function
call_incr2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	mov	r4, r0
	movw	r3, #15213
	str	r3, [sp, #4]
	movw	r1, #3000
	add	r0, sp, #4
	bl	incr
	add	r0, r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	call_incr2, .-call_incr2
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
