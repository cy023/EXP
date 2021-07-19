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
	.file	"switch.c"
	.text
	.align	1
	.global	switch_eg
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	switch_eg, %function
switch_eg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #1
	cmp	r0, #5
	bhi	.L8
	tbb	[pc, r0]
.L4:
	.byte	(.L7-.L4)/2
	.byte	(.L6-.L4)/2
	.byte	(.L9-.L4)/2
	.byte	(.L8-.L4)/2
	.byte	(.L3-.L4)/2
	.byte	(.L3-.L4)/2
	.p2align 1
.L7:
	mul	r0, r1, r2
	bx	lr
.L6:
	sdiv	r0, r1, r2
.L5:
	add	r0, r0, r2
	bx	lr
.L9:
	movs	r0, #1
	b	.L5
.L3:
	rsb	r0, r2, #1
	bx	lr
.L8:
	movs	r0, #2
	bx	lr
	.size	switch_eg, .-switch_eg
	.align	1
	.global	sparse_switch_eg
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sparse_switch_eg, %function
sparse_switch_eg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #300
	beq	.L17
	bgt	.L12
	cmp	r0, #100
	beq	.L13
	cmp	r0, #200
	bne	.L18
	sdiv	r0, r1, r2
	b	.L11
.L18:
	movs	r0, #2
	bx	lr
.L12:
	cmp	r0, #500
	beq	.L16
	cmp	r0, #600
	bne	.L19
.L16:
	rsb	r0, r2, #1
	bx	lr
.L19:
	movs	r0, #2
	bx	lr
.L13:
	mul	r0, r1, r2
	bx	lr
.L17:
	movs	r0, #1
.L11:
	add	r0, r0, r2
	bx	lr
	.size	sparse_switch_eg, .-sparse_switch_eg
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
