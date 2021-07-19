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
	.file	"loop.c"
	.text
	.align	1
	.global	pcount_do
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_do, %function
pcount_do:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	movs	r0, #0
.L2:
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	bne	.L2
	bx	lr
	.size	pcount_do, .-pcount_do
	.align	1
	.global	pcount_goto
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_goto, %function
pcount_goto:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	movs	r0, #0
.L4:
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	bne	.L4
	bx	lr
	.size	pcount_goto, .-pcount_goto
	.align	1
	.global	pcount_while
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_while, %function
pcount_while:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	movs	r0, #0
.L6:
	cbz	r3, .L8
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	b	.L6
.L8:
	bx	lr
	.size	pcount_while, .-pcount_while
	.align	1
	.global	pcount_goto_dw
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_goto_dw, %function
pcount_goto_dw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L12
	movs	r0, #0
.L11:
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	bne	.L11
	bx	lr
.L12:
	movs	r0, #0
.L10:
	bx	lr
	.size	pcount_goto_dw, .-pcount_goto_dw
	.align	1
	.global	pcount_goto_jtm
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_goto_jtm, %function
pcount_goto_jtm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	movs	r0, #0
.L14:
	cbz	r3, .L13
	and	r2, r3, #1
	add	r0, r0, r2
	lsrs	r3, r3, #1
	b	.L14
.L13:
	bx	lr
	.size	pcount_goto_jtm, .-pcount_goto_jtm
	.align	1
	.global	pcount_for
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_for, %function
pcount_for:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	movs	r0, #0
	mov	r3, r0
.L17:
	cmp	r3, #31
	bhi	.L19
	lsr	r2, r1, r3
	and	r2, r2, #1
	add	r0, r0, r2
	adds	r3, r3, #1
	b	.L17
.L19:
	bx	lr
	.size	pcount_for, .-pcount_for
	.align	1
	.global	pcount_for_goto_dw
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_for_goto_dw, %function
pcount_for_goto_dw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	movs	r0, #0
	mov	r3, r0
.L21:
	lsr	r2, r1, r3
	and	r2, r2, #1
	add	r0, r0, r2
	adds	r3, r3, #1
	cmp	r3, #31
	bls	.L21
	bx	lr
.L22:
	.size	pcount_for_goto_dw, .-pcount_for_goto_dw
	.align	1
	.global	pcount_for_goto_jtm
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pcount_for_goto_jtm, %function
pcount_for_goto_jtm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, r0
	movs	r0, #0
	mov	r3, r0
.L24:
	cmp	r3, #31
	bhi	.L23
	lsr	r2, r1, r3
	and	r2, r2, #1
	add	r0, r0, r2
	adds	r3, r3, #1
	b	.L24
.L23:
	bx	lr
	.size	pcount_for_goto_jtm, .-pcount_for_goto_jtm
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
