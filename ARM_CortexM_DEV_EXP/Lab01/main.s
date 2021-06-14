	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.comm	global_uninit_var,4,4
	.global	global_init0_var
	.bss
	.align	2
	.type	global_init0_var, %object
	.size	global_init0_var, 4
global_init0_var:
	.space	4
	.global	global_init_var
	.data
	.align	2
	.type	global_init_var, %object
	.size	global_init_var, 4
global_init_var:
	.word	66
	.bss
	.align	2
global_static_uninit_var:
	.space	4
	.size	global_static_uninit_var, 4
	.align	2
global_static_init0_var:
	.space	4
	.size	global_static_init0_var, 4
	.data
	.align	2
	.type	global_static_init_var, %object
	.size	global_static_init_var, 4
global_static_init_var:
	.word	99
	.text
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #100
	str	r3, [fp, #-12]
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	main, .-main
	.data
	.align	2
	.type	local_static_init_var.4152, %object
	.size	local_static_init_var.4152, 4
local_static_init_var.4152:
	.word	77
	.bss
	.align	2
local_static_init0_var.4151:
	.space	4
	.size	local_static_init0_var.4151, 4
	.align	2
local_static_uninit_var.4150:
	.space	4
	.size	local_static_uninit_var.4150, 4
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
