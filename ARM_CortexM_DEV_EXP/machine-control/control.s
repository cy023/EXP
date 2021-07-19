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
	.file	"control.c"
	.text
	.align	1
	.global	gt
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gt, %function
gt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	ite	le
	movle	r0, #0
	movgt	r0, #1
	bx	lr
	.size	gt, .-gt
	.align	1
	.global	zero
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	zero, %function
zero:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
	.size	zero, .-zero
	.align	1
	.global	absdiff
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	absdiff, %function
absdiff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	ble	.L4
	subs	r0, r0, r1
	bx	lr
.L4:
	subs	r0, r1, r0
	bx	lr
	.size	absdiff, .-absdiff
	.align	1
	.global	absdiff_j
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	absdiff_j, %function
absdiff_j:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	bgt	.L7
	subs	r0, r1, r0
	bx	lr
.L7:
	subs	r0, r0, r1
.L8:
	bx	lr
	.size	absdiff_j, .-absdiff_j
	.align	1
	.global	absdiff_cm
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	absdiff_cm, %function
absdiff_cm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	subs	r2, r0, r1
	subs	r0, r1, r0
	cmp	r3, r1
	ble	.L9
	mov	r0, r2
.L9:
	bx	lr
	.size	absdiff_cm, .-absdiff_cm
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
