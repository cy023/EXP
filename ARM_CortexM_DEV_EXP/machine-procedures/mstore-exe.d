
mstore-exe.elf:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8002:	bf00      	nop
    8004:	bcf8      	pop	{r3, r4, r5, r6, r7}
    8006:	bc08      	pop	{r3}
    8008:	469e      	mov	lr, r3
    800a:	4770      	bx	lr

Disassembly of section .text:

00008040 <register_fini>:
    8040:	4b02      	ldr	r3, [pc, #8]	; (804c <register_fini+0xc>)
    8042:	b113      	cbz	r3, 804a <register_fini+0xa>
    8044:	4802      	ldr	r0, [pc, #8]	; (8050 <register_fini+0x10>)
    8046:	f000 b8b9 	b.w	81bc <atexit>
    804a:	4770      	bx	lr
    804c:	00000000 	.word	0x00000000
    8050:	000081e9 	.word	0x000081e9

00008054 <deregister_tm_clones>:
    8054:	4803      	ldr	r0, [pc, #12]	; (8064 <deregister_tm_clones+0x10>)
    8056:	4b04      	ldr	r3, [pc, #16]	; (8068 <deregister_tm_clones+0x14>)
    8058:	4283      	cmp	r3, r0
    805a:	d002      	beq.n	8062 <deregister_tm_clones+0xe>
    805c:	4b03      	ldr	r3, [pc, #12]	; (806c <deregister_tm_clones+0x18>)
    805e:	b103      	cbz	r3, 8062 <deregister_tm_clones+0xe>
    8060:	4718      	bx	r3
    8062:	4770      	bx	lr
    8064:	0002004c 	.word	0x0002004c
    8068:	0002004c 	.word	0x0002004c
    806c:	00000000 	.word	0x00000000

00008070 <register_tm_clones>:
    8070:	4805      	ldr	r0, [pc, #20]	; (8088 <register_tm_clones+0x18>)
    8072:	4906      	ldr	r1, [pc, #24]	; (808c <register_tm_clones+0x1c>)
    8074:	1a0b      	subs	r3, r1, r0
    8076:	0fd9      	lsrs	r1, r3, #31
    8078:	eb01 01a3 	add.w	r1, r1, r3, asr #2
    807c:	1049      	asrs	r1, r1, #1
    807e:	d002      	beq.n	8086 <register_tm_clones+0x16>
    8080:	4b03      	ldr	r3, [pc, #12]	; (8090 <register_tm_clones+0x20>)
    8082:	b103      	cbz	r3, 8086 <register_tm_clones+0x16>
    8084:	4718      	bx	r3
    8086:	4770      	bx	lr
    8088:	0002004c 	.word	0x0002004c
    808c:	0002004c 	.word	0x0002004c
    8090:	00000000 	.word	0x00000000

00008094 <__do_global_dtors_aux>:
    8094:	b510      	push	{r4, lr}
    8096:	4c06      	ldr	r4, [pc, #24]	; (80b0 <__do_global_dtors_aux+0x1c>)
    8098:	7823      	ldrb	r3, [r4, #0]
    809a:	b943      	cbnz	r3, 80ae <__do_global_dtors_aux+0x1a>
    809c:	f7ff ffda 	bl	8054 <deregister_tm_clones>
    80a0:	4b04      	ldr	r3, [pc, #16]	; (80b4 <__do_global_dtors_aux+0x20>)
    80a2:	b113      	cbz	r3, 80aa <__do_global_dtors_aux+0x16>
    80a4:	4804      	ldr	r0, [pc, #16]	; (80b8 <__do_global_dtors_aux+0x24>)
    80a6:	f3af 8000 	nop.w
    80aa:	2301      	movs	r3, #1
    80ac:	7023      	strb	r3, [r4, #0]
    80ae:	bd10      	pop	{r4, pc}
    80b0:	0002004c 	.word	0x0002004c
    80b4:	00000000 	.word	0x00000000
    80b8:	0000f688 	.word	0x0000f688

000080bc <frame_dummy>:
    80bc:	b508      	push	{r3, lr}
    80be:	4b04      	ldr	r3, [pc, #16]	; (80d0 <frame_dummy+0x14>)
    80c0:	b11b      	cbz	r3, 80ca <frame_dummy+0xe>
    80c2:	4904      	ldr	r1, [pc, #16]	; (80d4 <frame_dummy+0x18>)
    80c4:	4804      	ldr	r0, [pc, #16]	; (80d8 <frame_dummy+0x1c>)
    80c6:	f3af 8000 	nop.w
    80ca:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    80ce:	e7cf      	b.n	8070 <register_tm_clones>
    80d0:	00000000 	.word	0x00000000
    80d4:	00020050 	.word	0x00020050
    80d8:	0000f688 	.word	0x0000f688

000080dc <_stack_init>:
    80dc:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
    80e0:	4770      	bx	lr
    80e2:	bf00      	nop

000080e4 <_mainCRTStartup>:
    80e4:	4b15      	ldr	r3, [pc, #84]	; (813c <_mainCRTStartup+0x58>)
    80e6:	2b00      	cmp	r3, #0
    80e8:	bf08      	it	eq
    80ea:	4b11      	ldreq	r3, [pc, #68]	; (8130 <_mainCRTStartup+0x4c>)
    80ec:	469d      	mov	sp, r3
    80ee:	f7ff fff5 	bl	80dc <_stack_init>
    80f2:	2100      	movs	r1, #0
    80f4:	468b      	mov	fp, r1
    80f6:	460f      	mov	r7, r1
    80f8:	4811      	ldr	r0, [pc, #68]	; (8140 <_mainCRTStartup+0x5c>)
    80fa:	4a12      	ldr	r2, [pc, #72]	; (8144 <_mainCRTStartup+0x60>)
    80fc:	1a12      	subs	r2, r2, r0
    80fe:	f000 f8b1 	bl	8264 <memset>
    8102:	4b0c      	ldr	r3, [pc, #48]	; (8134 <_mainCRTStartup+0x50>)
    8104:	2b00      	cmp	r3, #0
    8106:	d000      	beq.n	810a <_mainCRTStartup+0x26>
    8108:	4798      	blx	r3
    810a:	4b0b      	ldr	r3, [pc, #44]	; (8138 <_mainCRTStartup+0x54>)
    810c:	2b00      	cmp	r3, #0
    810e:	d000      	beq.n	8112 <_mainCRTStartup+0x2e>
    8110:	4798      	blx	r3
    8112:	2000      	movs	r0, #0
    8114:	2100      	movs	r1, #0
    8116:	0004      	movs	r4, r0
    8118:	000d      	movs	r5, r1
    811a:	480b      	ldr	r0, [pc, #44]	; (8148 <_mainCRTStartup+0x64>)
    811c:	f000 f84e 	bl	81bc <atexit>
    8120:	f000 f87c 	bl	821c <__libc_init_array>
    8124:	0020      	movs	r0, r4
    8126:	0029      	movs	r1, r5
    8128:	f000 f832 	bl	8190 <main>
    812c:	f000 f84c 	bl	81c8 <exit>
    8130:	00080000 	.word	0x00080000
	...
    8140:	0002004c 	.word	0x0002004c
    8144:	000200a8 	.word	0x000200a8
    8148:	000081e9 	.word	0x000081e9

0000814c <multstore>:
    814c:	b580      	push	{r7, lr}
    814e:	b086      	sub	sp, #24
    8150:	af00      	add	r7, sp, #0
    8152:	60f8      	str	r0, [r7, #12]
    8154:	60b9      	str	r1, [r7, #8]
    8156:	607a      	str	r2, [r7, #4]
    8158:	68b9      	ldr	r1, [r7, #8]
    815a:	68f8      	ldr	r0, [r7, #12]
    815c:	f000 f808 	bl	8170 <mult2>
    8160:	6178      	str	r0, [r7, #20]
    8162:	687b      	ldr	r3, [r7, #4]
    8164:	697a      	ldr	r2, [r7, #20]
    8166:	601a      	str	r2, [r3, #0]
    8168:	bf00      	nop
    816a:	3718      	adds	r7, #24
    816c:	46bd      	mov	sp, r7
    816e:	bd80      	pop	{r7, pc}

00008170 <mult2>:
    8170:	b480      	push	{r7}
    8172:	b085      	sub	sp, #20
    8174:	af00      	add	r7, sp, #0
    8176:	6078      	str	r0, [r7, #4]
    8178:	6039      	str	r1, [r7, #0]
    817a:	687b      	ldr	r3, [r7, #4]
    817c:	683a      	ldr	r2, [r7, #0]
    817e:	fb02 f303 	mul.w	r3, r2, r3
    8182:	60fb      	str	r3, [r7, #12]
    8184:	68fb      	ldr	r3, [r7, #12]
    8186:	4618      	mov	r0, r3
    8188:	3714      	adds	r7, #20
    818a:	46bd      	mov	sp, r7
    818c:	bc80      	pop	{r7}
    818e:	4770      	bx	lr

00008190 <main>:
    8190:	b580      	push	{r7, lr}
    8192:	b082      	sub	sp, #8
    8194:	af00      	add	r7, sp, #0
    8196:	1d3b      	adds	r3, r7, #4
    8198:	461a      	mov	r2, r3
    819a:	2103      	movs	r1, #3
    819c:	2002      	movs	r0, #2
    819e:	f7ff ffd5 	bl	814c <multstore>
    81a2:	687b      	ldr	r3, [r7, #4]
    81a4:	4619      	mov	r1, r3
    81a6:	4804      	ldr	r0, [pc, #16]	; (81b8 <main+0x28>)
    81a8:	f000 f8bc 	bl	8324 <printf>
    81ac:	2300      	movs	r3, #0
    81ae:	4618      	mov	r0, r3
    81b0:	3708      	adds	r7, #8
    81b2:	46bd      	mov	sp, r7
    81b4:	bd80      	pop	{r7, pc}
    81b6:	bf00      	nop
    81b8:	0000f2e0 	.word	0x0000f2e0

000081bc <atexit>:
    81bc:	2300      	movs	r3, #0
    81be:	4601      	mov	r1, r0
    81c0:	461a      	mov	r2, r3
    81c2:	4618      	mov	r0, r3
    81c4:	f001 bbe2 	b.w	998c <__register_exitproc>

000081c8 <exit>:
    81c8:	b508      	push	{r3, lr}
    81ca:	2100      	movs	r1, #0
    81cc:	4604      	mov	r4, r0
    81ce:	f001 fc11 	bl	99f4 <__call_exitprocs>
    81d2:	4b04      	ldr	r3, [pc, #16]	; (81e4 <exit+0x1c>)
    81d4:	6818      	ldr	r0, [r3, #0]
    81d6:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    81d8:	b103      	cbz	r3, 81dc <exit+0x14>
    81da:	4798      	blx	r3
    81dc:	4620      	mov	r0, r4
    81de:	f007 f875 	bl	f2cc <_exit>
    81e2:	bf00      	nop
    81e4:	0000f2f0 	.word	0x0000f2f0

000081e8 <__libc_fini_array>:
    81e8:	b538      	push	{r3, r4, r5, lr}
    81ea:	4c0a      	ldr	r4, [pc, #40]	; (8214 <__libc_fini_array+0x2c>)
    81ec:	4d0a      	ldr	r5, [pc, #40]	; (8218 <__libc_fini_array+0x30>)
    81ee:	1b64      	subs	r4, r4, r5
    81f0:	10a4      	asrs	r4, r4, #2
    81f2:	d00a      	beq.n	820a <__libc_fini_array+0x22>
    81f4:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
    81f8:	3b01      	subs	r3, #1
    81fa:	eb05 0583 	add.w	r5, r5, r3, lsl #2
    81fe:	3c01      	subs	r4, #1
    8200:	f855 3904 	ldr.w	r3, [r5], #-4
    8204:	4798      	blx	r3
    8206:	2c00      	cmp	r4, #0
    8208:	d1f9      	bne.n	81fe <__libc_fini_array+0x16>
    820a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    820e:	f007 b85f 	b.w	f2d0 <_fini>
    8212:	bf00      	nop
    8214:	0001f698 	.word	0x0001f698
    8218:	0001f694 	.word	0x0001f694

0000821c <__libc_init_array>:
    821c:	b570      	push	{r4, r5, r6, lr}
    821e:	4e0d      	ldr	r6, [pc, #52]	; (8254 <__libc_init_array+0x38>)
    8220:	4d0d      	ldr	r5, [pc, #52]	; (8258 <__libc_init_array+0x3c>)
    8222:	1b76      	subs	r6, r6, r5
    8224:	10b6      	asrs	r6, r6, #2
    8226:	d006      	beq.n	8236 <__libc_init_array+0x1a>
    8228:	2400      	movs	r4, #0
    822a:	3401      	adds	r4, #1
    822c:	f855 3b04 	ldr.w	r3, [r5], #4
    8230:	4798      	blx	r3
    8232:	42a6      	cmp	r6, r4
    8234:	d1f9      	bne.n	822a <__libc_init_array+0xe>
    8236:	4e09      	ldr	r6, [pc, #36]	; (825c <__libc_init_array+0x40>)
    8238:	4d09      	ldr	r5, [pc, #36]	; (8260 <__libc_init_array+0x44>)
    823a:	1b76      	subs	r6, r6, r5
    823c:	f7ff fee0 	bl	8000 <_init>
    8240:	10b6      	asrs	r6, r6, #2
    8242:	d006      	beq.n	8252 <__libc_init_array+0x36>
    8244:	2400      	movs	r4, #0
    8246:	3401      	adds	r4, #1
    8248:	f855 3b04 	ldr.w	r3, [r5], #4
    824c:	4798      	blx	r3
    824e:	42a6      	cmp	r6, r4
    8250:	d1f9      	bne.n	8246 <__libc_init_array+0x2a>
    8252:	bd70      	pop	{r4, r5, r6, pc}
    8254:	0001f68c 	.word	0x0001f68c
    8258:	0001f68c 	.word	0x0001f68c
    825c:	0001f694 	.word	0x0001f694
    8260:	0001f68c 	.word	0x0001f68c

00008264 <memset>:
    8264:	b4f0      	push	{r4, r5, r6, r7}
    8266:	0786      	lsls	r6, r0, #30
    8268:	d046      	beq.n	82f8 <memset+0x94>
    826a:	1e54      	subs	r4, r2, #1
    826c:	2a00      	cmp	r2, #0
    826e:	d03c      	beq.n	82ea <memset+0x86>
    8270:	b2ca      	uxtb	r2, r1
    8272:	4603      	mov	r3, r0
    8274:	e002      	b.n	827c <memset+0x18>
    8276:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
    827a:	d336      	bcc.n	82ea <memset+0x86>
    827c:	f803 2b01 	strb.w	r2, [r3], #1
    8280:	079d      	lsls	r5, r3, #30
    8282:	d1f8      	bne.n	8276 <memset+0x12>
    8284:	2c03      	cmp	r4, #3
    8286:	d929      	bls.n	82dc <memset+0x78>
    8288:	b2cd      	uxtb	r5, r1
    828a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
    828e:	2c0f      	cmp	r4, #15
    8290:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
    8294:	d933      	bls.n	82fe <memset+0x9a>
    8296:	f1a4 0610 	sub.w	r6, r4, #16
    829a:	0936      	lsrs	r6, r6, #4
    829c:	f103 0720 	add.w	r7, r3, #32
    82a0:	eb07 1706 	add.w	r7, r7, r6, lsl #4
    82a4:	f103 0210 	add.w	r2, r3, #16
    82a8:	e942 5504 	strd	r5, r5, [r2, #-16]
    82ac:	e942 5502 	strd	r5, r5, [r2, #-8]
    82b0:	3210      	adds	r2, #16
    82b2:	42ba      	cmp	r2, r7
    82b4:	d1f8      	bne.n	82a8 <memset+0x44>
    82b6:	1c72      	adds	r2, r6, #1
    82b8:	f014 0f0c 	tst.w	r4, #12
    82bc:	eb03 1202 	add.w	r2, r3, r2, lsl #4
    82c0:	f004 060f 	and.w	r6, r4, #15
    82c4:	d013      	beq.n	82ee <memset+0x8a>
    82c6:	1f33      	subs	r3, r6, #4
    82c8:	f023 0303 	bic.w	r3, r3, #3
    82cc:	3304      	adds	r3, #4
    82ce:	4413      	add	r3, r2
    82d0:	f842 5b04 	str.w	r5, [r2], #4
    82d4:	4293      	cmp	r3, r2
    82d6:	d1fb      	bne.n	82d0 <memset+0x6c>
    82d8:	f006 0403 	and.w	r4, r6, #3
    82dc:	b12c      	cbz	r4, 82ea <memset+0x86>
    82de:	b2c9      	uxtb	r1, r1
    82e0:	441c      	add	r4, r3
    82e2:	f803 1b01 	strb.w	r1, [r3], #1
    82e6:	429c      	cmp	r4, r3
    82e8:	d1fb      	bne.n	82e2 <memset+0x7e>
    82ea:	bcf0      	pop	{r4, r5, r6, r7}
    82ec:	4770      	bx	lr
    82ee:	4634      	mov	r4, r6
    82f0:	4613      	mov	r3, r2
    82f2:	2c00      	cmp	r4, #0
    82f4:	d1f3      	bne.n	82de <memset+0x7a>
    82f6:	e7f8      	b.n	82ea <memset+0x86>
    82f8:	4614      	mov	r4, r2
    82fa:	4603      	mov	r3, r0
    82fc:	e7c2      	b.n	8284 <memset+0x20>
    82fe:	461a      	mov	r2, r3
    8300:	4626      	mov	r6, r4
    8302:	e7e0      	b.n	82c6 <memset+0x62>

00008304 <_printf_r>:
    8304:	b40e      	push	{r1, r2, r3}
    8306:	b500      	push	{lr}
    8308:	b082      	sub	sp, #8
    830a:	ab03      	add	r3, sp, #12
    830c:	6881      	ldr	r1, [r0, #8]
    830e:	f853 2b04 	ldr.w	r2, [r3], #4
    8312:	9301      	str	r3, [sp, #4]
    8314:	f000 f81a 	bl	834c <_vfprintf_r>
    8318:	b002      	add	sp, #8
    831a:	f85d eb04 	ldr.w	lr, [sp], #4
    831e:	b003      	add	sp, #12
    8320:	4770      	bx	lr
    8322:	bf00      	nop

00008324 <printf>:
    8324:	b40f      	push	{r0, r1, r2, r3}
    8326:	b500      	push	{lr}
    8328:	4907      	ldr	r1, [pc, #28]	; (8348 <printf+0x24>)
    832a:	b083      	sub	sp, #12
    832c:	ab04      	add	r3, sp, #16
    832e:	6808      	ldr	r0, [r1, #0]
    8330:	f853 2b04 	ldr.w	r2, [r3], #4
    8334:	6881      	ldr	r1, [r0, #8]
    8336:	9301      	str	r3, [sp, #4]
    8338:	f000 f808 	bl	834c <_vfprintf_r>
    833c:	b003      	add	sp, #12
    833e:	f85d eb04 	ldr.w	lr, [sp], #4
    8342:	b004      	add	sp, #16
    8344:	4770      	bx	lr
    8346:	bf00      	nop
    8348:	0001f6a0 	.word	0x0001f6a0

0000834c <_vfprintf_r>:
    834c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8350:	b0bf      	sub	sp, #252	; 0xfc
    8352:	461c      	mov	r4, r3
    8354:	9108      	str	r1, [sp, #32]
    8356:	4691      	mov	r9, r2
    8358:	4605      	mov	r5, r0
    835a:	900c      	str	r0, [sp, #48]	; 0x30
    835c:	f002 ff06 	bl	b16c <_localeconv_r>
    8360:	6803      	ldr	r3, [r0, #0]
    8362:	9315      	str	r3, [sp, #84]	; 0x54
    8364:	4618      	mov	r0, r3
    8366:	f004 f84b 	bl	c400 <strlen>
    836a:	940d      	str	r4, [sp, #52]	; 0x34
    836c:	9013      	str	r0, [sp, #76]	; 0x4c
    836e:	b11d      	cbz	r5, 8378 <_vfprintf_r+0x2c>
    8370:	6bab      	ldr	r3, [r5, #56]	; 0x38
    8372:	2b00      	cmp	r3, #0
    8374:	f000 8356 	beq.w	8a24 <_vfprintf_r+0x6d8>
    8378:	9908      	ldr	r1, [sp, #32]
    837a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
    837e:	b293      	uxth	r3, r2
    8380:	049e      	lsls	r6, r3, #18
    8382:	4608      	mov	r0, r1
    8384:	d407      	bmi.n	8396 <_vfprintf_r+0x4a>
    8386:	6e49      	ldr	r1, [r1, #100]	; 0x64
    8388:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
    838c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    8390:	8183      	strh	r3, [r0, #12]
    8392:	6641      	str	r1, [r0, #100]	; 0x64
    8394:	b29b      	uxth	r3, r3
    8396:	071d      	lsls	r5, r3, #28
    8398:	f140 80d0 	bpl.w	853c <_vfprintf_r+0x1f0>
    839c:	9a08      	ldr	r2, [sp, #32]
    839e:	6912      	ldr	r2, [r2, #16]
    83a0:	2a00      	cmp	r2, #0
    83a2:	f000 80cb 	beq.w	853c <_vfprintf_r+0x1f0>
    83a6:	f003 031a 	and.w	r3, r3, #26
    83aa:	2b0a      	cmp	r3, #10
    83ac:	f000 80d4 	beq.w	8558 <_vfprintf_r+0x20c>
    83b0:	2100      	movs	r1, #0
    83b2:	2200      	movs	r2, #0
    83b4:	2300      	movs	r3, #0
    83b6:	e9cd 1210 	strd	r1, r2, [sp, #64]	; 0x40
    83ba:	9312      	str	r3, [sp, #72]	; 0x48
    83bc:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
    83c0:	9314      	str	r3, [sp, #80]	; 0x50
    83c2:	9316      	str	r3, [sp, #88]	; 0x58
    83c4:	9309      	str	r3, [sp, #36]	; 0x24
    83c6:	ab2e      	add	r3, sp, #184	; 0xb8
    83c8:	9321      	str	r3, [sp, #132]	; 0x84
    83ca:	469a      	mov	sl, r3
    83cc:	f899 3000 	ldrb.w	r3, [r9]
    83d0:	2b00      	cmp	r3, #0
    83d2:	f000 80dd 	beq.w	8590 <_vfprintf_r+0x244>
    83d6:	2b25      	cmp	r3, #37	; 0x25
    83d8:	f000 86b2 	beq.w	9140 <_vfprintf_r+0xdf4>
    83dc:	464d      	mov	r5, r9
    83de:	e003      	b.n	83e8 <_vfprintf_r+0x9c>
    83e0:	2b25      	cmp	r3, #37	; 0x25
    83e2:	f000 80c7 	beq.w	8574 <_vfprintf_r+0x228>
    83e6:	4625      	mov	r5, r4
    83e8:	786b      	ldrb	r3, [r5, #1]
    83ea:	1c6c      	adds	r4, r5, #1
    83ec:	2b00      	cmp	r3, #0
    83ee:	d1f7      	bne.n	83e0 <_vfprintf_r+0x94>
    83f0:	ebb4 0609 	subs.w	r6, r4, r9
    83f4:	f000 80cc 	beq.w	8590 <_vfprintf_r+0x244>
    83f8:	e9dd 3222 	ldrd	r3, r2, [sp, #136]	; 0x88
    83fc:	3301      	adds	r3, #1
    83fe:	4432      	add	r2, r6
    8400:	2b07      	cmp	r3, #7
    8402:	f8ca 9000 	str.w	r9, [sl]
    8406:	f8ca 6004 	str.w	r6, [sl, #4]
    840a:	e9cd 3222 	strd	r3, r2, [sp, #136]	; 0x88
    840e:	f300 80b6 	bgt.w	857e <_vfprintf_r+0x232>
    8412:	f10a 0a08 	add.w	sl, sl, #8
    8416:	9a09      	ldr	r2, [sp, #36]	; 0x24
    8418:	786b      	ldrb	r3, [r5, #1]
    841a:	4432      	add	r2, r6
    841c:	9209      	str	r2, [sp, #36]	; 0x24
    841e:	2b00      	cmp	r3, #0
    8420:	f000 80b6 	beq.w	8590 <_vfprintf_r+0x244>
    8424:	2300      	movs	r3, #0
    8426:	7867      	ldrb	r7, [r4, #1]
    8428:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
    842c:	461a      	mov	r2, r3
    842e:	4619      	mov	r1, r3
    8430:	930a      	str	r3, [sp, #40]	; 0x28
    8432:	469b      	mov	fp, r3
    8434:	f104 0901 	add.w	r9, r4, #1
    8438:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
    843c:	f109 0901 	add.w	r9, r9, #1
    8440:	f1a7 0320 	sub.w	r3, r7, #32
    8444:	2b58      	cmp	r3, #88	; 0x58
    8446:	f200 82f1 	bhi.w	8a2c <_vfprintf_r+0x6e0>
    844a:	e8df f013 	tbh	[pc, r3, lsl #1]
    844e:	02c9      	.short	0x02c9
    8450:	02ef02ef 	.word	0x02ef02ef
    8454:	02ef02d1 	.word	0x02ef02d1
    8458:	02ef02ef 	.word	0x02ef02ef
    845c:	02ef02ef 	.word	0x02ef02ef
    8460:	022202ef 	.word	0x022202ef
    8464:	02ef02ab 	.word	0x02ef02ab
    8468:	02b002a6 	.word	0x02b002a6
    846c:	00c002ef 	.word	0x00c002ef
    8470:	00b100b1 	.word	0x00b100b1
    8474:	00b100b1 	.word	0x00b100b1
    8478:	00b100b1 	.word	0x00b100b1
    847c:	00b100b1 	.word	0x00b100b1
    8480:	02ef00b1 	.word	0x02ef00b1
    8484:	02ef02ef 	.word	0x02ef02ef
    8488:	02ef02ef 	.word	0x02ef02ef
    848c:	02ef02ef 	.word	0x02ef02ef
    8490:	02ef02ef 	.word	0x02ef02ef
    8494:	028c02ef 	.word	0x028c02ef
    8498:	02ef024f 	.word	0x02ef024f
    849c:	02ef024f 	.word	0x02ef024f
    84a0:	02ef02ef 	.word	0x02ef02ef
    84a4:	024502ef 	.word	0x024502ef
    84a8:	02ef02ef 	.word	0x02ef02ef
    84ac:	02ef0068 	.word	0x02ef0068
    84b0:	02ef02ef 	.word	0x02ef02ef
    84b4:	02ef02ef 	.word	0x02ef02ef
    84b8:	02ef0059 	.word	0x02ef0059
    84bc:	022d02ef 	.word	0x022d02ef
    84c0:	02ef02ef 	.word	0x02ef02ef
    84c4:	02ef02ef 	.word	0x02ef02ef
    84c8:	02ef02ef 	.word	0x02ef02ef
    84cc:	02ef02ef 	.word	0x02ef02ef
    84d0:	02ef02ef 	.word	0x02ef02ef
    84d4:	016d01a7 	.word	0x016d01a7
    84d8:	024f024f 	.word	0x024f024f
    84dc:	0168024f 	.word	0x0168024f
    84e0:	02ef016d 	.word	0x02ef016d
    84e4:	015b02ef 	.word	0x015b02ef
    84e8:	014502ef 	.word	0x014502ef
    84ec:	0115006a 	.word	0x0115006a
    84f0:	02ef0110 	.word	0x02ef0110
    84f4:	02ef00e6 	.word	0x02ef00e6
    84f8:	02ef005b 	.word	0x02ef005b
    84fc:	00c502ef 	.word	0x00c502ef
    8500:	f04b 0b10 	orr.w	fp, fp, #16
    8504:	f01b 0f20 	tst.w	fp, #32
    8508:	f000 8281 	beq.w	8a0e <_vfprintf_r+0x6c2>
    850c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    850e:	3407      	adds	r4, #7
    8510:	f024 0307 	bic.w	r3, r4, #7
    8514:	e8f3 4502 	ldrd	r4, r5, [r3], #8
    8518:	930d      	str	r3, [sp, #52]	; 0x34
    851a:	2301      	movs	r3, #1
    851c:	e0bc      	b.n	8698 <_vfprintf_r+0x34c>
    851e:	f04b 0b10 	orr.w	fp, fp, #16
    8522:	f01b 0320 	ands.w	r3, fp, #32
    8526:	f000 8268 	beq.w	89fa <_vfprintf_r+0x6ae>
    852a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    852c:	3407      	adds	r4, #7
    852e:	f024 0307 	bic.w	r3, r4, #7
    8532:	e8f3 4502 	ldrd	r4, r5, [r3], #8
    8536:	930d      	str	r3, [sp, #52]	; 0x34
    8538:	2300      	movs	r3, #0
    853a:	e0ad      	b.n	8698 <_vfprintf_r+0x34c>
    853c:	9908      	ldr	r1, [sp, #32]
    853e:	980c      	ldr	r0, [sp, #48]	; 0x30
    8540:	f001 f9bc 	bl	98bc <__swsetup_r>
    8544:	2800      	cmp	r0, #0
    8546:	f041 810b 	bne.w	9760 <_vfprintf_r+0x1414>
    854a:	9b08      	ldr	r3, [sp, #32]
    854c:	899b      	ldrh	r3, [r3, #12]
    854e:	f003 031a 	and.w	r3, r3, #26
    8552:	2b0a      	cmp	r3, #10
    8554:	f47f af2c 	bne.w	83b0 <_vfprintf_r+0x64>
    8558:	9b08      	ldr	r3, [sp, #32]
    855a:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
    855e:	2b00      	cmp	r3, #0
    8560:	f6ff af26 	blt.w	83b0 <_vfprintf_r+0x64>
    8564:	4623      	mov	r3, r4
    8566:	464a      	mov	r2, r9
    8568:	9908      	ldr	r1, [sp, #32]
    856a:	980c      	ldr	r0, [sp, #48]	; 0x30
    856c:	f001 f970 	bl	9850 <__sbprintf>
    8570:	9009      	str	r0, [sp, #36]	; 0x24
    8572:	e019      	b.n	85a8 <_vfprintf_r+0x25c>
    8574:	ebb4 0609 	subs.w	r6, r4, r9
    8578:	f43f af54 	beq.w	8424 <_vfprintf_r+0xd8>
    857c:	e73c      	b.n	83f8 <_vfprintf_r+0xac>
    857e:	aa21      	add	r2, sp, #132	; 0x84
    8580:	9908      	ldr	r1, [sp, #32]
    8582:	980c      	ldr	r0, [sp, #48]	; 0x30
    8584:	f003 ffe6 	bl	c554 <__sprint_r>
    8588:	b948      	cbnz	r0, 859e <_vfprintf_r+0x252>
    858a:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    858e:	e742      	b.n	8416 <_vfprintf_r+0xca>
    8590:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    8592:	b123      	cbz	r3, 859e <_vfprintf_r+0x252>
    8594:	980c      	ldr	r0, [sp, #48]	; 0x30
    8596:	9908      	ldr	r1, [sp, #32]
    8598:	aa21      	add	r2, sp, #132	; 0x84
    859a:	f003 ffdb 	bl	c554 <__sprint_r>
    859e:	9b08      	ldr	r3, [sp, #32]
    85a0:	899b      	ldrh	r3, [r3, #12]
    85a2:	065a      	lsls	r2, r3, #25
    85a4:	f101 80dc 	bmi.w	9760 <_vfprintf_r+0x1414>
    85a8:	9809      	ldr	r0, [sp, #36]	; 0x24
    85aa:	b03f      	add	sp, #252	; 0xfc
    85ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    85b0:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
    85b4:	2000      	movs	r0, #0
    85b6:	f819 7b01 	ldrb.w	r7, [r9], #1
    85ba:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    85be:	eb03 0040 	add.w	r0, r3, r0, lsl #1
    85c2:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
    85c6:	2b09      	cmp	r3, #9
    85c8:	d9f5      	bls.n	85b6 <_vfprintf_r+0x26a>
    85ca:	900a      	str	r0, [sp, #40]	; 0x28
    85cc:	e738      	b.n	8440 <_vfprintf_r+0xf4>
    85ce:	f04b 0b80 	orr.w	fp, fp, #128	; 0x80
    85d2:	f899 7000 	ldrb.w	r7, [r9]
    85d6:	e731      	b.n	843c <_vfprintf_r+0xf0>
    85d8:	2a00      	cmp	r2, #0
    85da:	f041 80a9 	bne.w	9730 <_vfprintf_r+0x13e4>
    85de:	4bc1      	ldr	r3, [pc, #772]	; (88e4 <_vfprintf_r+0x598>)
    85e0:	9314      	str	r3, [sp, #80]	; 0x50
    85e2:	f01b 0f20 	tst.w	fp, #32
    85e6:	f000 8168 	beq.w	88ba <_vfprintf_r+0x56e>
    85ea:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    85ec:	3407      	adds	r4, #7
    85ee:	f024 0307 	bic.w	r3, r4, #7
    85f2:	e8f3 4502 	ldrd	r4, r5, [r3], #8
    85f6:	930d      	str	r3, [sp, #52]	; 0x34
    85f8:	f01b 0f01 	tst.w	fp, #1
    85fc:	f000 8227 	beq.w	8a4e <_vfprintf_r+0x702>
    8600:	ea54 0305 	orrs.w	r3, r4, r5
    8604:	f000 8223 	beq.w	8a4e <_vfprintf_r+0x702>
    8608:	2330      	movs	r3, #48	; 0x30
    860a:	f88d 3068 	strb.w	r3, [sp, #104]	; 0x68
    860e:	f88d 7069 	strb.w	r7, [sp, #105]	; 0x69
    8612:	f04b 0b02 	orr.w	fp, fp, #2
    8616:	2302      	movs	r3, #2
    8618:	e03e      	b.n	8698 <_vfprintf_r+0x34c>
    861a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    861c:	f854 3b04 	ldr.w	r3, [r4], #4
    8620:	930e      	str	r3, [sp, #56]	; 0x38
    8622:	2500      	movs	r5, #0
    8624:	f88d 5067 	strb.w	r5, [sp, #103]	; 0x67
    8628:	2b00      	cmp	r3, #0
    862a:	f000 867c 	beq.w	9326 <_vfprintf_r+0xfda>
    862e:	1c71      	adds	r1, r6, #1
    8630:	f000 8750 	beq.w	94d4 <_vfprintf_r+0x1188>
    8634:	4632      	mov	r2, r6
    8636:	4629      	mov	r1, r5
    8638:	980e      	ldr	r0, [sp, #56]	; 0x38
    863a:	f003 f8c9 	bl	b7d0 <memchr>
    863e:	2800      	cmp	r0, #0
    8640:	f001 8058 	beq.w	96f4 <_vfprintf_r+0x13a8>
    8644:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    8646:	1ac3      	subs	r3, r0, r3
    8648:	930b      	str	r3, [sp, #44]	; 0x2c
    864a:	462e      	mov	r6, r5
    864c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    8650:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
    8654:	940d      	str	r4, [sp, #52]	; 0x34
    8656:	f8cd b018 	str.w	fp, [sp, #24]
    865a:	9307      	str	r3, [sp, #28]
    865c:	960f      	str	r6, [sp, #60]	; 0x3c
    865e:	f1b8 0f00 	cmp.w	r8, #0
    8662:	f000 80ad 	beq.w	87c0 <_vfprintf_r+0x474>
    8666:	9b07      	ldr	r3, [sp, #28]
    8668:	3301      	adds	r3, #1
    866a:	9307      	str	r3, [sp, #28]
    866c:	e0a8      	b.n	87c0 <_vfprintf_r+0x474>
    866e:	f04b 0b20 	orr.w	fp, fp, #32
    8672:	f899 7000 	ldrb.w	r7, [r9]
    8676:	e6e1      	b.n	843c <_vfprintf_r+0xf0>
    8678:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    867a:	f854 3b04 	ldr.w	r3, [r4], #4
    867e:	940d      	str	r4, [sp, #52]	; 0x34
    8680:	f647 0230 	movw	r2, #30768	; 0x7830
    8684:	461c      	mov	r4, r3
    8686:	4b97      	ldr	r3, [pc, #604]	; (88e4 <_vfprintf_r+0x598>)
    8688:	9314      	str	r3, [sp, #80]	; 0x50
    868a:	f8ad 2068 	strh.w	r2, [sp, #104]	; 0x68
    868e:	f04b 0b02 	orr.w	fp, fp, #2
    8692:	2500      	movs	r5, #0
    8694:	2302      	movs	r3, #2
    8696:	2778      	movs	r7, #120	; 0x78
    8698:	f04f 0800 	mov.w	r8, #0
    869c:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
    86a0:	1c72      	adds	r2, r6, #1
    86a2:	f000 81d8 	beq.w	8a56 <_vfprintf_r+0x70a>
    86a6:	f02b 0280 	bic.w	r2, fp, #128	; 0x80
    86aa:	9206      	str	r2, [sp, #24]
    86ac:	ea54 0205 	orrs.w	r2, r4, r5
    86b0:	f040 81cf 	bne.w	8a52 <_vfprintf_r+0x706>
    86b4:	2e00      	cmp	r6, #0
    86b6:	f040 840d 	bne.w	8ed4 <_vfprintf_r+0xb88>
    86ba:	2b00      	cmp	r3, #0
    86bc:	f040 84d7 	bne.w	906e <_vfprintf_r+0xd22>
    86c0:	f01b 0301 	ands.w	r3, fp, #1
    86c4:	930b      	str	r3, [sp, #44]	; 0x2c
    86c6:	f000 8544 	beq.w	9152 <_vfprintf_r+0xe06>
    86ca:	2330      	movs	r3, #48	; 0x30
    86cc:	f88d 30b7 	strb.w	r3, [sp, #183]	; 0xb7
    86d0:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
    86d4:	930e      	str	r3, [sp, #56]	; 0x38
    86d6:	e059      	b.n	878c <_vfprintf_r+0x440>
    86d8:	2a00      	cmp	r2, #0
    86da:	f041 8031 	bne.w	9740 <_vfprintf_r+0x13f4>
    86de:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    86e0:	f01b 0f20 	tst.w	fp, #32
    86e4:	f852 3b04 	ldr.w	r3, [r2], #4
    86e8:	920d      	str	r2, [sp, #52]	; 0x34
    86ea:	f040 8536 	bne.w	915a <_vfprintf_r+0xe0e>
    86ee:	f01b 0f10 	tst.w	fp, #16
    86f2:	f040 8651 	bne.w	9398 <_vfprintf_r+0x104c>
    86f6:	f01b 0f40 	tst.w	fp, #64	; 0x40
    86fa:	f000 864d 	beq.w	9398 <_vfprintf_r+0x104c>
    86fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
    8700:	801a      	strh	r2, [r3, #0]
    8702:	e663      	b.n	83cc <_vfprintf_r+0x80>
    8704:	f899 7000 	ldrb.w	r7, [r9]
    8708:	2f6c      	cmp	r7, #108	; 0x6c
    870a:	bf03      	ittte	eq
    870c:	f899 7001 	ldrbeq.w	r7, [r9, #1]
    8710:	f04b 0b20 	orreq.w	fp, fp, #32
    8714:	f109 0901 	addeq.w	r9, r9, #1
    8718:	f04b 0b10 	orrne.w	fp, fp, #16
    871c:	e68e      	b.n	843c <_vfprintf_r+0xf0>
    871e:	f04b 0b40 	orr.w	fp, fp, #64	; 0x40
    8722:	f899 7000 	ldrb.w	r7, [r9]
    8726:	e689      	b.n	843c <_vfprintf_r+0xf0>
    8728:	2a00      	cmp	r2, #0
    872a:	f041 8011 	bne.w	9750 <_vfprintf_r+0x1404>
    872e:	f01b 0f20 	tst.w	fp, #32
    8732:	f000 8121 	beq.w	8978 <_vfprintf_r+0x62c>
    8736:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    8738:	3407      	adds	r4, #7
    873a:	f024 0307 	bic.w	r3, r4, #7
    873e:	4619      	mov	r1, r3
    8740:	e8f1 2302 	ldrd	r2, r3, [r1], #8
    8744:	910d      	str	r1, [sp, #52]	; 0x34
    8746:	4614      	mov	r4, r2
    8748:	461d      	mov	r5, r3
    874a:	2a00      	cmp	r2, #0
    874c:	f173 0300 	sbcs.w	r3, r3, #0
    8750:	f2c0 84ec 	blt.w	912c <_vfprintf_r+0xde0>
    8754:	1c73      	adds	r3, r6, #1
    8756:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
    875a:	d008      	beq.n	876e <_vfprintf_r+0x422>
    875c:	f02b 0380 	bic.w	r3, fp, #128	; 0x80
    8760:	9306      	str	r3, [sp, #24]
    8762:	ea54 0305 	orrs.w	r3, r4, r5
    8766:	f000 847f 	beq.w	9068 <_vfprintf_r+0xd1c>
    876a:	f8dd b018 	ldr.w	fp, [sp, #24]
    876e:	2d00      	cmp	r5, #0
    8770:	bf08      	it	eq
    8772:	2c0a      	cmpeq	r4, #10
    8774:	f080 844f 	bcs.w	9016 <_vfprintf_r+0xcca>
    8778:	2301      	movs	r3, #1
    877a:	3430      	adds	r4, #48	; 0x30
    877c:	930b      	str	r3, [sp, #44]	; 0x2c
    877e:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
    8782:	f88d 40b7 	strb.w	r4, [sp, #183]	; 0xb7
    8786:	f8cd b018 	str.w	fp, [sp, #24]
    878a:	930e      	str	r3, [sp, #56]	; 0x38
    878c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    878e:	42b3      	cmp	r3, r6
    8790:	bfb8      	it	lt
    8792:	4633      	movlt	r3, r6
    8794:	9307      	str	r3, [sp, #28]
    8796:	2300      	movs	r3, #0
    8798:	930f      	str	r3, [sp, #60]	; 0x3c
    879a:	e760      	b.n	865e <_vfprintf_r+0x312>
    879c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    879e:	2300      	movs	r3, #0
    87a0:	f854 2b04 	ldr.w	r2, [r4], #4
    87a4:	f88d 2090 	strb.w	r2, [sp, #144]	; 0x90
    87a8:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
    87ac:	2201      	movs	r2, #1
    87ae:	ab24      	add	r3, sp, #144	; 0x90
    87b0:	9207      	str	r2, [sp, #28]
    87b2:	940d      	str	r4, [sp, #52]	; 0x34
    87b4:	920b      	str	r2, [sp, #44]	; 0x2c
    87b6:	930e      	str	r3, [sp, #56]	; 0x38
    87b8:	2600      	movs	r6, #0
    87ba:	f8cd b018 	str.w	fp, [sp, #24]
    87be:	960f      	str	r6, [sp, #60]	; 0x3c
    87c0:	9b06      	ldr	r3, [sp, #24]
    87c2:	f013 0302 	ands.w	r3, r3, #2
    87c6:	d002      	beq.n	87ce <_vfprintf_r+0x482>
    87c8:	9a07      	ldr	r2, [sp, #28]
    87ca:	3202      	adds	r2, #2
    87cc:	9207      	str	r2, [sp, #28]
    87ce:	9a06      	ldr	r2, [sp, #24]
    87d0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    87d2:	f012 0b84 	ands.w	fp, r2, #132	; 0x84
    87d6:	d105      	bne.n	87e4 <_vfprintf_r+0x498>
    87d8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    87da:	9907      	ldr	r1, [sp, #28]
    87dc:	1a55      	subs	r5, r2, r1
    87de:	2d00      	cmp	r5, #0
    87e0:	f300 82e8 	bgt.w	8db4 <_vfprintf_r+0xa68>
    87e4:	f89d 2067 	ldrb.w	r2, [sp, #103]	; 0x67
    87e8:	b172      	cbz	r2, 8808 <_vfprintf_r+0x4bc>
    87ea:	9a22      	ldr	r2, [sp, #136]	; 0x88
    87ec:	3201      	adds	r2, #1
    87ee:	3401      	adds	r4, #1
    87f0:	f10d 0067 	add.w	r0, sp, #103	; 0x67
    87f4:	2101      	movs	r1, #1
    87f6:	2a07      	cmp	r2, #7
    87f8:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    87fc:	e9ca 0100 	strd	r0, r1, [sl]
    8800:	f300 8315 	bgt.w	8e2e <_vfprintf_r+0xae2>
    8804:	f10a 0a08 	add.w	sl, sl, #8
    8808:	b16b      	cbz	r3, 8826 <_vfprintf_r+0x4da>
    880a:	9b22      	ldr	r3, [sp, #136]	; 0x88
    880c:	3301      	adds	r3, #1
    880e:	3402      	adds	r4, #2
    8810:	a91a      	add	r1, sp, #104	; 0x68
    8812:	2202      	movs	r2, #2
    8814:	2b07      	cmp	r3, #7
    8816:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
    881a:	e9ca 1200 	strd	r1, r2, [sl]
    881e:	f300 8314 	bgt.w	8e4a <_vfprintf_r+0xafe>
    8822:	f10a 0a08 	add.w	sl, sl, #8
    8826:	f1bb 0f80 	cmp.w	fp, #128	; 0x80
    882a:	f000 819e 	beq.w	8b6a <_vfprintf_r+0x81e>
    882e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    8830:	1af6      	subs	r6, r6, r3
    8832:	2e00      	cmp	r6, #0
    8834:	f300 81e2 	bgt.w	8bfc <_vfprintf_r+0x8b0>
    8838:	9b06      	ldr	r3, [sp, #24]
    883a:	05db      	lsls	r3, r3, #23
    883c:	f100 8138 	bmi.w	8ab0 <_vfprintf_r+0x764>
    8840:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8842:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    8844:	f8ca 2000 	str.w	r2, [sl]
    8848:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    884a:	f8ca 2004 	str.w	r2, [sl, #4]
    884e:	3301      	adds	r3, #1
    8850:	4414      	add	r4, r2
    8852:	2b07      	cmp	r3, #7
    8854:	9423      	str	r4, [sp, #140]	; 0x8c
    8856:	9322      	str	r3, [sp, #136]	; 0x88
    8858:	f300 824e 	bgt.w	8cf8 <_vfprintf_r+0x9ac>
    885c:	f10a 0a08 	add.w	sl, sl, #8
    8860:	9b06      	ldr	r3, [sp, #24]
    8862:	0759      	lsls	r1, r3, #29
    8864:	d505      	bpl.n	8872 <_vfprintf_r+0x526>
    8866:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    8868:	9a07      	ldr	r2, [sp, #28]
    886a:	1a9d      	subs	r5, r3, r2
    886c:	2d00      	cmp	r5, #0
    886e:	f300 82f8 	bgt.w	8e62 <_vfprintf_r+0xb16>
    8872:	e9dd 3209 	ldrd	r3, r2, [sp, #36]	; 0x24
    8876:	9907      	ldr	r1, [sp, #28]
    8878:	428a      	cmp	r2, r1
    887a:	bfac      	ite	ge
    887c:	189b      	addge	r3, r3, r2
    887e:	185b      	addlt	r3, r3, r1
    8880:	9309      	str	r3, [sp, #36]	; 0x24
    8882:	2c00      	cmp	r4, #0
    8884:	f040 81fe 	bne.w	8c84 <_vfprintf_r+0x938>
    8888:	2300      	movs	r3, #0
    888a:	9322      	str	r3, [sp, #136]	; 0x88
    888c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8890:	e59c      	b.n	83cc <_vfprintf_r+0x80>
    8892:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    8894:	f899 7000 	ldrb.w	r7, [r9]
    8898:	f853 0b04 	ldr.w	r0, [r3], #4
    889c:	900a      	str	r0, [sp, #40]	; 0x28
    889e:	2800      	cmp	r0, #0
    88a0:	f2c0 8513 	blt.w	92ca <_vfprintf_r+0xf7e>
    88a4:	930d      	str	r3, [sp, #52]	; 0x34
    88a6:	e5c9      	b.n	843c <_vfprintf_r+0xf0>
    88a8:	2a00      	cmp	r2, #0
    88aa:	f040 8755 	bne.w	9758 <_vfprintf_r+0x140c>
    88ae:	4b0e      	ldr	r3, [pc, #56]	; (88e8 <_vfprintf_r+0x59c>)
    88b0:	9314      	str	r3, [sp, #80]	; 0x50
    88b2:	f01b 0f20 	tst.w	fp, #32
    88b6:	f47f ae98 	bne.w	85ea <_vfprintf_r+0x29e>
    88ba:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    88bc:	f01b 0f10 	tst.w	fp, #16
    88c0:	f853 4b04 	ldr.w	r4, [r3], #4
    88c4:	930d      	str	r3, [sp, #52]	; 0x34
    88c6:	f040 8426 	bne.w	9116 <_vfprintf_r+0xdca>
    88ca:	f01b 0f40 	tst.w	fp, #64	; 0x40
    88ce:	f000 8422 	beq.w	9116 <_vfprintf_r+0xdca>
    88d2:	b2a4      	uxth	r4, r4
    88d4:	2500      	movs	r5, #0
    88d6:	e68f      	b.n	85f8 <_vfprintf_r+0x2ac>
    88d8:	f04b 0b08 	orr.w	fp, fp, #8
    88dc:	f899 7000 	ldrb.w	r7, [r9]
    88e0:	e5ac      	b.n	843c <_vfprintf_r+0xf0>
    88e2:	bf00      	nop
    88e4:	0000f338 	.word	0x0000f338
    88e8:	0000f324 	.word	0x0000f324
    88ec:	2a00      	cmp	r2, #0
    88ee:	f040 8723 	bne.w	9738 <_vfprintf_r+0x13ec>
    88f2:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    88f4:	3407      	adds	r4, #7
    88f6:	f024 0307 	bic.w	r3, r4, #7
    88fa:	e8f3 1202 	ldrd	r1, r2, [r3], #8
    88fe:	f022 4400 	bic.w	r4, r2, #2147483648	; 0x80000000
    8902:	e9cd 1210 	strd	r1, r2, [sp, #64]	; 0x40
    8906:	930d      	str	r3, [sp, #52]	; 0x34
    8908:	460d      	mov	r5, r1
    890a:	4608      	mov	r0, r1
    890c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    8910:	4621      	mov	r1, r4
    8912:	4bc1      	ldr	r3, [pc, #772]	; (8c18 <_vfprintf_r+0x8cc>)
    8914:	f006 fad4 	bl	eec0 <__aeabi_dcmpun>
    8918:	2800      	cmp	r0, #0
    891a:	f040 8425 	bne.w	9168 <_vfprintf_r+0xe1c>
    891e:	4628      	mov	r0, r5
    8920:	4621      	mov	r1, r4
    8922:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    8926:	4bbc      	ldr	r3, [pc, #752]	; (8c18 <_vfprintf_r+0x8cc>)
    8928:	f006 faac 	bl	ee84 <__aeabi_dcmple>
    892c:	2800      	cmp	r0, #0
    892e:	f040 841b 	bne.w	9168 <_vfprintf_r+0xe1c>
    8932:	2200      	movs	r2, #0
    8934:	2300      	movs	r3, #0
    8936:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
    893a:	f006 fa99 	bl	ee70 <__aeabi_dcmplt>
    893e:	2800      	cmp	r0, #0
    8940:	f040 863d 	bne.w	95be <_vfprintf_r+0x1272>
    8944:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
    8948:	4ab4      	ldr	r2, [pc, #720]	; (8c1c <_vfprintf_r+0x8d0>)
    894a:	4bb5      	ldr	r3, [pc, #724]	; (8c20 <_vfprintf_r+0x8d4>)
    894c:	2103      	movs	r1, #3
    894e:	2600      	movs	r6, #0
    8950:	f02b 0080 	bic.w	r0, fp, #128	; 0x80
    8954:	2f47      	cmp	r7, #71	; 0x47
    8956:	bfc8      	it	gt
    8958:	461a      	movgt	r2, r3
    895a:	9107      	str	r1, [sp, #28]
    895c:	9006      	str	r0, [sp, #24]
    895e:	920e      	str	r2, [sp, #56]	; 0x38
    8960:	910b      	str	r1, [sp, #44]	; 0x2c
    8962:	960f      	str	r6, [sp, #60]	; 0x3c
    8964:	e67b      	b.n	865e <_vfprintf_r+0x312>
    8966:	2a00      	cmp	r2, #0
    8968:	f040 86ee 	bne.w	9748 <_vfprintf_r+0x13fc>
    896c:	f04b 0b10 	orr.w	fp, fp, #16
    8970:	f01b 0f20 	tst.w	fp, #32
    8974:	f47f aedf 	bne.w	8736 <_vfprintf_r+0x3ea>
    8978:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    897a:	f01b 0f10 	tst.w	fp, #16
    897e:	f853 4b04 	ldr.w	r4, [r3], #4
    8982:	930d      	str	r3, [sp, #52]	; 0x34
    8984:	f040 83ca 	bne.w	911c <_vfprintf_r+0xdd0>
    8988:	f01b 0f40 	tst.w	fp, #64	; 0x40
    898c:	f000 83c6 	beq.w	911c <_vfprintf_r+0xdd0>
    8990:	b224      	sxth	r4, r4
    8992:	17e5      	asrs	r5, r4, #31
    8994:	4622      	mov	r2, r4
    8996:	462b      	mov	r3, r5
    8998:	e6d7      	b.n	874a <_vfprintf_r+0x3fe>
    899a:	f899 7000 	ldrb.w	r7, [r9]
    899e:	f04b 0b04 	orr.w	fp, fp, #4
    89a2:	e54b      	b.n	843c <_vfprintf_r+0xf0>
    89a4:	f899 7000 	ldrb.w	r7, [r9]
    89a8:	2201      	movs	r2, #1
    89aa:	212b      	movs	r1, #43	; 0x2b
    89ac:	e546      	b.n	843c <_vfprintf_r+0xf0>
    89ae:	4648      	mov	r0, r9
    89b0:	f810 7b01 	ldrb.w	r7, [r0], #1
    89b4:	2f2a      	cmp	r7, #42	; 0x2a
    89b6:	f000 872c 	beq.w	9812 <_vfprintf_r+0x14c6>
    89ba:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
    89be:	2b09      	cmp	r3, #9
    89c0:	4681      	mov	r9, r0
    89c2:	f04f 0600 	mov.w	r6, #0
    89c6:	f63f ad3b 	bhi.w	8440 <_vfprintf_r+0xf4>
    89ca:	f819 7b01 	ldrb.w	r7, [r9], #1
    89ce:	eb06 0686 	add.w	r6, r6, r6, lsl #2
    89d2:	eb03 0646 	add.w	r6, r3, r6, lsl #1
    89d6:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
    89da:	2b09      	cmp	r3, #9
    89dc:	d9f5      	bls.n	89ca <_vfprintf_r+0x67e>
    89de:	e52f      	b.n	8440 <_vfprintf_r+0xf4>
    89e0:	f899 7000 	ldrb.w	r7, [r9]
    89e4:	2900      	cmp	r1, #0
    89e6:	f47f ad29 	bne.w	843c <_vfprintf_r+0xf0>
    89ea:	2201      	movs	r2, #1
    89ec:	2120      	movs	r1, #32
    89ee:	e525      	b.n	843c <_vfprintf_r+0xf0>
    89f0:	f04b 0b01 	orr.w	fp, fp, #1
    89f4:	f899 7000 	ldrb.w	r7, [r9]
    89f8:	e520      	b.n	843c <_vfprintf_r+0xf0>
    89fa:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    89fc:	f852 4b04 	ldr.w	r4, [r2], #4
    8a00:	920d      	str	r2, [sp, #52]	; 0x34
    8a02:	f01b 0210 	ands.w	r2, fp, #16
    8a06:	f000 8458 	beq.w	92ba <_vfprintf_r+0xf6e>
    8a0a:	2500      	movs	r5, #0
    8a0c:	e644      	b.n	8698 <_vfprintf_r+0x34c>
    8a0e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    8a10:	f01b 0f10 	tst.w	fp, #16
    8a14:	f853 4b04 	ldr.w	r4, [r3], #4
    8a18:	930d      	str	r3, [sp, #52]	; 0x34
    8a1a:	f000 8446 	beq.w	92aa <_vfprintf_r+0xf5e>
    8a1e:	2500      	movs	r5, #0
    8a20:	2301      	movs	r3, #1
    8a22:	e639      	b.n	8698 <_vfprintf_r+0x34c>
    8a24:	980c      	ldr	r0, [sp, #48]	; 0x30
    8a26:	f002 f9e5 	bl	adf4 <__sinit>
    8a2a:	e4a5      	b.n	8378 <_vfprintf_r+0x2c>
    8a2c:	2a00      	cmp	r2, #0
    8a2e:	f040 85df 	bne.w	95f0 <_vfprintf_r+0x12a4>
    8a32:	2f00      	cmp	r7, #0
    8a34:	f43f adac 	beq.w	8590 <_vfprintf_r+0x244>
    8a38:	2300      	movs	r3, #0
    8a3a:	2201      	movs	r2, #1
    8a3c:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
    8a40:	ab24      	add	r3, sp, #144	; 0x90
    8a42:	9207      	str	r2, [sp, #28]
    8a44:	f88d 7090 	strb.w	r7, [sp, #144]	; 0x90
    8a48:	920b      	str	r2, [sp, #44]	; 0x2c
    8a4a:	930e      	str	r3, [sp, #56]	; 0x38
    8a4c:	e6b4      	b.n	87b8 <_vfprintf_r+0x46c>
    8a4e:	2302      	movs	r3, #2
    8a50:	e622      	b.n	8698 <_vfprintf_r+0x34c>
    8a52:	f8dd b018 	ldr.w	fp, [sp, #24]
    8a56:	2b01      	cmp	r3, #1
    8a58:	f43f ae89 	beq.w	876e <_vfprintf_r+0x422>
    8a5c:	2b02      	cmp	r3, #2
    8a5e:	f000 8241 	beq.w	8ee4 <_vfprintf_r+0xb98>
    8a62:	a92e      	add	r1, sp, #184	; 0xb8
    8a64:	e000      	b.n	8a68 <_vfprintf_r+0x71c>
    8a66:	4611      	mov	r1, r2
    8a68:	08e2      	lsrs	r2, r4, #3
    8a6a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
    8a6e:	08e8      	lsrs	r0, r5, #3
    8a70:	f004 0307 	and.w	r3, r4, #7
    8a74:	4605      	mov	r5, r0
    8a76:	4614      	mov	r4, r2
    8a78:	3330      	adds	r3, #48	; 0x30
    8a7a:	ea54 0005 	orrs.w	r0, r4, r5
    8a7e:	f801 3c01 	strb.w	r3, [r1, #-1]
    8a82:	f101 32ff 	add.w	r2, r1, #4294967295	; 0xffffffff
    8a86:	d1ee      	bne.n	8a66 <_vfprintf_r+0x71a>
    8a88:	f01b 0f01 	tst.w	fp, #1
    8a8c:	920e      	str	r2, [sp, #56]	; 0x38
    8a8e:	f000 82e4 	beq.w	905a <_vfprintf_r+0xd0e>
    8a92:	2b30      	cmp	r3, #48	; 0x30
    8a94:	f000 8452 	beq.w	933c <_vfprintf_r+0xff0>
    8a98:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    8a9a:	f8cd b018 	str.w	fp, [sp, #24]
    8a9e:	2330      	movs	r3, #48	; 0x30
    8aa0:	3902      	subs	r1, #2
    8aa2:	f802 3c01 	strb.w	r3, [r2, #-1]
    8aa6:	ab2e      	add	r3, sp, #184	; 0xb8
    8aa8:	1a5b      	subs	r3, r3, r1
    8aaa:	930b      	str	r3, [sp, #44]	; 0x2c
    8aac:	910e      	str	r1, [sp, #56]	; 0x38
    8aae:	e66d      	b.n	878c <_vfprintf_r+0x440>
    8ab0:	2f65      	cmp	r7, #101	; 0x65
    8ab2:	f340 812d 	ble.w	8d10 <_vfprintf_r+0x9c4>
    8ab6:	2200      	movs	r2, #0
    8ab8:	2300      	movs	r3, #0
    8aba:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
    8abe:	f006 f9cd 	bl	ee5c <__aeabi_dcmpeq>
    8ac2:	2800      	cmp	r0, #0
    8ac4:	f000 8227 	beq.w	8f16 <_vfprintf_r+0xbca>
    8ac8:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8aca:	4a56      	ldr	r2, [pc, #344]	; (8c24 <_vfprintf_r+0x8d8>)
    8acc:	f8ca 2000 	str.w	r2, [sl]
    8ad0:	3301      	adds	r3, #1
    8ad2:	3401      	adds	r4, #1
    8ad4:	2201      	movs	r2, #1
    8ad6:	2b07      	cmp	r3, #7
    8ad8:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
    8adc:	f8ca 2004 	str.w	r2, [sl, #4]
    8ae0:	f300 84a4 	bgt.w	942c <_vfprintf_r+0x10e0>
    8ae4:	f10a 0a08 	add.w	sl, sl, #8
    8ae8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    8aea:	9a12      	ldr	r2, [sp, #72]	; 0x48
    8aec:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8aee:	4293      	cmp	r3, r2
    8af0:	f280 8329 	bge.w	9146 <_vfprintf_r+0xdfa>
    8af4:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8af6:	9a15      	ldr	r2, [sp, #84]	; 0x54
    8af8:	f8ca 2000 	str.w	r2, [sl]
    8afc:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    8afe:	f8ca 2004 	str.w	r2, [sl, #4]
    8b02:	3301      	adds	r3, #1
    8b04:	4414      	add	r4, r2
    8b06:	2b07      	cmp	r3, #7
    8b08:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
    8b0c:	f300 83fe 	bgt.w	930c <_vfprintf_r+0xfc0>
    8b10:	f10a 0a08 	add.w	sl, sl, #8
    8b14:	9b12      	ldr	r3, [sp, #72]	; 0x48
    8b16:	1e5d      	subs	r5, r3, #1
    8b18:	2d00      	cmp	r5, #0
    8b1a:	f77f aea1 	ble.w	8860 <_vfprintf_r+0x514>
    8b1e:	2d10      	cmp	r5, #16
    8b20:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8b22:	f8df b104 	ldr.w	fp, [pc, #260]	; 8c28 <_vfprintf_r+0x8dc>
    8b26:	f340 8477 	ble.w	9418 <_vfprintf_r+0x10cc>
    8b2a:	2610      	movs	r6, #16
    8b2c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
    8b2e:	f8dd 8020 	ldr.w	r8, [sp, #32]
    8b32:	e005      	b.n	8b40 <_vfprintf_r+0x7f4>
    8b34:	f10a 0a08 	add.w	sl, sl, #8
    8b38:	3d10      	subs	r5, #16
    8b3a:	2d10      	cmp	r5, #16
    8b3c:	f340 846c 	ble.w	9418 <_vfprintf_r+0x10cc>
    8b40:	3201      	adds	r2, #1
    8b42:	3410      	adds	r4, #16
    8b44:	2a07      	cmp	r2, #7
    8b46:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8b4a:	e9ca b600 	strd	fp, r6, [sl]
    8b4e:	ddf1      	ble.n	8b34 <_vfprintf_r+0x7e8>
    8b50:	aa21      	add	r2, sp, #132	; 0x84
    8b52:	4641      	mov	r1, r8
    8b54:	4638      	mov	r0, r7
    8b56:	f003 fcfd 	bl	c554 <__sprint_r>
    8b5a:	2800      	cmp	r0, #0
    8b5c:	f47f ad1f 	bne.w	859e <_vfprintf_r+0x252>
    8b60:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    8b64:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8b68:	e7e6      	b.n	8b38 <_vfprintf_r+0x7ec>
    8b6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    8b6c:	9a07      	ldr	r2, [sp, #28]
    8b6e:	1a9d      	subs	r5, r3, r2
    8b70:	2d00      	cmp	r5, #0
    8b72:	f77f ae5c 	ble.w	882e <_vfprintf_r+0x4e2>
    8b76:	2d10      	cmp	r5, #16
    8b78:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8b7a:	f8df b0ac 	ldr.w	fp, [pc, #172]	; 8c28 <_vfprintf_r+0x8dc>
    8b7e:	dd2d      	ble.n	8bdc <_vfprintf_r+0x890>
    8b80:	4658      	mov	r0, fp
    8b82:	4653      	mov	r3, sl
    8b84:	4621      	mov	r1, r4
    8b86:	46ca      	mov	sl, r9
    8b88:	46bb      	mov	fp, r7
    8b8a:	46b1      	mov	r9, r6
    8b8c:	f04f 0810 	mov.w	r8, #16
    8b90:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    8b92:	9e08      	ldr	r6, [sp, #32]
    8b94:	4607      	mov	r7, r0
    8b96:	e004      	b.n	8ba2 <_vfprintf_r+0x856>
    8b98:	3d10      	subs	r5, #16
    8b9a:	2d10      	cmp	r5, #16
    8b9c:	f103 0308 	add.w	r3, r3, #8
    8ba0:	dd15      	ble.n	8bce <_vfprintf_r+0x882>
    8ba2:	3201      	adds	r2, #1
    8ba4:	3110      	adds	r1, #16
    8ba6:	2a07      	cmp	r2, #7
    8ba8:	e9cd 2122 	strd	r2, r1, [sp, #136]	; 0x88
    8bac:	e9c3 7800 	strd	r7, r8, [r3]
    8bb0:	ddf2      	ble.n	8b98 <_vfprintf_r+0x84c>
    8bb2:	aa21      	add	r2, sp, #132	; 0x84
    8bb4:	4631      	mov	r1, r6
    8bb6:	4620      	mov	r0, r4
    8bb8:	f003 fccc 	bl	c554 <__sprint_r>
    8bbc:	2800      	cmp	r0, #0
    8bbe:	f47f acee 	bne.w	859e <_vfprintf_r+0x252>
    8bc2:	3d10      	subs	r5, #16
    8bc4:	2d10      	cmp	r5, #16
    8bc6:	e9dd 2122 	ldrd	r2, r1, [sp, #136]	; 0x88
    8bca:	ab2e      	add	r3, sp, #184	; 0xb8
    8bcc:	dce9      	bgt.n	8ba2 <_vfprintf_r+0x856>
    8bce:	464e      	mov	r6, r9
    8bd0:	46d1      	mov	r9, sl
    8bd2:	469a      	mov	sl, r3
    8bd4:	463b      	mov	r3, r7
    8bd6:	460c      	mov	r4, r1
    8bd8:	465f      	mov	r7, fp
    8bda:	469b      	mov	fp, r3
    8bdc:	3201      	adds	r2, #1
    8bde:	442c      	add	r4, r5
    8be0:	2a07      	cmp	r2, #7
    8be2:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8be6:	e9ca b500 	strd	fp, r5, [sl]
    8bea:	f300 842b 	bgt.w	9444 <_vfprintf_r+0x10f8>
    8bee:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    8bf0:	1af6      	subs	r6, r6, r3
    8bf2:	2e00      	cmp	r6, #0
    8bf4:	f10a 0a08 	add.w	sl, sl, #8
    8bf8:	f77f ae1e 	ble.w	8838 <_vfprintf_r+0x4ec>
    8bfc:	2e10      	cmp	r6, #16
    8bfe:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8c00:	f8df b024 	ldr.w	fp, [pc, #36]	; 8c28 <_vfprintf_r+0x8dc>
    8c04:	dd32      	ble.n	8c6c <_vfprintf_r+0x920>
    8c06:	4659      	mov	r1, fp
    8c08:	4623      	mov	r3, r4
    8c0a:	46bb      	mov	fp, r7
    8c0c:	2510      	movs	r5, #16
    8c0e:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
    8c12:	9c08      	ldr	r4, [sp, #32]
    8c14:	460f      	mov	r7, r1
    8c16:	e00e      	b.n	8c36 <_vfprintf_r+0x8ea>
    8c18:	7fefffff 	.word	0x7fefffff
    8c1c:	0000f314 	.word	0x0000f314
    8c20:	0000f318 	.word	0x0000f318
    8c24:	0000f354 	.word	0x0000f354
    8c28:	0000f304 	.word	0x0000f304
    8c2c:	3e10      	subs	r6, #16
    8c2e:	2e10      	cmp	r6, #16
    8c30:	f10a 0a08 	add.w	sl, sl, #8
    8c34:	dd16      	ble.n	8c64 <_vfprintf_r+0x918>
    8c36:	3201      	adds	r2, #1
    8c38:	3310      	adds	r3, #16
    8c3a:	2a07      	cmp	r2, #7
    8c3c:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
    8c40:	e9ca 7500 	strd	r7, r5, [sl]
    8c44:	ddf2      	ble.n	8c2c <_vfprintf_r+0x8e0>
    8c46:	aa21      	add	r2, sp, #132	; 0x84
    8c48:	4621      	mov	r1, r4
    8c4a:	4640      	mov	r0, r8
    8c4c:	f003 fc82 	bl	c554 <__sprint_r>
    8c50:	2800      	cmp	r0, #0
    8c52:	f47f aca4 	bne.w	859e <_vfprintf_r+0x252>
    8c56:	3e10      	subs	r6, #16
    8c58:	2e10      	cmp	r6, #16
    8c5a:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
    8c5e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8c62:	dce8      	bgt.n	8c36 <_vfprintf_r+0x8ea>
    8c64:	461c      	mov	r4, r3
    8c66:	463b      	mov	r3, r7
    8c68:	465f      	mov	r7, fp
    8c6a:	469b      	mov	fp, r3
    8c6c:	3201      	adds	r2, #1
    8c6e:	4434      	add	r4, r6
    8c70:	2a07      	cmp	r2, #7
    8c72:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8c76:	e9ca b600 	strd	fp, r6, [sl]
    8c7a:	f300 823f 	bgt.w	90fc <_vfprintf_r+0xdb0>
    8c7e:	f10a 0a08 	add.w	sl, sl, #8
    8c82:	e5d9      	b.n	8838 <_vfprintf_r+0x4ec>
    8c84:	aa21      	add	r2, sp, #132	; 0x84
    8c86:	9908      	ldr	r1, [sp, #32]
    8c88:	980c      	ldr	r0, [sp, #48]	; 0x30
    8c8a:	f003 fc63 	bl	c554 <__sprint_r>
    8c8e:	2800      	cmp	r0, #0
    8c90:	f43f adfa 	beq.w	8888 <_vfprintf_r+0x53c>
    8c94:	e483      	b.n	859e <_vfprintf_r+0x252>
    8c96:	aa21      	add	r2, sp, #132	; 0x84
    8c98:	9908      	ldr	r1, [sp, #32]
    8c9a:	980c      	ldr	r0, [sp, #48]	; 0x30
    8c9c:	f003 fc5a 	bl	c554 <__sprint_r>
    8ca0:	2800      	cmp	r0, #0
    8ca2:	f47f ac7c 	bne.w	859e <_vfprintf_r+0x252>
    8ca6:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    8ca8:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8caa:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8cae:	2b00      	cmp	r3, #0
    8cb0:	f040 83d5 	bne.w	945e <_vfprintf_r+0x1112>
    8cb4:	9b06      	ldr	r3, [sp, #24]
    8cb6:	9a12      	ldr	r2, [sp, #72]	; 0x48
    8cb8:	f003 0301 	and.w	r3, r3, #1
    8cbc:	4313      	orrs	r3, r2
    8cbe:	f43f adcf 	beq.w	8860 <_vfprintf_r+0x514>
    8cc2:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8cc4:	9b15      	ldr	r3, [sp, #84]	; 0x54
    8cc6:	f8ca 3000 	str.w	r3, [sl]
    8cca:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    8ccc:	f8ca 3004 	str.w	r3, [sl, #4]
    8cd0:	3201      	adds	r2, #1
    8cd2:	441c      	add	r4, r3
    8cd4:	2a07      	cmp	r2, #7
    8cd6:	9423      	str	r4, [sp, #140]	; 0x8c
    8cd8:	9222      	str	r2, [sp, #136]	; 0x88
    8cda:	f300 849d 	bgt.w	9618 <_vfprintf_r+0x12cc>
    8cde:	f10a 0a08 	add.w	sl, sl, #8
    8ce2:	9b12      	ldr	r3, [sp, #72]	; 0x48
    8ce4:	990e      	ldr	r1, [sp, #56]	; 0x38
    8ce6:	3201      	adds	r2, #1
    8ce8:	441c      	add	r4, r3
    8cea:	2a07      	cmp	r2, #7
    8cec:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8cf0:	e9ca 1300 	strd	r1, r3, [sl]
    8cf4:	f77f adb2 	ble.w	885c <_vfprintf_r+0x510>
    8cf8:	aa21      	add	r2, sp, #132	; 0x84
    8cfa:	9908      	ldr	r1, [sp, #32]
    8cfc:	980c      	ldr	r0, [sp, #48]	; 0x30
    8cfe:	f003 fc29 	bl	c554 <__sprint_r>
    8d02:	2800      	cmp	r0, #0
    8d04:	f47f ac4b 	bne.w	859e <_vfprintf_r+0x252>
    8d08:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8d0a:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8d0e:	e5a7      	b.n	8860 <_vfprintf_r+0x514>
    8d10:	9a12      	ldr	r2, [sp, #72]	; 0x48
    8d12:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8d14:	2a01      	cmp	r2, #1
    8d16:	f104 0401 	add.w	r4, r4, #1
    8d1a:	f103 0501 	add.w	r5, r3, #1
    8d1e:	f10a 0608 	add.w	r6, sl, #8
    8d22:	f340 81aa 	ble.w	907a <_vfprintf_r+0xd2e>
    8d26:	2301      	movs	r3, #1
    8d28:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    8d2a:	f8ca 2000 	str.w	r2, [sl]
    8d2e:	2d07      	cmp	r5, #7
    8d30:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
    8d34:	f8ca 3004 	str.w	r3, [sl, #4]
    8d38:	f300 8342 	bgt.w	93c0 <_vfprintf_r+0x1074>
    8d3c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    8d3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
    8d40:	3501      	adds	r5, #1
    8d42:	441c      	add	r4, r3
    8d44:	2d07      	cmp	r5, #7
    8d46:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
    8d4a:	e9c6 2300 	strd	r2, r3, [r6]
    8d4e:	f300 832b 	bgt.w	93a8 <_vfprintf_r+0x105c>
    8d52:	3608      	adds	r6, #8
    8d54:	1c6b      	adds	r3, r5, #1
    8d56:	461f      	mov	r7, r3
    8d58:	46b8      	mov	r8, r7
    8d5a:	9f12      	ldr	r7, [sp, #72]	; 0x48
    8d5c:	930b      	str	r3, [sp, #44]	; 0x2c
    8d5e:	2200      	movs	r2, #0
    8d60:	2300      	movs	r3, #0
    8d62:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
    8d66:	f106 0a08 	add.w	sl, r6, #8
    8d6a:	3f01      	subs	r7, #1
    8d6c:	f006 f876 	bl	ee5c <__aeabi_dcmpeq>
    8d70:	2800      	cmp	r0, #0
    8d72:	f040 8196 	bne.w	90a2 <_vfprintf_r+0xd56>
    8d76:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    8d78:	6077      	str	r7, [r6, #4]
    8d7a:	3301      	adds	r3, #1
    8d7c:	443c      	add	r4, r7
    8d7e:	f1b8 0f07 	cmp.w	r8, #7
    8d82:	6033      	str	r3, [r6, #0]
    8d84:	9423      	str	r4, [sp, #140]	; 0x8c
    8d86:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
    8d8a:	f300 82af 	bgt.w	92ec <_vfprintf_r+0xfa0>
    8d8e:	f106 0310 	add.w	r3, r6, #16
    8d92:	f105 0802 	add.w	r8, r5, #2
    8d96:	4656      	mov	r6, sl
    8d98:	469a      	mov	sl, r3
    8d9a:	9a16      	ldr	r2, [sp, #88]	; 0x58
    8d9c:	6072      	str	r2, [r6, #4]
    8d9e:	4414      	add	r4, r2
    8da0:	ab1d      	add	r3, sp, #116	; 0x74
    8da2:	f1b8 0f07 	cmp.w	r8, #7
    8da6:	9423      	str	r4, [sp, #140]	; 0x8c
    8da8:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
    8dac:	6033      	str	r3, [r6, #0]
    8dae:	f77f ad57 	ble.w	8860 <_vfprintf_r+0x514>
    8db2:	e7a1      	b.n	8cf8 <_vfprintf_r+0x9ac>
    8db4:	2d10      	cmp	r5, #16
    8db6:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8db8:	dd2c      	ble.n	8e14 <_vfprintf_r+0xac8>
    8dba:	4651      	mov	r1, sl
    8dbc:	4620      	mov	r0, r4
    8dbe:	46ca      	mov	sl, r9
    8dc0:	f04f 0810 	mov.w	r8, #16
    8dc4:	46b1      	mov	r9, r6
    8dc6:	9317      	str	r3, [sp, #92]	; 0x5c
    8dc8:	462e      	mov	r6, r5
    8dca:	9c0c      	ldr	r4, [sp, #48]	; 0x30
    8dcc:	9d08      	ldr	r5, [sp, #32]
    8dce:	e004      	b.n	8dda <_vfprintf_r+0xa8e>
    8dd0:	3e10      	subs	r6, #16
    8dd2:	2e10      	cmp	r6, #16
    8dd4:	f101 0108 	add.w	r1, r1, #8
    8dd8:	dd16      	ble.n	8e08 <_vfprintf_r+0xabc>
    8dda:	3201      	adds	r2, #1
    8ddc:	4bc5      	ldr	r3, [pc, #788]	; (90f4 <_vfprintf_r+0xda8>)
    8dde:	3010      	adds	r0, #16
    8de0:	2a07      	cmp	r2, #7
    8de2:	e9cd 2022 	strd	r2, r0, [sp, #136]	; 0x88
    8de6:	e9c1 3800 	strd	r3, r8, [r1]
    8dea:	ddf1      	ble.n	8dd0 <_vfprintf_r+0xa84>
    8dec:	aa21      	add	r2, sp, #132	; 0x84
    8dee:	4629      	mov	r1, r5
    8df0:	4620      	mov	r0, r4
    8df2:	f003 fbaf 	bl	c554 <__sprint_r>
    8df6:	2800      	cmp	r0, #0
    8df8:	f47f abd1 	bne.w	859e <_vfprintf_r+0x252>
    8dfc:	3e10      	subs	r6, #16
    8dfe:	2e10      	cmp	r6, #16
    8e00:	e9dd 2022 	ldrd	r2, r0, [sp, #136]	; 0x88
    8e04:	a92e      	add	r1, sp, #184	; 0xb8
    8e06:	dce8      	bgt.n	8dda <_vfprintf_r+0xa8e>
    8e08:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    8e0a:	4635      	mov	r5, r6
    8e0c:	4604      	mov	r4, r0
    8e0e:	464e      	mov	r6, r9
    8e10:	46d1      	mov	r9, sl
    8e12:	468a      	mov	sl, r1
    8e14:	3201      	adds	r2, #1
    8e16:	49b7      	ldr	r1, [pc, #732]	; (90f4 <_vfprintf_r+0xda8>)
    8e18:	442c      	add	r4, r5
    8e1a:	2a07      	cmp	r2, #7
    8e1c:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8e20:	e9ca 1500 	strd	r1, r5, [sl]
    8e24:	f300 82d8 	bgt.w	93d8 <_vfprintf_r+0x108c>
    8e28:	f10a 0a08 	add.w	sl, sl, #8
    8e2c:	e4da      	b.n	87e4 <_vfprintf_r+0x498>
    8e2e:	aa21      	add	r2, sp, #132	; 0x84
    8e30:	9908      	ldr	r1, [sp, #32]
    8e32:	980c      	ldr	r0, [sp, #48]	; 0x30
    8e34:	9317      	str	r3, [sp, #92]	; 0x5c
    8e36:	f003 fb8d 	bl	c554 <__sprint_r>
    8e3a:	2800      	cmp	r0, #0
    8e3c:	f47f abaf 	bne.w	859e <_vfprintf_r+0x252>
    8e40:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8e42:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    8e44:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8e48:	e4de      	b.n	8808 <_vfprintf_r+0x4bc>
    8e4a:	aa21      	add	r2, sp, #132	; 0x84
    8e4c:	9908      	ldr	r1, [sp, #32]
    8e4e:	980c      	ldr	r0, [sp, #48]	; 0x30
    8e50:	f003 fb80 	bl	c554 <__sprint_r>
    8e54:	2800      	cmp	r0, #0
    8e56:	f47f aba2 	bne.w	859e <_vfprintf_r+0x252>
    8e5a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8e5c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8e60:	e4e1      	b.n	8826 <_vfprintf_r+0x4da>
    8e62:	2d10      	cmp	r5, #16
    8e64:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8e66:	dd21      	ble.n	8eac <_vfprintf_r+0xb60>
    8e68:	2610      	movs	r6, #16
    8e6a:	9f0c      	ldr	r7, [sp, #48]	; 0x30
    8e6c:	f8dd 8020 	ldr.w	r8, [sp, #32]
    8e70:	e004      	b.n	8e7c <_vfprintf_r+0xb30>
    8e72:	3d10      	subs	r5, #16
    8e74:	2d10      	cmp	r5, #16
    8e76:	f10a 0a08 	add.w	sl, sl, #8
    8e7a:	dd17      	ble.n	8eac <_vfprintf_r+0xb60>
    8e7c:	3301      	adds	r3, #1
    8e7e:	4a9d      	ldr	r2, [pc, #628]	; (90f4 <_vfprintf_r+0xda8>)
    8e80:	3410      	adds	r4, #16
    8e82:	2b07      	cmp	r3, #7
    8e84:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
    8e88:	e9ca 2600 	strd	r2, r6, [sl]
    8e8c:	ddf1      	ble.n	8e72 <_vfprintf_r+0xb26>
    8e8e:	aa21      	add	r2, sp, #132	; 0x84
    8e90:	4641      	mov	r1, r8
    8e92:	4638      	mov	r0, r7
    8e94:	f003 fb5e 	bl	c554 <__sprint_r>
    8e98:	2800      	cmp	r0, #0
    8e9a:	f47f ab80 	bne.w	859e <_vfprintf_r+0x252>
    8e9e:	3d10      	subs	r5, #16
    8ea0:	2d10      	cmp	r5, #16
    8ea2:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
    8ea6:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    8eaa:	dce7      	bgt.n	8e7c <_vfprintf_r+0xb30>
    8eac:	3301      	adds	r3, #1
    8eae:	4a91      	ldr	r2, [pc, #580]	; (90f4 <_vfprintf_r+0xda8>)
    8eb0:	442c      	add	r4, r5
    8eb2:	2b07      	cmp	r3, #7
    8eb4:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
    8eb8:	e9ca 2500 	strd	r2, r5, [sl]
    8ebc:	f77f acd9 	ble.w	8872 <_vfprintf_r+0x526>
    8ec0:	aa21      	add	r2, sp, #132	; 0x84
    8ec2:	9908      	ldr	r1, [sp, #32]
    8ec4:	980c      	ldr	r0, [sp, #48]	; 0x30
    8ec6:	f003 fb45 	bl	c554 <__sprint_r>
    8eca:	2800      	cmp	r0, #0
    8ecc:	f47f ab67 	bne.w	859e <_vfprintf_r+0x252>
    8ed0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    8ed2:	e4ce      	b.n	8872 <_vfprintf_r+0x526>
    8ed4:	2b01      	cmp	r3, #1
    8ed6:	f000 83b9 	beq.w	964c <_vfprintf_r+0x1300>
    8eda:	2b02      	cmp	r3, #2
    8edc:	f8dd b018 	ldr.w	fp, [sp, #24]
    8ee0:	f47f adbf 	bne.w	8a62 <_vfprintf_r+0x716>
    8ee4:	f8dd c050 	ldr.w	ip, [sp, #80]	; 0x50
    8ee8:	aa2e      	add	r2, sp, #184	; 0xb8
    8eea:	0923      	lsrs	r3, r4, #4
    8eec:	f004 000f 	and.w	r0, r4, #15
    8ef0:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
    8ef4:	0929      	lsrs	r1, r5, #4
    8ef6:	461c      	mov	r4, r3
    8ef8:	460d      	mov	r5, r1
    8efa:	f81c 3000 	ldrb.w	r3, [ip, r0]
    8efe:	f802 3d01 	strb.w	r3, [r2, #-1]!
    8f02:	ea54 0305 	orrs.w	r3, r4, r5
    8f06:	d1f0      	bne.n	8eea <_vfprintf_r+0xb9e>
    8f08:	ab2e      	add	r3, sp, #184	; 0xb8
    8f0a:	1a9b      	subs	r3, r3, r2
    8f0c:	920e      	str	r2, [sp, #56]	; 0x38
    8f0e:	f8cd b018 	str.w	fp, [sp, #24]
    8f12:	930b      	str	r3, [sp, #44]	; 0x2c
    8f14:	e43a      	b.n	878c <_vfprintf_r+0x440>
    8f16:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    8f18:	2b00      	cmp	r3, #0
    8f1a:	f340 826c 	ble.w	93f6 <_vfprintf_r+0x10aa>
    8f1e:	9b12      	ldr	r3, [sp, #72]	; 0x48
    8f20:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    8f22:	4293      	cmp	r3, r2
    8f24:	bfa8      	it	ge
    8f26:	4613      	movge	r3, r2
    8f28:	2b00      	cmp	r3, #0
    8f2a:	461d      	mov	r5, r3
    8f2c:	dd0e      	ble.n	8f4c <_vfprintf_r+0xc00>
    8f2e:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8f30:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    8f32:	f8ca 2000 	str.w	r2, [sl]
    8f36:	3301      	adds	r3, #1
    8f38:	442c      	add	r4, r5
    8f3a:	2b07      	cmp	r3, #7
    8f3c:	9423      	str	r4, [sp, #140]	; 0x8c
    8f3e:	f8ca 5004 	str.w	r5, [sl, #4]
    8f42:	9322      	str	r3, [sp, #136]	; 0x88
    8f44:	f300 83b9 	bgt.w	96ba <_vfprintf_r+0x136e>
    8f48:	f10a 0a08 	add.w	sl, sl, #8
    8f4c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    8f4e:	2d00      	cmp	r5, #0
    8f50:	bfa8      	it	ge
    8f52:	1b5b      	subge	r3, r3, r5
    8f54:	2b00      	cmp	r3, #0
    8f56:	461d      	mov	r5, r3
    8f58:	f300 81f8 	bgt.w	934c <_vfprintf_r+0x1000>
    8f5c:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
    8f5e:	9b12      	ldr	r3, [sp, #72]	; 0x48
    8f60:	429a      	cmp	r2, r3
    8f62:	f280 81b7 	bge.w	92d4 <_vfprintf_r+0xf88>
    8f66:	9b22      	ldr	r3, [sp, #136]	; 0x88
    8f68:	9915      	ldr	r1, [sp, #84]	; 0x54
    8f6a:	f8ca 1000 	str.w	r1, [sl]
    8f6e:	9913      	ldr	r1, [sp, #76]	; 0x4c
    8f70:	f8ca 1004 	str.w	r1, [sl, #4]
    8f74:	3301      	adds	r3, #1
    8f76:	440c      	add	r4, r1
    8f78:	2b07      	cmp	r3, #7
    8f7a:	9423      	str	r4, [sp, #140]	; 0x8c
    8f7c:	9322      	str	r3, [sp, #136]	; 0x88
    8f7e:	f300 832a 	bgt.w	95d6 <_vfprintf_r+0x128a>
    8f82:	f10a 0a08 	add.w	sl, sl, #8
    8f86:	990f      	ldr	r1, [sp, #60]	; 0x3c
    8f88:	9b12      	ldr	r3, [sp, #72]	; 0x48
    8f8a:	4291      	cmp	r1, r2
    8f8c:	eba3 0302 	sub.w	r3, r3, r2
    8f90:	f280 8206 	bge.w	93a0 <_vfprintf_r+0x1054>
    8f94:	461d      	mov	r5, r3
    8f96:	2d00      	cmp	r5, #0
    8f98:	dd10      	ble.n	8fbc <_vfprintf_r+0xc70>
    8f9a:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8f9c:	f8ca 5004 	str.w	r5, [sl, #4]
    8fa0:	e9dd 100e 	ldrd	r1, r0, [sp, #56]	; 0x38
    8fa4:	3201      	adds	r2, #1
    8fa6:	4401      	add	r1, r0
    8fa8:	442c      	add	r4, r5
    8faa:	2a07      	cmp	r2, #7
    8fac:	f8ca 1000 	str.w	r1, [sl]
    8fb0:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8fb4:	f300 838f 	bgt.w	96d6 <_vfprintf_r+0x138a>
    8fb8:	f10a 0a08 	add.w	sl, sl, #8
    8fbc:	2d00      	cmp	r5, #0
    8fbe:	bfac      	ite	ge
    8fc0:	1b5d      	subge	r5, r3, r5
    8fc2:	461d      	movlt	r5, r3
    8fc4:	2d00      	cmp	r5, #0
    8fc6:	f77f ac4b 	ble.w	8860 <_vfprintf_r+0x514>
    8fca:	2d10      	cmp	r5, #16
    8fcc:	9a22      	ldr	r2, [sp, #136]	; 0x88
    8fce:	f8df b128 	ldr.w	fp, [pc, #296]	; 90f8 <_vfprintf_r+0xdac>
    8fd2:	f340 8221 	ble.w	9418 <_vfprintf_r+0x10cc>
    8fd6:	2610      	movs	r6, #16
    8fd8:	9f0c      	ldr	r7, [sp, #48]	; 0x30
    8fda:	f8dd 8020 	ldr.w	r8, [sp, #32]
    8fde:	e005      	b.n	8fec <_vfprintf_r+0xca0>
    8fe0:	f10a 0a08 	add.w	sl, sl, #8
    8fe4:	3d10      	subs	r5, #16
    8fe6:	2d10      	cmp	r5, #16
    8fe8:	f340 8216 	ble.w	9418 <_vfprintf_r+0x10cc>
    8fec:	3201      	adds	r2, #1
    8fee:	3410      	adds	r4, #16
    8ff0:	2a07      	cmp	r2, #7
    8ff2:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    8ff6:	e9ca b600 	strd	fp, r6, [sl]
    8ffa:	ddf1      	ble.n	8fe0 <_vfprintf_r+0xc94>
    8ffc:	aa21      	add	r2, sp, #132	; 0x84
    8ffe:	4641      	mov	r1, r8
    9000:	4638      	mov	r0, r7
    9002:	f003 faa7 	bl	c554 <__sprint_r>
    9006:	2800      	cmp	r0, #0
    9008:	f47f aac9 	bne.w	859e <_vfprintf_r+0x252>
    900c:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    9010:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9014:	e7e6      	b.n	8fe4 <_vfprintf_r+0xc98>
    9016:	ab2e      	add	r3, sp, #184	; 0xb8
    9018:	f8cd 9018 	str.w	r9, [sp, #24]
    901c:	46c1      	mov	r9, r8
    901e:	46b0      	mov	r8, r6
    9020:	461e      	mov	r6, r3
    9022:	e001      	b.n	9028 <_vfprintf_r+0xcdc>
    9024:	4604      	mov	r4, r0
    9026:	460d      	mov	r5, r1
    9028:	220a      	movs	r2, #10
    902a:	2300      	movs	r3, #0
    902c:	4620      	mov	r0, r4
    902e:	4629      	mov	r1, r5
    9030:	f005 ff84 	bl	ef3c <__aeabi_uldivmod>
    9034:	3230      	adds	r2, #48	; 0x30
    9036:	f806 2d01 	strb.w	r2, [r6, #-1]!
    903a:	2300      	movs	r3, #0
    903c:	220a      	movs	r2, #10
    903e:	4620      	mov	r0, r4
    9040:	4629      	mov	r1, r5
    9042:	f005 ff7b 	bl	ef3c <__aeabi_uldivmod>
    9046:	2d00      	cmp	r5, #0
    9048:	bf08      	it	eq
    904a:	2c0a      	cmpeq	r4, #10
    904c:	d2ea      	bcs.n	9024 <_vfprintf_r+0xcd8>
    904e:	4632      	mov	r2, r6
    9050:	960e      	str	r6, [sp, #56]	; 0x38
    9052:	4646      	mov	r6, r8
    9054:	46c8      	mov	r8, r9
    9056:	f8dd 9018 	ldr.w	r9, [sp, #24]
    905a:	f8cd b018 	str.w	fp, [sp, #24]
    905e:	ab2e      	add	r3, sp, #184	; 0xb8
    9060:	1a9b      	subs	r3, r3, r2
    9062:	930b      	str	r3, [sp, #44]	; 0x2c
    9064:	f7ff bb92 	b.w	878c <_vfprintf_r+0x440>
    9068:	2e00      	cmp	r6, #0
    906a:	f040 82ef 	bne.w	964c <_vfprintf_r+0x1300>
    906e:	2600      	movs	r6, #0
    9070:	ab2e      	add	r3, sp, #184	; 0xb8
    9072:	960b      	str	r6, [sp, #44]	; 0x2c
    9074:	930e      	str	r3, [sp, #56]	; 0x38
    9076:	f7ff bb89 	b.w	878c <_vfprintf_r+0x440>
    907a:	9a06      	ldr	r2, [sp, #24]
    907c:	07d0      	lsls	r0, r2, #31
    907e:	f53f ae52 	bmi.w	8d26 <_vfprintf_r+0x9da>
    9082:	2201      	movs	r2, #1
    9084:	990e      	ldr	r1, [sp, #56]	; 0x38
    9086:	f8ca 1000 	str.w	r1, [sl]
    908a:	2d07      	cmp	r5, #7
    908c:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
    9090:	f8ca 2004 	str.w	r2, [sl, #4]
    9094:	f300 812a 	bgt.w	92ec <_vfprintf_r+0xfa0>
    9098:	f103 0802 	add.w	r8, r3, #2
    909c:	f10a 0a10 	add.w	sl, sl, #16
    90a0:	e67b      	b.n	8d9a <_vfprintf_r+0xa4e>
    90a2:	2f00      	cmp	r7, #0
    90a4:	f77f ae79 	ble.w	8d9a <_vfprintf_r+0xa4e>
    90a8:	2f10      	cmp	r7, #16
    90aa:	f8df b04c 	ldr.w	fp, [pc, #76]	; 90f8 <_vfprintf_r+0xdac>
    90ae:	f340 83ae 	ble.w	980e <_vfprintf_r+0x14c2>
    90b2:	4623      	mov	r3, r4
    90b4:	f04f 0810 	mov.w	r8, #16
    90b8:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
    90bc:	9c08      	ldr	r4, [sp, #32]
    90be:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
    90c0:	e005      	b.n	90ce <_vfprintf_r+0xd82>
    90c2:	3608      	adds	r6, #8
    90c4:	3f10      	subs	r7, #16
    90c6:	2f10      	cmp	r7, #16
    90c8:	f340 820c 	ble.w	94e4 <_vfprintf_r+0x1198>
    90cc:	3501      	adds	r5, #1
    90ce:	3310      	adds	r3, #16
    90d0:	2d07      	cmp	r5, #7
    90d2:	e9cd 5322 	strd	r5, r3, [sp, #136]	; 0x88
    90d6:	e9c6 b800 	strd	fp, r8, [r6]
    90da:	ddf2      	ble.n	90c2 <_vfprintf_r+0xd76>
    90dc:	aa21      	add	r2, sp, #132	; 0x84
    90de:	4621      	mov	r1, r4
    90e0:	4650      	mov	r0, sl
    90e2:	f003 fa37 	bl	c554 <__sprint_r>
    90e6:	2800      	cmp	r0, #0
    90e8:	f47f aa59 	bne.w	859e <_vfprintf_r+0x252>
    90ec:	e9dd 5322 	ldrd	r5, r3, [sp, #136]	; 0x88
    90f0:	ae2e      	add	r6, sp, #184	; 0xb8
    90f2:	e7e7      	b.n	90c4 <_vfprintf_r+0xd78>
    90f4:	0000f2f4 	.word	0x0000f2f4
    90f8:	0000f304 	.word	0x0000f304
    90fc:	aa21      	add	r2, sp, #132	; 0x84
    90fe:	9908      	ldr	r1, [sp, #32]
    9100:	980c      	ldr	r0, [sp, #48]	; 0x30
    9102:	f003 fa27 	bl	c554 <__sprint_r>
    9106:	2800      	cmp	r0, #0
    9108:	f47f aa49 	bne.w	859e <_vfprintf_r+0x252>
    910c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    910e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9112:	f7ff bb91 	b.w	8838 <_vfprintf_r+0x4ec>
    9116:	2500      	movs	r5, #0
    9118:	f7ff ba6e 	b.w	85f8 <_vfprintf_r+0x2ac>
    911c:	17e5      	asrs	r5, r4, #31
    911e:	4622      	mov	r2, r4
    9120:	462b      	mov	r3, r5
    9122:	2a00      	cmp	r2, #0
    9124:	f173 0300 	sbcs.w	r3, r3, #0
    9128:	f6bf ab14 	bge.w	8754 <_vfprintf_r+0x408>
    912c:	f04f 082d 	mov.w	r8, #45	; 0x2d
    9130:	4264      	negs	r4, r4
    9132:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
    9136:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
    913a:	2301      	movs	r3, #1
    913c:	f7ff bab0 	b.w	86a0 <_vfprintf_r+0x354>
    9140:	464c      	mov	r4, r9
    9142:	f7ff b96f 	b.w	8424 <_vfprintf_r+0xd8>
    9146:	9b06      	ldr	r3, [sp, #24]
    9148:	07de      	lsls	r6, r3, #31
    914a:	f53f acd3 	bmi.w	8af4 <_vfprintf_r+0x7a8>
    914e:	f7ff bb87 	b.w	8860 <_vfprintf_r+0x514>
    9152:	ab2e      	add	r3, sp, #184	; 0xb8
    9154:	930e      	str	r3, [sp, #56]	; 0x38
    9156:	f7ff bb19 	b.w	878c <_vfprintf_r+0x440>
    915a:	9a09      	ldr	r2, [sp, #36]	; 0x24
    915c:	4610      	mov	r0, r2
    915e:	17d1      	asrs	r1, r2, #31
    9160:	e9c3 0100 	strd	r0, r1, [r3]
    9164:	f7ff b932 	b.w	83cc <_vfprintf_r+0x80>
    9168:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
    916c:	4602      	mov	r2, r0
    916e:	460b      	mov	r3, r1
    9170:	f005 fea6 	bl	eec0 <__aeabi_dcmpun>
    9174:	2800      	cmp	r0, #0
    9176:	f040 8330 	bne.w	97da <_vfprintf_r+0x148e>
    917a:	f027 0320 	bic.w	r3, r7, #32
    917e:	1c74      	adds	r4, r6, #1
    9180:	9307      	str	r3, [sp, #28]
    9182:	f000 82a6 	beq.w	96d2 <_vfprintf_r+0x1386>
    9186:	2b47      	cmp	r3, #71	; 0x47
    9188:	f000 8242 	beq.w	9610 <_vfprintf_r+0x12c4>
    918c:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    9190:	f44b 7380 	orr.w	r3, fp, #256	; 0x100
    9194:	1e15      	subs	r5, r2, #0
    9196:	9306      	str	r3, [sp, #24]
    9198:	f2c0 8217 	blt.w	95ca <_vfprintf_r+0x127e>
    919c:	2300      	movs	r3, #0
    919e:	f8dd 8040 	ldr.w	r8, [sp, #64]	; 0x40
    91a2:	9317      	str	r3, [sp, #92]	; 0x5c
    91a4:	2f66      	cmp	r7, #102	; 0x66
    91a6:	f000 81bb 	beq.w	9520 <_vfprintf_r+0x11d4>
    91aa:	2f46      	cmp	r7, #70	; 0x46
    91ac:	f000 81b8 	beq.w	9520 <_vfprintf_r+0x11d4>
    91b0:	9b07      	ldr	r3, [sp, #28]
    91b2:	2b45      	cmp	r3, #69	; 0x45
    91b4:	4642      	mov	r2, r8
    91b6:	462b      	mov	r3, r5
    91b8:	f000 824c 	beq.w	9654 <_vfprintf_r+0x1308>
    91bc:	a81f      	add	r0, sp, #124	; 0x7c
    91be:	a91c      	add	r1, sp, #112	; 0x70
    91c0:	9004      	str	r0, [sp, #16]
    91c2:	9103      	str	r1, [sp, #12]
    91c4:	a81b      	add	r0, sp, #108	; 0x6c
    91c6:	2102      	movs	r1, #2
    91c8:	9002      	str	r0, [sp, #8]
    91ca:	9601      	str	r6, [sp, #4]
    91cc:	9100      	str	r1, [sp, #0]
    91ce:	980c      	ldr	r0, [sp, #48]	; 0x30
    91d0:	f000 fcf0 	bl	9bb4 <_dtoa_r>
    91d4:	2f67      	cmp	r7, #103	; 0x67
    91d6:	900e      	str	r0, [sp, #56]	; 0x38
    91d8:	4634      	mov	r4, r6
    91da:	f040 8249 	bne.w	9670 <_vfprintf_r+0x1324>
    91de:	f01b 0f01 	tst.w	fp, #1
    91e2:	f040 8248 	bne.w	9676 <_vfprintf_r+0x132a>
    91e6:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
    91e8:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    91ea:	920f      	str	r2, [sp, #60]	; 0x3c
    91ec:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    91ee:	1a9b      	subs	r3, r3, r2
    91f0:	9312      	str	r3, [sp, #72]	; 0x48
    91f2:	9b07      	ldr	r3, [sp, #28]
    91f4:	2b47      	cmp	r3, #71	; 0x47
    91f6:	d106      	bne.n	9206 <_vfprintf_r+0xeba>
    91f8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    91fa:	1cd8      	adds	r0, r3, #3
    91fc:	db02      	blt.n	9204 <_vfprintf_r+0xeb8>
    91fe:	429e      	cmp	r6, r3
    9200:	f280 824d 	bge.w	969e <_vfprintf_r+0x1352>
    9204:	3f02      	subs	r7, #2
    9206:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    9208:	f88d 7074 	strb.w	r7, [sp, #116]	; 0x74
    920c:	1e5a      	subs	r2, r3, #1
    920e:	2a00      	cmp	r2, #0
    9210:	921b      	str	r2, [sp, #108]	; 0x6c
    9212:	bfb6      	itet	lt
    9214:	f1c3 0201 	rsblt	r2, r3, #1
    9218:	232b      	movge	r3, #43	; 0x2b
    921a:	232d      	movlt	r3, #45	; 0x2d
    921c:	2a09      	cmp	r2, #9
    921e:	f88d 3075 	strb.w	r3, [sp, #117]	; 0x75
    9222:	f340 82ba 	ble.w	979a <_vfprintf_r+0x144e>
    9226:	f10d 0483 	add.w	r4, sp, #131	; 0x83
    922a:	4620      	mov	r0, r4
    922c:	4db8      	ldr	r5, [pc, #736]	; (9510 <_vfprintf_r+0x11c4>)
    922e:	e001      	b.n	9234 <_vfprintf_r+0xee8>
    9230:	4608      	mov	r0, r1
    9232:	461a      	mov	r2, r3
    9234:	fb85 3102 	smull	r3, r1, r5, r2
    9238:	17d3      	asrs	r3, r2, #31
    923a:	ebc3 03a1 	rsb	r3, r3, r1, asr #2
    923e:	eb03 0183 	add.w	r1, r3, r3, lsl #2
    9242:	eba2 0141 	sub.w	r1, r2, r1, lsl #1
    9246:	3130      	adds	r1, #48	; 0x30
    9248:	2a63      	cmp	r2, #99	; 0x63
    924a:	f800 1c01 	strb.w	r1, [r0, #-1]
    924e:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
    9252:	dced      	bgt.n	9230 <_vfprintf_r+0xee4>
    9254:	3330      	adds	r3, #48	; 0x30
    9256:	1e82      	subs	r2, r0, #2
    9258:	b2db      	uxtb	r3, r3
    925a:	4294      	cmp	r4, r2
    925c:	f801 3c01 	strb.w	r3, [r1, #-1]
    9260:	f240 82e2 	bls.w	9828 <_vfprintf_r+0x14dc>
    9264:	f10d 0276 	add.w	r2, sp, #118	; 0x76
    9268:	e001      	b.n	926e <_vfprintf_r+0xf22>
    926a:	f811 3b01 	ldrb.w	r3, [r1], #1
    926e:	f802 3b01 	strb.w	r3, [r2], #1
    9272:	428c      	cmp	r4, r1
    9274:	d1f9      	bne.n	926a <_vfprintf_r+0xf1e>
    9276:	f10d 0385 	add.w	r3, sp, #133	; 0x85
    927a:	f10d 0276 	add.w	r2, sp, #118	; 0x76
    927e:	1a1b      	subs	r3, r3, r0
    9280:	4413      	add	r3, r2
    9282:	aa1d      	add	r2, sp, #116	; 0x74
    9284:	1a9b      	subs	r3, r3, r2
    9286:	9316      	str	r3, [sp, #88]	; 0x58
    9288:	9a12      	ldr	r2, [sp, #72]	; 0x48
    928a:	9b16      	ldr	r3, [sp, #88]	; 0x58
    928c:	2a01      	cmp	r2, #1
    928e:	4413      	add	r3, r2
    9290:	930b      	str	r3, [sp, #44]	; 0x2c
    9292:	f340 8294 	ble.w	97be <_vfprintf_r+0x1472>
    9296:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    9298:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    929a:	4413      	add	r3, r2
    929c:	930b      	str	r3, [sp, #44]	; 0x2c
    929e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    92a2:	9307      	str	r3, [sp, #28]
    92a4:	2300      	movs	r3, #0
    92a6:	930f      	str	r3, [sp, #60]	; 0x3c
    92a8:	e175      	b.n	9596 <_vfprintf_r+0x124a>
    92aa:	f01b 0f40 	tst.w	fp, #64	; 0x40
    92ae:	bf18      	it	ne
    92b0:	b2a4      	uxthne	r4, r4
    92b2:	2500      	movs	r5, #0
    92b4:	2301      	movs	r3, #1
    92b6:	f7ff b9ef 	b.w	8698 <_vfprintf_r+0x34c>
    92ba:	f01b 0340 	ands.w	r3, fp, #64	; 0x40
    92be:	bf1c      	itt	ne
    92c0:	4613      	movne	r3, r2
    92c2:	b2a4      	uxthne	r4, r4
    92c4:	2500      	movs	r5, #0
    92c6:	f7ff b9e7 	b.w	8698 <_vfprintf_r+0x34c>
    92ca:	4240      	negs	r0, r0
    92cc:	900a      	str	r0, [sp, #40]	; 0x28
    92ce:	930d      	str	r3, [sp, #52]	; 0x34
    92d0:	f7ff bb65 	b.w	899e <_vfprintf_r+0x652>
    92d4:	9b06      	ldr	r3, [sp, #24]
    92d6:	07dd      	lsls	r5, r3, #31
    92d8:	f53f ae45 	bmi.w	8f66 <_vfprintf_r+0xc1a>
    92dc:	990f      	ldr	r1, [sp, #60]	; 0x3c
    92de:	9b12      	ldr	r3, [sp, #72]	; 0x48
    92e0:	428a      	cmp	r2, r1
    92e2:	eba3 0302 	sub.w	r3, r3, r2
    92e6:	dd5b      	ble.n	93a0 <_vfprintf_r+0x1054>
    92e8:	461d      	mov	r5, r3
    92ea:	e667      	b.n	8fbc <_vfprintf_r+0xc70>
    92ec:	aa21      	add	r2, sp, #132	; 0x84
    92ee:	9908      	ldr	r1, [sp, #32]
    92f0:	980c      	ldr	r0, [sp, #48]	; 0x30
    92f2:	f003 f92f 	bl	c554 <__sprint_r>
    92f6:	2800      	cmp	r0, #0
    92f8:	f47f a951 	bne.w	859e <_vfprintf_r+0x252>
    92fc:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
    9300:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
    9304:	f103 0801 	add.w	r8, r3, #1
    9308:	ae2e      	add	r6, sp, #184	; 0xb8
    930a:	e546      	b.n	8d9a <_vfprintf_r+0xa4e>
    930c:	aa21      	add	r2, sp, #132	; 0x84
    930e:	9908      	ldr	r1, [sp, #32]
    9310:	980c      	ldr	r0, [sp, #48]	; 0x30
    9312:	f003 f91f 	bl	c554 <__sprint_r>
    9316:	2800      	cmp	r0, #0
    9318:	f47f a941 	bne.w	859e <_vfprintf_r+0x252>
    931c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    931e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9322:	f7ff bbf7 	b.w	8b14 <_vfprintf_r+0x7c8>
    9326:	2e06      	cmp	r6, #6
    9328:	4633      	mov	r3, r6
    932a:	bf28      	it	cs
    932c:	2306      	movcs	r3, #6
    932e:	930b      	str	r3, [sp, #44]	; 0x2c
    9330:	9307      	str	r3, [sp, #28]
    9332:	4b78      	ldr	r3, [pc, #480]	; (9514 <_vfprintf_r+0x11c8>)
    9334:	940d      	str	r4, [sp, #52]	; 0x34
    9336:	930e      	str	r3, [sp, #56]	; 0x38
    9338:	f7ff ba3e 	b.w	87b8 <_vfprintf_r+0x46c>
    933c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    933e:	f8cd b018 	str.w	fp, [sp, #24]
    9342:	ab2e      	add	r3, sp, #184	; 0xb8
    9344:	1a9b      	subs	r3, r3, r2
    9346:	930b      	str	r3, [sp, #44]	; 0x2c
    9348:	f7ff ba20 	b.w	878c <_vfprintf_r+0x440>
    934c:	2b10      	cmp	r3, #16
    934e:	9a22      	ldr	r2, [sp, #136]	; 0x88
    9350:	f8df b1c8 	ldr.w	fp, [pc, #456]	; 951c <_vfprintf_r+0x11d0>
    9354:	f340 8128 	ble.w	95a8 <_vfprintf_r+0x125c>
    9358:	2610      	movs	r6, #16
    935a:	9f0c      	ldr	r7, [sp, #48]	; 0x30
    935c:	f8dd 8020 	ldr.w	r8, [sp, #32]
    9360:	e005      	b.n	936e <_vfprintf_r+0x1022>
    9362:	f10a 0a08 	add.w	sl, sl, #8
    9366:	3d10      	subs	r5, #16
    9368:	2d10      	cmp	r5, #16
    936a:	f340 811d 	ble.w	95a8 <_vfprintf_r+0x125c>
    936e:	3201      	adds	r2, #1
    9370:	3410      	adds	r4, #16
    9372:	2a07      	cmp	r2, #7
    9374:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    9378:	e9ca b600 	strd	fp, r6, [sl]
    937c:	ddf1      	ble.n	9362 <_vfprintf_r+0x1016>
    937e:	aa21      	add	r2, sp, #132	; 0x84
    9380:	4641      	mov	r1, r8
    9382:	4638      	mov	r0, r7
    9384:	f003 f8e6 	bl	c554 <__sprint_r>
    9388:	2800      	cmp	r0, #0
    938a:	f47f a908 	bne.w	859e <_vfprintf_r+0x252>
    938e:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    9392:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9396:	e7e6      	b.n	9366 <_vfprintf_r+0x101a>
    9398:	9a09      	ldr	r2, [sp, #36]	; 0x24
    939a:	601a      	str	r2, [r3, #0]
    939c:	f7ff b816 	b.w	83cc <_vfprintf_r+0x80>
    93a0:	9a12      	ldr	r2, [sp, #72]	; 0x48
    93a2:	990f      	ldr	r1, [sp, #60]	; 0x3c
    93a4:	1a55      	subs	r5, r2, r1
    93a6:	e5f6      	b.n	8f96 <_vfprintf_r+0xc4a>
    93a8:	aa21      	add	r2, sp, #132	; 0x84
    93aa:	9908      	ldr	r1, [sp, #32]
    93ac:	980c      	ldr	r0, [sp, #48]	; 0x30
    93ae:	f003 f8d1 	bl	c554 <__sprint_r>
    93b2:	2800      	cmp	r0, #0
    93b4:	f47f a8f3 	bne.w	859e <_vfprintf_r+0x252>
    93b8:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
    93bc:	ae2e      	add	r6, sp, #184	; 0xb8
    93be:	e4c9      	b.n	8d54 <_vfprintf_r+0xa08>
    93c0:	aa21      	add	r2, sp, #132	; 0x84
    93c2:	9908      	ldr	r1, [sp, #32]
    93c4:	980c      	ldr	r0, [sp, #48]	; 0x30
    93c6:	f003 f8c5 	bl	c554 <__sprint_r>
    93ca:	2800      	cmp	r0, #0
    93cc:	f47f a8e7 	bne.w	859e <_vfprintf_r+0x252>
    93d0:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
    93d4:	ae2e      	add	r6, sp, #184	; 0xb8
    93d6:	e4b1      	b.n	8d3c <_vfprintf_r+0x9f0>
    93d8:	aa21      	add	r2, sp, #132	; 0x84
    93da:	9908      	ldr	r1, [sp, #32]
    93dc:	980c      	ldr	r0, [sp, #48]	; 0x30
    93de:	9317      	str	r3, [sp, #92]	; 0x5c
    93e0:	f003 f8b8 	bl	c554 <__sprint_r>
    93e4:	2800      	cmp	r0, #0
    93e6:	f47f a8da 	bne.w	859e <_vfprintf_r+0x252>
    93ea:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    93ec:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    93ee:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    93f2:	f7ff b9f7 	b.w	87e4 <_vfprintf_r+0x498>
    93f6:	9a22      	ldr	r2, [sp, #136]	; 0x88
    93f8:	4947      	ldr	r1, [pc, #284]	; (9518 <_vfprintf_r+0x11cc>)
    93fa:	f8ca 1000 	str.w	r1, [sl]
    93fe:	3201      	adds	r2, #1
    9400:	3401      	adds	r4, #1
    9402:	2101      	movs	r1, #1
    9404:	2a07      	cmp	r2, #7
    9406:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    940a:	f8ca 1004 	str.w	r1, [sl, #4]
    940e:	f73f ac42 	bgt.w	8c96 <_vfprintf_r+0x94a>
    9412:	f10a 0a08 	add.w	sl, sl, #8
    9416:	e44a      	b.n	8cae <_vfprintf_r+0x962>
    9418:	3201      	adds	r2, #1
    941a:	442c      	add	r4, r5
    941c:	2a07      	cmp	r2, #7
    941e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    9422:	e9ca b500 	strd	fp, r5, [sl]
    9426:	f77f aa19 	ble.w	885c <_vfprintf_r+0x510>
    942a:	e465      	b.n	8cf8 <_vfprintf_r+0x9ac>
    942c:	aa21      	add	r2, sp, #132	; 0x84
    942e:	9908      	ldr	r1, [sp, #32]
    9430:	980c      	ldr	r0, [sp, #48]	; 0x30
    9432:	f003 f88f 	bl	c554 <__sprint_r>
    9436:	2800      	cmp	r0, #0
    9438:	f47f a8b1 	bne.w	859e <_vfprintf_r+0x252>
    943c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9440:	f7ff bb52 	b.w	8ae8 <_vfprintf_r+0x79c>
    9444:	aa21      	add	r2, sp, #132	; 0x84
    9446:	9908      	ldr	r1, [sp, #32]
    9448:	980c      	ldr	r0, [sp, #48]	; 0x30
    944a:	f003 f883 	bl	c554 <__sprint_r>
    944e:	2800      	cmp	r0, #0
    9450:	f47f a8a5 	bne.w	859e <_vfprintf_r+0x252>
    9454:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    9456:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    945a:	f7ff b9e8 	b.w	882e <_vfprintf_r+0x4e2>
    945e:	9a22      	ldr	r2, [sp, #136]	; 0x88
    9460:	9915      	ldr	r1, [sp, #84]	; 0x54
    9462:	f8ca 1000 	str.w	r1, [sl]
    9466:	9913      	ldr	r1, [sp, #76]	; 0x4c
    9468:	f8ca 1004 	str.w	r1, [sl, #4]
    946c:	3201      	adds	r2, #1
    946e:	440c      	add	r4, r1
    9470:	2a07      	cmp	r2, #7
    9472:	9423      	str	r4, [sp, #140]	; 0x8c
    9474:	9222      	str	r2, [sp, #136]	; 0x88
    9476:	f300 80cf 	bgt.w	9618 <_vfprintf_r+0x12cc>
    947a:	f10a 0a08 	add.w	sl, sl, #8
    947e:	2b00      	cmp	r3, #0
    9480:	f6bf ac2f 	bge.w	8ce2 <_vfprintf_r+0x996>
    9484:	425d      	negs	r5, r3
    9486:	3310      	adds	r3, #16
    9488:	f8df b090 	ldr.w	fp, [pc, #144]	; 951c <_vfprintf_r+0x11d0>
    948c:	f280 816e 	bge.w	976c <_vfprintf_r+0x1420>
    9490:	465f      	mov	r7, fp
    9492:	2610      	movs	r6, #16
    9494:	f8dd 8020 	ldr.w	r8, [sp, #32]
    9498:	f8dd b030 	ldr.w	fp, [sp, #48]	; 0x30
    949c:	e005      	b.n	94aa <_vfprintf_r+0x115e>
    949e:	f10a 0a08 	add.w	sl, sl, #8
    94a2:	3d10      	subs	r5, #16
    94a4:	2d10      	cmp	r5, #16
    94a6:	f340 8160 	ble.w	976a <_vfprintf_r+0x141e>
    94aa:	3201      	adds	r2, #1
    94ac:	3410      	adds	r4, #16
    94ae:	2a07      	cmp	r2, #7
    94b0:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    94b4:	e9ca 7600 	strd	r7, r6, [sl]
    94b8:	ddf1      	ble.n	949e <_vfprintf_r+0x1152>
    94ba:	aa21      	add	r2, sp, #132	; 0x84
    94bc:	4641      	mov	r1, r8
    94be:	4658      	mov	r0, fp
    94c0:	f003 f848 	bl	c554 <__sprint_r>
    94c4:	2800      	cmp	r0, #0
    94c6:	f47f a86a 	bne.w	859e <_vfprintf_r+0x252>
    94ca:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    94ce:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    94d2:	e7e6      	b.n	94a2 <_vfprintf_r+0x1156>
    94d4:	980e      	ldr	r0, [sp, #56]	; 0x38
    94d6:	f002 ff93 	bl	c400 <strlen>
    94da:	462e      	mov	r6, r5
    94dc:	4603      	mov	r3, r0
    94de:	900b      	str	r0, [sp, #44]	; 0x2c
    94e0:	f7ff b8b4 	b.w	864c <_vfprintf_r+0x300>
    94e4:	461c      	mov	r4, r3
    94e6:	f105 0801 	add.w	r8, r5, #1
    94ea:	f106 0208 	add.w	r2, r6, #8
    94ee:	443c      	add	r4, r7
    94f0:	f1b8 0f07 	cmp.w	r8, #7
    94f4:	9423      	str	r4, [sp, #140]	; 0x8c
    94f6:	e9c6 b700 	strd	fp, r7, [r6]
    94fa:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
    94fe:	f73f aef5 	bgt.w	92ec <_vfprintf_r+0xfa0>
    9502:	f108 0801 	add.w	r8, r8, #1
    9506:	f102 0a08 	add.w	sl, r2, #8
    950a:	4616      	mov	r6, r2
    950c:	e445      	b.n	8d9a <_vfprintf_r+0xa4e>
    950e:	bf00      	nop
    9510:	66666667 	.word	0x66666667
    9514:	0000f34c 	.word	0x0000f34c
    9518:	0000f354 	.word	0x0000f354
    951c:	0000f304 	.word	0x0000f304
    9520:	a81f      	add	r0, sp, #124	; 0x7c
    9522:	a91c      	add	r1, sp, #112	; 0x70
    9524:	9004      	str	r0, [sp, #16]
    9526:	9103      	str	r1, [sp, #12]
    9528:	a81b      	add	r0, sp, #108	; 0x6c
    952a:	2103      	movs	r1, #3
    952c:	462b      	mov	r3, r5
    952e:	9002      	str	r0, [sp, #8]
    9530:	4642      	mov	r2, r8
    9532:	9601      	str	r6, [sp, #4]
    9534:	9100      	str	r1, [sp, #0]
    9536:	980c      	ldr	r0, [sp, #48]	; 0x30
    9538:	f000 fb3c 	bl	9bb4 <_dtoa_r>
    953c:	900e      	str	r0, [sp, #56]	; 0x38
    953e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    9540:	781b      	ldrb	r3, [r3, #0]
    9542:	2b30      	cmp	r3, #48	; 0x30
    9544:	eb00 0406 	add.w	r4, r0, r6
    9548:	d056      	beq.n	95f8 <_vfprintf_r+0x12ac>
    954a:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    954c:	441c      	add	r4, r3
    954e:	4640      	mov	r0, r8
    9550:	4629      	mov	r1, r5
    9552:	2200      	movs	r2, #0
    9554:	2300      	movs	r3, #0
    9556:	f005 fc81 	bl	ee5c <__aeabi_dcmpeq>
    955a:	2800      	cmp	r0, #0
    955c:	f000 808e 	beq.w	967c <_vfprintf_r+0x1330>
    9560:	4623      	mov	r3, r4
    9562:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    9564:	1a9b      	subs	r3, r3, r2
    9566:	9312      	str	r3, [sp, #72]	; 0x48
    9568:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    956a:	930f      	str	r3, [sp, #60]	; 0x3c
    956c:	9b07      	ldr	r3, [sp, #28]
    956e:	2b47      	cmp	r3, #71	; 0x47
    9570:	f43f ae42 	beq.w	91f8 <_vfprintf_r+0xeac>
    9574:	2f66      	cmp	r7, #102	; 0x66
    9576:	f47f ae46 	bne.w	9206 <_vfprintf_r+0xeba>
    957a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    957c:	f00b 0301 	and.w	r3, fp, #1
    9580:	2a00      	cmp	r2, #0
    9582:	ea43 0306 	orr.w	r3, r3, r6
    9586:	f340 8135 	ble.w	97f4 <_vfprintf_r+0x14a8>
    958a:	2b00      	cmp	r3, #0
    958c:	f040 8120 	bne.w	97d0 <_vfprintf_r+0x1484>
    9590:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    9592:	9307      	str	r3, [sp, #28]
    9594:	930b      	str	r3, [sp, #44]	; 0x2c
    9596:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    9598:	2b00      	cmp	r3, #0
    959a:	d07b      	beq.n	9694 <_vfprintf_r+0x1348>
    959c:	232d      	movs	r3, #45	; 0x2d
    959e:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
    95a2:	2600      	movs	r6, #0
    95a4:	f7ff b85f 	b.w	8666 <_vfprintf_r+0x31a>
    95a8:	3201      	adds	r2, #1
    95aa:	442c      	add	r4, r5
    95ac:	2a07      	cmp	r2, #7
    95ae:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    95b2:	e9ca b500 	strd	fp, r5, [sl]
    95b6:	dc3d      	bgt.n	9634 <_vfprintf_r+0x12e8>
    95b8:	f10a 0a08 	add.w	sl, sl, #8
    95bc:	e4ce      	b.n	8f5c <_vfprintf_r+0xc10>
    95be:	f04f 082d 	mov.w	r8, #45	; 0x2d
    95c2:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
    95c6:	f7ff b9bf 	b.w	8948 <_vfprintf_r+0x5fc>
    95ca:	232d      	movs	r3, #45	; 0x2d
    95cc:	4688      	mov	r8, r1
    95ce:	f102 4500 	add.w	r5, r2, #2147483648	; 0x80000000
    95d2:	9317      	str	r3, [sp, #92]	; 0x5c
    95d4:	e5e6      	b.n	91a4 <_vfprintf_r+0xe58>
    95d6:	aa21      	add	r2, sp, #132	; 0x84
    95d8:	9908      	ldr	r1, [sp, #32]
    95da:	980c      	ldr	r0, [sp, #48]	; 0x30
    95dc:	f002 ffba 	bl	c554 <__sprint_r>
    95e0:	2800      	cmp	r0, #0
    95e2:	f47e afdc 	bne.w	859e <_vfprintf_r+0x252>
    95e6:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
    95e8:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    95ea:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    95ee:	e4ca      	b.n	8f86 <_vfprintf_r+0xc3a>
    95f0:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    95f4:	f7ff ba1d 	b.w	8a32 <_vfprintf_r+0x6e6>
    95f8:	4640      	mov	r0, r8
    95fa:	4629      	mov	r1, r5
    95fc:	2200      	movs	r2, #0
    95fe:	2300      	movs	r3, #0
    9600:	f005 fc2c 	bl	ee5c <__aeabi_dcmpeq>
    9604:	2800      	cmp	r0, #0
    9606:	d1a0      	bne.n	954a <_vfprintf_r+0x11fe>
    9608:	f1c6 0301 	rsb	r3, r6, #1
    960c:	931b      	str	r3, [sp, #108]	; 0x6c
    960e:	e79d      	b.n	954c <_vfprintf_r+0x1200>
    9610:	2e00      	cmp	r6, #0
    9612:	bf08      	it	eq
    9614:	2601      	moveq	r6, #1
    9616:	e5b9      	b.n	918c <_vfprintf_r+0xe40>
    9618:	aa21      	add	r2, sp, #132	; 0x84
    961a:	9908      	ldr	r1, [sp, #32]
    961c:	980c      	ldr	r0, [sp, #48]	; 0x30
    961e:	f002 ff99 	bl	c554 <__sprint_r>
    9622:	2800      	cmp	r0, #0
    9624:	f47e afbb 	bne.w	859e <_vfprintf_r+0x252>
    9628:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    962a:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    962e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9632:	e724      	b.n	947e <_vfprintf_r+0x1132>
    9634:	aa21      	add	r2, sp, #132	; 0x84
    9636:	9908      	ldr	r1, [sp, #32]
    9638:	980c      	ldr	r0, [sp, #48]	; 0x30
    963a:	f002 ff8b 	bl	c554 <__sprint_r>
    963e:	2800      	cmp	r0, #0
    9640:	f47e afad 	bne.w	859e <_vfprintf_r+0x252>
    9644:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    9646:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    964a:	e487      	b.n	8f5c <_vfprintf_r+0xc10>
    964c:	f8dd b018 	ldr.w	fp, [sp, #24]
    9650:	f7ff b892 	b.w	8778 <_vfprintf_r+0x42c>
    9654:	a81f      	add	r0, sp, #124	; 0x7c
    9656:	a91c      	add	r1, sp, #112	; 0x70
    9658:	9004      	str	r0, [sp, #16]
    965a:	9103      	str	r1, [sp, #12]
    965c:	a81b      	add	r0, sp, #108	; 0x6c
    965e:	2102      	movs	r1, #2
    9660:	1c74      	adds	r4, r6, #1
    9662:	9002      	str	r0, [sp, #8]
    9664:	9401      	str	r4, [sp, #4]
    9666:	9100      	str	r1, [sp, #0]
    9668:	980c      	ldr	r0, [sp, #48]	; 0x30
    966a:	f000 faa3 	bl	9bb4 <_dtoa_r>
    966e:	900e      	str	r0, [sp, #56]	; 0x38
    9670:	2f47      	cmp	r7, #71	; 0x47
    9672:	f43f adb4 	beq.w	91de <_vfprintf_r+0xe92>
    9676:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    9678:	441c      	add	r4, r3
    967a:	e768      	b.n	954e <_vfprintf_r+0x1202>
    967c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    967e:	42a3      	cmp	r3, r4
    9680:	f4bf af6f 	bcs.w	9562 <_vfprintf_r+0x1216>
    9684:	2130      	movs	r1, #48	; 0x30
    9686:	1c5a      	adds	r2, r3, #1
    9688:	921f      	str	r2, [sp, #124]	; 0x7c
    968a:	7019      	strb	r1, [r3, #0]
    968c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
    968e:	429c      	cmp	r4, r3
    9690:	d8f9      	bhi.n	9686 <_vfprintf_r+0x133a>
    9692:	e766      	b.n	9562 <_vfprintf_r+0x1216>
    9694:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
    9698:	9e17      	ldr	r6, [sp, #92]	; 0x5c
    969a:	f7fe bfe0 	b.w	865e <_vfprintf_r+0x312>
    969e:	9b12      	ldr	r3, [sp, #72]	; 0x48
    96a0:	4619      	mov	r1, r3
    96a2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    96a4:	4299      	cmp	r1, r3
    96a6:	dc30      	bgt.n	970a <_vfprintf_r+0x13be>
    96a8:	f01b 0f01 	tst.w	fp, #1
    96ac:	d17e      	bne.n	97ac <_vfprintf_r+0x1460>
    96ae:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
    96b2:	9207      	str	r2, [sp, #28]
    96b4:	930b      	str	r3, [sp, #44]	; 0x2c
    96b6:	2767      	movs	r7, #103	; 0x67
    96b8:	e76d      	b.n	9596 <_vfprintf_r+0x124a>
    96ba:	aa21      	add	r2, sp, #132	; 0x84
    96bc:	9908      	ldr	r1, [sp, #32]
    96be:	980c      	ldr	r0, [sp, #48]	; 0x30
    96c0:	f002 ff48 	bl	c554 <__sprint_r>
    96c4:	2800      	cmp	r0, #0
    96c6:	f47e af6a 	bne.w	859e <_vfprintf_r+0x252>
    96ca:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    96cc:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    96d0:	e43c      	b.n	8f4c <_vfprintf_r+0xc00>
    96d2:	2606      	movs	r6, #6
    96d4:	e55a      	b.n	918c <_vfprintf_r+0xe40>
    96d6:	aa21      	add	r2, sp, #132	; 0x84
    96d8:	9908      	ldr	r1, [sp, #32]
    96da:	980c      	ldr	r0, [sp, #48]	; 0x30
    96dc:	f002 ff3a 	bl	c554 <__sprint_r>
    96e0:	2800      	cmp	r0, #0
    96e2:	f47e af5c 	bne.w	859e <_vfprintf_r+0x252>
    96e6:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
    96e8:	9a12      	ldr	r2, [sp, #72]	; 0x48
    96ea:	9c23      	ldr	r4, [sp, #140]	; 0x8c
    96ec:	1ad3      	subs	r3, r2, r3
    96ee:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    96f2:	e463      	b.n	8fbc <_vfprintf_r+0xc70>
    96f4:	9607      	str	r6, [sp, #28]
    96f6:	960b      	str	r6, [sp, #44]	; 0x2c
    96f8:	940d      	str	r4, [sp, #52]	; 0x34
    96fa:	4606      	mov	r6, r0
    96fc:	f8cd b018 	str.w	fp, [sp, #24]
    9700:	900f      	str	r0, [sp, #60]	; 0x3c
    9702:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
    9706:	f7fe bfaa 	b.w	865e <_vfprintf_r+0x312>
    970a:	e9dd 3212 	ldrd	r3, r2, [sp, #72]	; 0x48
    970e:	4413      	add	r3, r2
    9710:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    9712:	930b      	str	r3, [sp, #44]	; 0x2c
    9714:	2a00      	cmp	r2, #0
    9716:	dc06      	bgt.n	9726 <_vfprintf_r+0x13da>
    9718:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    971a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    971c:	f1c3 0301 	rsb	r3, r3, #1
    9720:	441a      	add	r2, r3
    9722:	4613      	mov	r3, r2
    9724:	920b      	str	r2, [sp, #44]	; 0x2c
    9726:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    972a:	9307      	str	r3, [sp, #28]
    972c:	2767      	movs	r7, #103	; 0x67
    972e:	e732      	b.n	9596 <_vfprintf_r+0x124a>
    9730:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    9734:	f7fe bf53 	b.w	85de <_vfprintf_r+0x292>
    9738:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    973c:	f7ff b8d9 	b.w	88f2 <_vfprintf_r+0x5a6>
    9740:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    9744:	f7fe bfcb 	b.w	86de <_vfprintf_r+0x392>
    9748:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    974c:	f7ff b90e 	b.w	896c <_vfprintf_r+0x620>
    9750:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    9754:	f7fe bfeb 	b.w	872e <_vfprintf_r+0x3e2>
    9758:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
    975c:	f7ff b8a7 	b.w	88ae <_vfprintf_r+0x562>
    9760:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    9764:	9309      	str	r3, [sp, #36]	; 0x24
    9766:	f7fe bf1f 	b.w	85a8 <_vfprintf_r+0x25c>
    976a:	46bb      	mov	fp, r7
    976c:	3201      	adds	r2, #1
    976e:	442c      	add	r4, r5
    9770:	2a07      	cmp	r2, #7
    9772:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
    9776:	e9ca b500 	strd	fp, r5, [sl]
    977a:	f77f aab0 	ble.w	8cde <_vfprintf_r+0x992>
    977e:	aa21      	add	r2, sp, #132	; 0x84
    9780:	9908      	ldr	r1, [sp, #32]
    9782:	980c      	ldr	r0, [sp, #48]	; 0x30
    9784:	f002 fee6 	bl	c554 <__sprint_r>
    9788:	2800      	cmp	r0, #0
    978a:	f47e af08 	bne.w	859e <_vfprintf_r+0x252>
    978e:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
    9792:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
    9796:	f7ff baa4 	b.w	8ce2 <_vfprintf_r+0x996>
    979a:	2330      	movs	r3, #48	; 0x30
    979c:	3230      	adds	r2, #48	; 0x30
    979e:	f88d 3076 	strb.w	r3, [sp, #118]	; 0x76
    97a2:	2304      	movs	r3, #4
    97a4:	f88d 2077 	strb.w	r2, [sp, #119]	; 0x77
    97a8:	9316      	str	r3, [sp, #88]	; 0x58
    97aa:	e56d      	b.n	9288 <_vfprintf_r+0xf3c>
    97ac:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    97ae:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    97b0:	4413      	add	r3, r2
    97b2:	930b      	str	r3, [sp, #44]	; 0x2c
    97b4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    97b8:	9307      	str	r3, [sp, #28]
    97ba:	2767      	movs	r7, #103	; 0x67
    97bc:	e6eb      	b.n	9596 <_vfprintf_r+0x124a>
    97be:	f01b 0201 	ands.w	r2, fp, #1
    97c2:	920f      	str	r2, [sp, #60]	; 0x3c
    97c4:	f47f ad67 	bne.w	9296 <_vfprintf_r+0xf4a>
    97c8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    97cc:	9307      	str	r3, [sp, #28]
    97ce:	e6e2      	b.n	9596 <_vfprintf_r+0x124a>
    97d0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    97d2:	18d3      	adds	r3, r2, r3
    97d4:	4433      	add	r3, r6
    97d6:	930b      	str	r3, [sp, #44]	; 0x2c
    97d8:	e7f6      	b.n	97c8 <_vfprintf_r+0x147c>
    97da:	9b11      	ldr	r3, [sp, #68]	; 0x44
    97dc:	4a14      	ldr	r2, [pc, #80]	; (9830 <_vfprintf_r+0x14e4>)
    97de:	2b00      	cmp	r3, #0
    97e0:	bfb6      	itet	lt
    97e2:	f04f 082d 	movlt.w	r8, #45	; 0x2d
    97e6:	f89d 8067 	ldrbge.w	r8, [sp, #103]	; 0x67
    97ea:	f88d 8067 	strblt.w	r8, [sp, #103]	; 0x67
    97ee:	4b11      	ldr	r3, [pc, #68]	; (9834 <_vfprintf_r+0x14e8>)
    97f0:	f7ff b8ac 	b.w	894c <_vfprintf_r+0x600>
    97f4:	b91b      	cbnz	r3, 97fe <_vfprintf_r+0x14b2>
    97f6:	2301      	movs	r3, #1
    97f8:	9307      	str	r3, [sp, #28]
    97fa:	930b      	str	r3, [sp, #44]	; 0x2c
    97fc:	e6cb      	b.n	9596 <_vfprintf_r+0x124a>
    97fe:	9b13      	ldr	r3, [sp, #76]	; 0x4c
    9800:	3301      	adds	r3, #1
    9802:	4433      	add	r3, r6
    9804:	930b      	str	r3, [sp, #44]	; 0x2c
    9806:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    980a:	9307      	str	r3, [sp, #28]
    980c:	e6c3      	b.n	9596 <_vfprintf_r+0x124a>
    980e:	4652      	mov	r2, sl
    9810:	e66d      	b.n	94ee <_vfprintf_r+0x11a2>
    9812:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    9814:	f899 7001 	ldrb.w	r7, [r9, #1]
    9818:	f853 6b04 	ldr.w	r6, [r3], #4
    981c:	930d      	str	r3, [sp, #52]	; 0x34
    981e:	4681      	mov	r9, r0
    9820:	ea46 76e6 	orr.w	r6, r6, r6, asr #31
    9824:	f7fe be0a 	b.w	843c <_vfprintf_r+0xf0>
    9828:	2302      	movs	r3, #2
    982a:	9316      	str	r3, [sp, #88]	; 0x58
    982c:	e52c      	b.n	9288 <_vfprintf_r+0xf3c>
    982e:	bf00      	nop
    9830:	0000f31c 	.word	0x0000f31c
    9834:	0000f320 	.word	0x0000f320

00009838 <vfprintf>:
    9838:	b410      	push	{r4}
    983a:	4c04      	ldr	r4, [pc, #16]	; (984c <vfprintf+0x14>)
    983c:	4613      	mov	r3, r2
    983e:	460a      	mov	r2, r1
    9840:	4601      	mov	r1, r0
    9842:	6820      	ldr	r0, [r4, #0]
    9844:	bc10      	pop	{r4}
    9846:	f7fe bd81 	b.w	834c <_vfprintf_r>
    984a:	bf00      	nop
    984c:	0001f6a0 	.word	0x0001f6a0

00009850 <__sbprintf>:
    9850:	b5f0      	push	{r4, r5, r6, r7, lr}
    9852:	460c      	mov	r4, r1
    9854:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
    9858:	8989      	ldrh	r1, [r1, #12]
    985a:	6e66      	ldr	r6, [r4, #100]	; 0x64
    985c:	89e5      	ldrh	r5, [r4, #14]
    985e:	9619      	str	r6, [sp, #100]	; 0x64
    9860:	f021 0102 	bic.w	r1, r1, #2
    9864:	6a66      	ldr	r6, [r4, #36]	; 0x24
    9866:	f8ad 500e 	strh.w	r5, [sp, #14]
    986a:	2500      	movs	r5, #0
    986c:	69e7      	ldr	r7, [r4, #28]
    986e:	f8ad 100c 	strh.w	r1, [sp, #12]
    9872:	9609      	str	r6, [sp, #36]	; 0x24
    9874:	9506      	str	r5, [sp, #24]
    9876:	ae1a      	add	r6, sp, #104	; 0x68
    9878:	f44f 6580 	mov.w	r5, #1024	; 0x400
    987c:	4669      	mov	r1, sp
    987e:	9600      	str	r6, [sp, #0]
    9880:	9604      	str	r6, [sp, #16]
    9882:	9502      	str	r5, [sp, #8]
    9884:	9505      	str	r5, [sp, #20]
    9886:	9707      	str	r7, [sp, #28]
    9888:	4606      	mov	r6, r0
    988a:	f7fe fd5f 	bl	834c <_vfprintf_r>
    988e:	1e05      	subs	r5, r0, #0
    9890:	db07      	blt.n	98a2 <__sbprintf+0x52>
    9892:	4630      	mov	r0, r6
    9894:	4669      	mov	r1, sp
    9896:	f001 f9a7 	bl	abe8 <_fflush_r>
    989a:	2800      	cmp	r0, #0
    989c:	bf18      	it	ne
    989e:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
    98a2:	f8bd 300c 	ldrh.w	r3, [sp, #12]
    98a6:	065b      	lsls	r3, r3, #25
    98a8:	d503      	bpl.n	98b2 <__sbprintf+0x62>
    98aa:	89a3      	ldrh	r3, [r4, #12]
    98ac:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    98b0:	81a3      	strh	r3, [r4, #12]
    98b2:	4628      	mov	r0, r5
    98b4:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
    98b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    98ba:	bf00      	nop

000098bc <__swsetup_r>:
    98bc:	b538      	push	{r3, r4, r5, lr}
    98be:	4b32      	ldr	r3, [pc, #200]	; (9988 <__swsetup_r+0xcc>)
    98c0:	681b      	ldr	r3, [r3, #0]
    98c2:	4605      	mov	r5, r0
    98c4:	460c      	mov	r4, r1
    98c6:	b10b      	cbz	r3, 98cc <__swsetup_r+0x10>
    98c8:	6b9a      	ldr	r2, [r3, #56]	; 0x38
    98ca:	b312      	cbz	r2, 9912 <__swsetup_r+0x56>
    98cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    98d0:	b293      	uxth	r3, r2
    98d2:	0718      	lsls	r0, r3, #28
    98d4:	d525      	bpl.n	9922 <__swsetup_r+0x66>
    98d6:	6920      	ldr	r0, [r4, #16]
    98d8:	2800      	cmp	r0, #0
    98da:	d02d      	beq.n	9938 <__swsetup_r+0x7c>
    98dc:	f013 0201 	ands.w	r2, r3, #1
    98e0:	d007      	beq.n	98f2 <__swsetup_r+0x36>
    98e2:	6963      	ldr	r3, [r4, #20]
    98e4:	2200      	movs	r2, #0
    98e6:	425b      	negs	r3, r3
    98e8:	61a3      	str	r3, [r4, #24]
    98ea:	60a2      	str	r2, [r4, #8]
    98ec:	b138      	cbz	r0, 98fe <__swsetup_r+0x42>
    98ee:	2000      	movs	r0, #0
    98f0:	bd38      	pop	{r3, r4, r5, pc}
    98f2:	0799      	lsls	r1, r3, #30
    98f4:	bf58      	it	pl
    98f6:	6962      	ldrpl	r2, [r4, #20]
    98f8:	60a2      	str	r2, [r4, #8]
    98fa:	2800      	cmp	r0, #0
    98fc:	d1f7      	bne.n	98ee <__swsetup_r+0x32>
    98fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    9902:	061a      	lsls	r2, r3, #24
    9904:	d5f4      	bpl.n	98f0 <__swsetup_r+0x34>
    9906:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    990a:	81a3      	strh	r3, [r4, #12]
    990c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    9910:	bd38      	pop	{r3, r4, r5, pc}
    9912:	4618      	mov	r0, r3
    9914:	f001 fa6e 	bl	adf4 <__sinit>
    9918:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    991c:	b293      	uxth	r3, r2
    991e:	0718      	lsls	r0, r3, #28
    9920:	d4d9      	bmi.n	98d6 <__swsetup_r+0x1a>
    9922:	06d9      	lsls	r1, r3, #27
    9924:	d528      	bpl.n	9978 <__swsetup_r+0xbc>
    9926:	0758      	lsls	r0, r3, #29
    9928:	d412      	bmi.n	9950 <__swsetup_r+0x94>
    992a:	6920      	ldr	r0, [r4, #16]
    992c:	f042 0308 	orr.w	r3, r2, #8
    9930:	81a3      	strh	r3, [r4, #12]
    9932:	b29b      	uxth	r3, r3
    9934:	2800      	cmp	r0, #0
    9936:	d1d1      	bne.n	98dc <__swsetup_r+0x20>
    9938:	f403 7220 	and.w	r2, r3, #640	; 0x280
    993c:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
    9940:	d0cc      	beq.n	98dc <__swsetup_r+0x20>
    9942:	4628      	mov	r0, r5
    9944:	4621      	mov	r1, r4
    9946:	f001 fc47 	bl	b1d8 <__smakebuf_r>
    994a:	89a3      	ldrh	r3, [r4, #12]
    994c:	6920      	ldr	r0, [r4, #16]
    994e:	e7c5      	b.n	98dc <__swsetup_r+0x20>
    9950:	6b21      	ldr	r1, [r4, #48]	; 0x30
    9952:	b151      	cbz	r1, 996a <__swsetup_r+0xae>
    9954:	f104 0340 	add.w	r3, r4, #64	; 0x40
    9958:	4299      	cmp	r1, r3
    995a:	d004      	beq.n	9966 <__swsetup_r+0xaa>
    995c:	4628      	mov	r0, r5
    995e:	f001 fab9 	bl	aed4 <_free_r>
    9962:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    9966:	2300      	movs	r3, #0
    9968:	6323      	str	r3, [r4, #48]	; 0x30
    996a:	2300      	movs	r3, #0
    996c:	6920      	ldr	r0, [r4, #16]
    996e:	6063      	str	r3, [r4, #4]
    9970:	f022 0224 	bic.w	r2, r2, #36	; 0x24
    9974:	6020      	str	r0, [r4, #0]
    9976:	e7d9      	b.n	992c <__swsetup_r+0x70>
    9978:	f042 0240 	orr.w	r2, r2, #64	; 0x40
    997c:	2309      	movs	r3, #9
    997e:	602b      	str	r3, [r5, #0]
    9980:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    9984:	81a2      	strh	r2, [r4, #12]
    9986:	bd38      	pop	{r3, r4, r5, pc}
    9988:	0001f6a0 	.word	0x0001f6a0

0000998c <__register_exitproc>:
    998c:	b4f0      	push	{r4, r5, r6, r7}
    998e:	4c18      	ldr	r4, [pc, #96]	; (99f0 <__register_exitproc+0x64>)
    9990:	6825      	ldr	r5, [r4, #0]
    9992:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
    9996:	b314      	cbz	r4, 99de <__register_exitproc+0x52>
    9998:	6865      	ldr	r5, [r4, #4]
    999a:	2d1f      	cmp	r5, #31
    999c:	dc24      	bgt.n	99e8 <__register_exitproc+0x5c>
    999e:	b938      	cbnz	r0, 99b0 <__register_exitproc+0x24>
    99a0:	1cab      	adds	r3, r5, #2
    99a2:	3501      	adds	r5, #1
    99a4:	6065      	str	r5, [r4, #4]
    99a6:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
    99aa:	2000      	movs	r0, #0
    99ac:	bcf0      	pop	{r4, r5, r6, r7}
    99ae:	4770      	bx	lr
    99b0:	eb04 0685 	add.w	r6, r4, r5, lsl #2
    99b4:	2701      	movs	r7, #1
    99b6:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
    99ba:	fa07 f205 	lsl.w	r2, r7, r5
    99be:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
    99c2:	2802      	cmp	r0, #2
    99c4:	ea47 0702 	orr.w	r7, r7, r2
    99c8:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
    99cc:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
    99d0:	d1e6      	bne.n	99a0 <__register_exitproc+0x14>
    99d2:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
    99d6:	431a      	orrs	r2, r3
    99d8:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
    99dc:	e7e0      	b.n	99a0 <__register_exitproc+0x14>
    99de:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
    99e2:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
    99e6:	e7d7      	b.n	9998 <__register_exitproc+0xc>
    99e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    99ec:	e7de      	b.n	99ac <__register_exitproc+0x20>
    99ee:	bf00      	nop
    99f0:	0000f2f0 	.word	0x0000f2f0

000099f4 <__call_exitprocs>:
    99f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    99f8:	4b24      	ldr	r3, [pc, #144]	; (9a8c <__call_exitprocs+0x98>)
    99fa:	b083      	sub	sp, #12
    99fc:	f8d3 b000 	ldr.w	fp, [r3]
    9a00:	9001      	str	r0, [sp, #4]
    9a02:	468a      	mov	sl, r1
    9a04:	f04f 0800 	mov.w	r8, #0
    9a08:	f8db 6148 	ldr.w	r6, [fp, #328]	; 0x148
    9a0c:	b196      	cbz	r6, 9a34 <__call_exitprocs+0x40>
    9a0e:	6874      	ldr	r4, [r6, #4]
    9a10:	1e65      	subs	r5, r4, #1
    9a12:	d40f      	bmi.n	9a34 <__call_exitprocs+0x40>
    9a14:	3401      	adds	r4, #1
    9a16:	eb06 0484 	add.w	r4, r6, r4, lsl #2
    9a1a:	2701      	movs	r7, #1
    9a1c:	f1ba 0f00 	cmp.w	sl, #0
    9a20:	d00b      	beq.n	9a3a <__call_exitprocs+0x46>
    9a22:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
    9a26:	4553      	cmp	r3, sl
    9a28:	d007      	beq.n	9a3a <__call_exitprocs+0x46>
    9a2a:	3d01      	subs	r5, #1
    9a2c:	1c6b      	adds	r3, r5, #1
    9a2e:	f1a4 0404 	sub.w	r4, r4, #4
    9a32:	d1f3      	bne.n	9a1c <__call_exitprocs+0x28>
    9a34:	b003      	add	sp, #12
    9a36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9a3a:	6873      	ldr	r3, [r6, #4]
    9a3c:	6822      	ldr	r2, [r4, #0]
    9a3e:	3b01      	subs	r3, #1
    9a40:	42ab      	cmp	r3, r5
    9a42:	bf0c      	ite	eq
    9a44:	6075      	streq	r5, [r6, #4]
    9a46:	f8c4 8000 	strne.w	r8, [r4]
    9a4a:	2a00      	cmp	r2, #0
    9a4c:	d0ed      	beq.n	9a2a <__call_exitprocs+0x36>
    9a4e:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
    9a52:	f8d6 9004 	ldr.w	r9, [r6, #4]
    9a56:	fa07 fc05 	lsl.w	ip, r7, r5
    9a5a:	ea1c 0f01 	tst.w	ip, r1
    9a5e:	d108      	bne.n	9a72 <__call_exitprocs+0x7e>
    9a60:	4790      	blx	r2
    9a62:	6872      	ldr	r2, [r6, #4]
    9a64:	454a      	cmp	r2, r9
    9a66:	d1cf      	bne.n	9a08 <__call_exitprocs+0x14>
    9a68:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
    9a6c:	42b3      	cmp	r3, r6
    9a6e:	d0dc      	beq.n	9a2a <__call_exitprocs+0x36>
    9a70:	e7ca      	b.n	9a08 <__call_exitprocs+0x14>
    9a72:	f8d6 318c 	ldr.w	r3, [r6, #396]	; 0x18c
    9a76:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
    9a7a:	ea1c 0f03 	tst.w	ip, r3
    9a7e:	d102      	bne.n	9a86 <__call_exitprocs+0x92>
    9a80:	9801      	ldr	r0, [sp, #4]
    9a82:	4790      	blx	r2
    9a84:	e7ed      	b.n	9a62 <__call_exitprocs+0x6e>
    9a86:	4608      	mov	r0, r1
    9a88:	4790      	blx	r2
    9a8a:	e7ea      	b.n	9a62 <__call_exitprocs+0x6e>
    9a8c:	0000f2f0 	.word	0x0000f2f0

00009a90 <quorem>:
    9a90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9a94:	6903      	ldr	r3, [r0, #16]
    9a96:	690f      	ldr	r7, [r1, #16]
    9a98:	42bb      	cmp	r3, r7
    9a9a:	b083      	sub	sp, #12
    9a9c:	f2c0 8086 	blt.w	9bac <quorem+0x11c>
    9aa0:	3f01      	subs	r7, #1
    9aa2:	f101 0614 	add.w	r6, r1, #20
    9aa6:	f100 0a14 	add.w	sl, r0, #20
    9aaa:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
    9aae:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
    9ab2:	00bc      	lsls	r4, r7, #2
    9ab4:	3301      	adds	r3, #1
    9ab6:	9400      	str	r4, [sp, #0]
    9ab8:	eb06 0904 	add.w	r9, r6, r4
    9abc:	429a      	cmp	r2, r3
    9abe:	4454      	add	r4, sl
    9ac0:	fbb2 f8f3 	udiv	r8, r2, r3
    9ac4:	9401      	str	r4, [sp, #4]
    9ac6:	d33a      	bcc.n	9b3e <quorem+0xae>
    9ac8:	2500      	movs	r5, #0
    9aca:	462a      	mov	r2, r5
    9acc:	46b6      	mov	lr, r6
    9ace:	46d4      	mov	ip, sl
    9ad0:	f85e 4b04 	ldr.w	r4, [lr], #4
    9ad4:	f8dc 3000 	ldr.w	r3, [ip]
    9ad8:	fa1f fb84 	uxth.w	fp, r4
    9adc:	fb08 550b 	mla	r5, r8, fp, r5
    9ae0:	ea4f 4b15 	mov.w	fp, r5, lsr #16
    9ae4:	0c24      	lsrs	r4, r4, #16
    9ae6:	fb08 b404 	mla	r4, r8, r4, fp
    9aea:	b2ad      	uxth	r5, r5
    9aec:	1b55      	subs	r5, r2, r5
    9aee:	b2a2      	uxth	r2, r4
    9af0:	ebc2 4213 	rsb	r2, r2, r3, lsr #16
    9af4:	fa15 f383 	uxtah	r3, r5, r3
    9af8:	eb02 4223 	add.w	r2, r2, r3, asr #16
    9afc:	b29b      	uxth	r3, r3
    9afe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
    9b02:	45f1      	cmp	r9, lr
    9b04:	ea4f 4514 	mov.w	r5, r4, lsr #16
    9b08:	f84c 3b04 	str.w	r3, [ip], #4
    9b0c:	ea4f 4222 	mov.w	r2, r2, asr #16
    9b10:	d2de      	bcs.n	9ad0 <quorem+0x40>
    9b12:	9b00      	ldr	r3, [sp, #0]
    9b14:	f85a 3003 	ldr.w	r3, [sl, r3]
    9b18:	b98b      	cbnz	r3, 9b3e <quorem+0xae>
    9b1a:	9a01      	ldr	r2, [sp, #4]
    9b1c:	1f13      	subs	r3, r2, #4
    9b1e:	459a      	cmp	sl, r3
    9b20:	d20c      	bcs.n	9b3c <quorem+0xac>
    9b22:	f852 3c04 	ldr.w	r3, [r2, #-4]
    9b26:	b94b      	cbnz	r3, 9b3c <quorem+0xac>
    9b28:	f1a2 0308 	sub.w	r3, r2, #8
    9b2c:	e002      	b.n	9b34 <quorem+0xa4>
    9b2e:	681a      	ldr	r2, [r3, #0]
    9b30:	3b04      	subs	r3, #4
    9b32:	b91a      	cbnz	r2, 9b3c <quorem+0xac>
    9b34:	459a      	cmp	sl, r3
    9b36:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
    9b3a:	d3f8      	bcc.n	9b2e <quorem+0x9e>
    9b3c:	6107      	str	r7, [r0, #16]
    9b3e:	4604      	mov	r4, r0
    9b40:	f002 f9ca 	bl	bed8 <__mcmp>
    9b44:	2800      	cmp	r0, #0
    9b46:	db2d      	blt.n	9ba4 <quorem+0x114>
    9b48:	f108 0801 	add.w	r8, r8, #1
    9b4c:	4650      	mov	r0, sl
    9b4e:	2300      	movs	r3, #0
    9b50:	f856 1b04 	ldr.w	r1, [r6], #4
    9b54:	6805      	ldr	r5, [r0, #0]
    9b56:	b28a      	uxth	r2, r1
    9b58:	1a9a      	subs	r2, r3, r2
    9b5a:	0c0b      	lsrs	r3, r1, #16
    9b5c:	fa12 f285 	uxtah	r2, r2, r5
    9b60:	ebc3 4315 	rsb	r3, r3, r5, lsr #16
    9b64:	eb03 4322 	add.w	r3, r3, r2, asr #16
    9b68:	b292      	uxth	r2, r2
    9b6a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
    9b6e:	45b1      	cmp	r9, r6
    9b70:	f840 2b04 	str.w	r2, [r0], #4
    9b74:	ea4f 4323 	mov.w	r3, r3, asr #16
    9b78:	d2ea      	bcs.n	9b50 <quorem+0xc0>
    9b7a:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
    9b7e:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
    9b82:	b97a      	cbnz	r2, 9ba4 <quorem+0x114>
    9b84:	1f1a      	subs	r2, r3, #4
    9b86:	4592      	cmp	sl, r2
    9b88:	d20b      	bcs.n	9ba2 <quorem+0x112>
    9b8a:	f853 2c04 	ldr.w	r2, [r3, #-4]
    9b8e:	b942      	cbnz	r2, 9ba2 <quorem+0x112>
    9b90:	3b08      	subs	r3, #8
    9b92:	e002      	b.n	9b9a <quorem+0x10a>
    9b94:	681a      	ldr	r2, [r3, #0]
    9b96:	3b04      	subs	r3, #4
    9b98:	b91a      	cbnz	r2, 9ba2 <quorem+0x112>
    9b9a:	459a      	cmp	sl, r3
    9b9c:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
    9ba0:	d3f8      	bcc.n	9b94 <quorem+0x104>
    9ba2:	6127      	str	r7, [r4, #16]
    9ba4:	4640      	mov	r0, r8
    9ba6:	b003      	add	sp, #12
    9ba8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9bac:	2000      	movs	r0, #0
    9bae:	b003      	add	sp, #12
    9bb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00009bb4 <_dtoa_r>:
    9bb4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9bb8:	6c01      	ldr	r1, [r0, #64]	; 0x40
    9bba:	b097      	sub	sp, #92	; 0x5c
    9bbc:	4616      	mov	r6, r2
    9bbe:	461f      	mov	r7, r3
    9bc0:	4604      	mov	r4, r0
    9bc2:	9d23      	ldr	r5, [sp, #140]	; 0x8c
    9bc4:	e9cd 6702 	strd	r6, r7, [sp, #8]
    9bc8:	b141      	cbz	r1, 9bdc <_dtoa_r+0x28>
    9bca:	6c42      	ldr	r2, [r0, #68]	; 0x44
    9bcc:	604a      	str	r2, [r1, #4]
    9bce:	2301      	movs	r3, #1
    9bd0:	4093      	lsls	r3, r2
    9bd2:	608b      	str	r3, [r1, #8]
    9bd4:	f001 ff10 	bl	b9f8 <_Bfree>
    9bd8:	2300      	movs	r3, #0
    9bda:	6423      	str	r3, [r4, #64]	; 0x40
    9bdc:	1e3e      	subs	r6, r7, #0
    9bde:	bfb4      	ite	lt
    9be0:	2301      	movlt	r3, #1
    9be2:	2300      	movge	r3, #0
    9be4:	602b      	str	r3, [r5, #0]
    9be6:	4b76      	ldr	r3, [pc, #472]	; (9dc0 <_dtoa_r+0x20c>)
    9be8:	bfbc      	itt	lt
    9bea:	f026 4600 	biclt.w	r6, r6, #2147483648	; 0x80000000
    9bee:	9603      	strlt	r6, [sp, #12]
    9bf0:	43b3      	bics	r3, r6
    9bf2:	f000 80af 	beq.w	9d54 <_dtoa_r+0x1a0>
    9bf6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    9bfa:	e9cd 2308 	strd	r2, r3, [sp, #32]
    9bfe:	4610      	mov	r0, r2
    9c00:	4619      	mov	r1, r3
    9c02:	2200      	movs	r2, #0
    9c04:	2300      	movs	r3, #0
    9c06:	f005 f929 	bl	ee5c <__aeabi_dcmpeq>
    9c0a:	4607      	mov	r7, r0
    9c0c:	b178      	cbz	r0, 9c2e <_dtoa_r+0x7a>
    9c0e:	9a22      	ldr	r2, [sp, #136]	; 0x88
    9c10:	2301      	movs	r3, #1
    9c12:	6013      	str	r3, [r2, #0]
    9c14:	9b24      	ldr	r3, [sp, #144]	; 0x90
    9c16:	2b00      	cmp	r3, #0
    9c18:	f000 833b 	beq.w	a292 <_dtoa_r+0x6de>
    9c1c:	4b69      	ldr	r3, [pc, #420]	; (9dc4 <_dtoa_r+0x210>)
    9c1e:	9a24      	ldr	r2, [sp, #144]	; 0x90
    9c20:	6013      	str	r3, [r2, #0]
    9c22:	3b01      	subs	r3, #1
    9c24:	9304      	str	r3, [sp, #16]
    9c26:	9804      	ldr	r0, [sp, #16]
    9c28:	b017      	add	sp, #92	; 0x5c
    9c2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9c2e:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
    9c32:	aa14      	add	r2, sp, #80	; 0x50
    9c34:	ab15      	add	r3, sp, #84	; 0x54
    9c36:	e9cd 3200 	strd	r3, r2, [sp]
    9c3a:	4620      	mov	r0, r4
    9c3c:	4642      	mov	r2, r8
    9c3e:	464b      	mov	r3, r9
    9c40:	f002 fa76 	bl	c130 <__d2b>
    9c44:	0d35      	lsrs	r5, r6, #20
    9c46:	4683      	mov	fp, r0
    9c48:	f040 809a 	bne.w	9d80 <_dtoa_r+0x1cc>
    9c4c:	e9dd 8514 	ldrd	r8, r5, [sp, #80]	; 0x50
    9c50:	4445      	add	r5, r8
    9c52:	f205 4332 	addw	r3, r5, #1074	; 0x432
    9c56:	2b20      	cmp	r3, #32
    9c58:	f340 83eb 	ble.w	a432 <_dtoa_r+0x87e>
    9c5c:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
    9c60:	409e      	lsls	r6, r3
    9c62:	9b02      	ldr	r3, [sp, #8]
    9c64:	f205 4012 	addw	r0, r5, #1042	; 0x412
    9c68:	fa23 f000 	lsr.w	r0, r3, r0
    9c6c:	4330      	orrs	r0, r6
    9c6e:	f004 fe13 	bl	e898 <__aeabi_ui2d>
    9c72:	f1a1 73f8 	sub.w	r3, r1, #32505856	; 0x1f00000
    9c76:	2101      	movs	r1, #1
    9c78:	4602      	mov	r2, r0
    9c7a:	3d01      	subs	r5, #1
    9c7c:	910d      	str	r1, [sp, #52]	; 0x34
    9c7e:	4610      	mov	r0, r2
    9c80:	4619      	mov	r1, r3
    9c82:	2200      	movs	r2, #0
    9c84:	4b50      	ldr	r3, [pc, #320]	; (9dc8 <_dtoa_r+0x214>)
    9c86:	f004 fcc9 	bl	e61c <__aeabi_dsub>
    9c8a:	a347      	add	r3, pc, #284	; (adr r3, 9da8 <_dtoa_r+0x1f4>)
    9c8c:	e9d3 2300 	ldrd	r2, r3, [r3]
    9c90:	f004 fe7c 	bl	e98c <__aeabi_dmul>
    9c94:	a346      	add	r3, pc, #280	; (adr r3, 9db0 <_dtoa_r+0x1fc>)
    9c96:	e9d3 2300 	ldrd	r2, r3, [r3]
    9c9a:	f004 fcc1 	bl	e620 <__adddf3>
    9c9e:	4606      	mov	r6, r0
    9ca0:	4628      	mov	r0, r5
    9ca2:	460f      	mov	r7, r1
    9ca4:	f004 fe08 	bl	e8b8 <__aeabi_i2d>
    9ca8:	a343      	add	r3, pc, #268	; (adr r3, 9db8 <_dtoa_r+0x204>)
    9caa:	e9d3 2300 	ldrd	r2, r3, [r3]
    9cae:	f004 fe6d 	bl	e98c <__aeabi_dmul>
    9cb2:	4602      	mov	r2, r0
    9cb4:	460b      	mov	r3, r1
    9cb6:	4630      	mov	r0, r6
    9cb8:	4639      	mov	r1, r7
    9cba:	f004 fcb1 	bl	e620 <__adddf3>
    9cbe:	4606      	mov	r6, r0
    9cc0:	460f      	mov	r7, r1
    9cc2:	f005 f913 	bl	eeec <__aeabi_d2iz>
    9cc6:	2200      	movs	r2, #0
    9cc8:	4682      	mov	sl, r0
    9cca:	2300      	movs	r3, #0
    9ccc:	4630      	mov	r0, r6
    9cce:	4639      	mov	r1, r7
    9cd0:	f005 f8ce 	bl	ee70 <__aeabi_dcmplt>
    9cd4:	2800      	cmp	r0, #0
    9cd6:	f040 82cf 	bne.w	a278 <_dtoa_r+0x6c4>
    9cda:	eba8 0505 	sub.w	r5, r8, r5
    9cde:	1e6b      	subs	r3, r5, #1
    9ce0:	f1ba 0f16 	cmp.w	sl, #22
    9ce4:	9305      	str	r3, [sp, #20]
    9ce6:	f200 82bc 	bhi.w	a262 <_dtoa_r+0x6ae>
    9cea:	4b38      	ldr	r3, [pc, #224]	; (9dcc <_dtoa_r+0x218>)
    9cec:	eb03 03ca 	add.w	r3, r3, sl, lsl #3
    9cf0:	e9d3 2300 	ldrd	r2, r3, [r3]
    9cf4:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
    9cf8:	f005 f8ba 	bl	ee70 <__aeabi_dcmplt>
    9cfc:	2800      	cmp	r0, #0
    9cfe:	d06b      	beq.n	9dd8 <_dtoa_r+0x224>
    9d00:	2300      	movs	r3, #0
    9d02:	930c      	str	r3, [sp, #48]	; 0x30
    9d04:	9b05      	ldr	r3, [sp, #20]
    9d06:	2b00      	cmp	r3, #0
    9d08:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    9d0c:	f2c0 82af 	blt.w	a26e <_dtoa_r+0x6ba>
    9d10:	f04f 0900 	mov.w	r9, #0
    9d14:	f1ba 0f00 	cmp.w	sl, #0
    9d18:	da64      	bge.n	9de4 <_dtoa_r+0x230>
    9d1a:	f1ca 0300 	rsb	r3, sl, #0
    9d1e:	930b      	str	r3, [sp, #44]	; 0x2c
    9d20:	9b20      	ldr	r3, [sp, #128]	; 0x80
    9d22:	f8cd a018 	str.w	sl, [sp, #24]
    9d26:	2b09      	cmp	r3, #9
    9d28:	eba9 090a 	sub.w	r9, r9, sl
    9d2c:	f04f 0a00 	mov.w	sl, #0
    9d30:	d861      	bhi.n	9df6 <_dtoa_r+0x242>
    9d32:	2b05      	cmp	r3, #5
    9d34:	f340 837b 	ble.w	a42e <_dtoa_r+0x87a>
    9d38:	3b04      	subs	r3, #4
    9d3a:	9320      	str	r3, [sp, #128]	; 0x80
    9d3c:	2500      	movs	r5, #0
    9d3e:	9b20      	ldr	r3, [sp, #128]	; 0x80
    9d40:	3b02      	subs	r3, #2
    9d42:	2b03      	cmp	r3, #3
    9d44:	f200 867d 	bhi.w	aa42 <_dtoa_r+0xe8e>
    9d48:	e8df f013 	tbh	[pc, r3, lsl #1]
    9d4c:	049f04a2 	.word	0x049f04a2
    9d50:	04920478 	.word	0x04920478
    9d54:	9a22      	ldr	r2, [sp, #136]	; 0x88
    9d56:	f242 730f 	movw	r3, #9999	; 0x270f
    9d5a:	6013      	str	r3, [r2, #0]
    9d5c:	9b02      	ldr	r3, [sp, #8]
    9d5e:	f3c6 0613 	ubfx	r6, r6, #0, #20
    9d62:	4333      	orrs	r3, r6
    9d64:	d119      	bne.n	9d9a <_dtoa_r+0x1e6>
    9d66:	9b24      	ldr	r3, [sp, #144]	; 0x90
    9d68:	2b00      	cmp	r3, #0
    9d6a:	f000 8679 	beq.w	aa60 <_dtoa_r+0xeac>
    9d6e:	4b18      	ldr	r3, [pc, #96]	; (9dd0 <_dtoa_r+0x21c>)
    9d70:	9304      	str	r3, [sp, #16]
    9d72:	3308      	adds	r3, #8
    9d74:	9a24      	ldr	r2, [sp, #144]	; 0x90
    9d76:	9804      	ldr	r0, [sp, #16]
    9d78:	6013      	str	r3, [r2, #0]
    9d7a:	b017      	add	sp, #92	; 0x5c
    9d7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    9d80:	f3c9 0113 	ubfx	r1, r9, #0, #20
    9d84:	f041 537f 	orr.w	r3, r1, #1069547520	; 0x3fc00000
    9d88:	4642      	mov	r2, r8
    9d8a:	f2a5 35ff 	subw	r5, r5, #1023	; 0x3ff
    9d8e:	970d      	str	r7, [sp, #52]	; 0x34
    9d90:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
    9d94:	f8dd 8050 	ldr.w	r8, [sp, #80]	; 0x50
    9d98:	e771      	b.n	9c7e <_dtoa_r+0xca>
    9d9a:	9b24      	ldr	r3, [sp, #144]	; 0x90
    9d9c:	2b00      	cmp	r3, #0
    9d9e:	f040 843b 	bne.w	a618 <_dtoa_r+0xa64>
    9da2:	4b0c      	ldr	r3, [pc, #48]	; (9dd4 <_dtoa_r+0x220>)
    9da4:	9304      	str	r3, [sp, #16]
    9da6:	e73e      	b.n	9c26 <_dtoa_r+0x72>
    9da8:	636f4361 	.word	0x636f4361
    9dac:	3fd287a7 	.word	0x3fd287a7
    9db0:	8b60c8b3 	.word	0x8b60c8b3
    9db4:	3fc68a28 	.word	0x3fc68a28
    9db8:	509f79fb 	.word	0x509f79fb
    9dbc:	3fd34413 	.word	0x3fd34413
    9dc0:	7ff00000 	.word	0x7ff00000
    9dc4:	0000f355 	.word	0x0000f355
    9dc8:	3ff80000 	.word	0x3ff80000
    9dcc:	0000f3c0 	.word	0x0000f3c0
    9dd0:	0000f35c 	.word	0x0000f35c
    9dd4:	0000f358 	.word	0x0000f358
    9dd8:	9b05      	ldr	r3, [sp, #20]
    9dda:	900c      	str	r0, [sp, #48]	; 0x30
    9ddc:	2b00      	cmp	r3, #0
    9dde:	f2c0 8246 	blt.w	a26e <_dtoa_r+0x6ba>
    9de2:	4681      	mov	r9, r0
    9de4:	9b05      	ldr	r3, [sp, #20]
    9de6:	4453      	add	r3, sl
    9de8:	e9cd 3a05 	strd	r3, sl, [sp, #20]
    9dec:	2300      	movs	r3, #0
    9dee:	930b      	str	r3, [sp, #44]	; 0x2c
    9df0:	9b20      	ldr	r3, [sp, #128]	; 0x80
    9df2:	2b09      	cmp	r3, #9
    9df4:	d99d      	bls.n	9d32 <_dtoa_r+0x17e>
    9df6:	2300      	movs	r3, #0
    9df8:	2501      	movs	r5, #1
    9dfa:	9320      	str	r3, [sp, #128]	; 0x80
    9dfc:	9321      	str	r3, [sp, #132]	; 0x84
    9dfe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    9e02:	950a      	str	r5, [sp, #40]	; 0x28
    9e04:	9307      	str	r3, [sp, #28]
    9e06:	2100      	movs	r1, #0
    9e08:	9b07      	ldr	r3, [sp, #28]
    9e0a:	6461      	str	r1, [r4, #68]	; 0x44
    9e0c:	9310      	str	r3, [sp, #64]	; 0x40
    9e0e:	4620      	mov	r0, r4
    9e10:	f001 fdcc 	bl	b9ac <_Balloc>
    9e14:	9004      	str	r0, [sp, #16]
    9e16:	2800      	cmp	r0, #0
    9e18:	f000 861b 	beq.w	aa52 <_dtoa_r+0xe9e>
    9e1c:	9b04      	ldr	r3, [sp, #16]
    9e1e:	6423      	str	r3, [r4, #64]	; 0x40
    9e20:	9b07      	ldr	r3, [sp, #28]
    9e22:	2b0e      	cmp	r3, #14
    9e24:	f200 8130 	bhi.w	a088 <_dtoa_r+0x4d4>
    9e28:	2d00      	cmp	r5, #0
    9e2a:	f000 812d 	beq.w	a088 <_dtoa_r+0x4d4>
    9e2e:	9906      	ldr	r1, [sp, #24]
    9e30:	2900      	cmp	r1, #0
    9e32:	f340 8474 	ble.w	a71e <_dtoa_r+0xb6a>
    9e36:	4ba8      	ldr	r3, [pc, #672]	; (a0d8 <_dtoa_r+0x524>)
    9e38:	f001 020f 	and.w	r2, r1, #15
    9e3c:	110d      	asrs	r5, r1, #4
    9e3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    9e42:	06ea      	lsls	r2, r5, #27
    9e44:	e9d3 6700 	ldrd	r6, r7, [r3]
    9e48:	f140 843a 	bpl.w	a6c0 <_dtoa_r+0xb0c>
    9e4c:	4ba3      	ldr	r3, [pc, #652]	; (a0dc <_dtoa_r+0x528>)
    9e4e:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
    9e52:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
    9e56:	f004 fec3 	bl	ebe0 <__aeabi_ddiv>
    9e5a:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
    9e5e:	2303      	movs	r3, #3
    9e60:	f005 050f 	and.w	r5, r5, #15
    9e64:	9302      	str	r3, [sp, #8]
    9e66:	b1a5      	cbz	r5, 9e92 <_dtoa_r+0x2de>
    9e68:	9411      	str	r4, [sp, #68]	; 0x44
    9e6a:	f8df 8270 	ldr.w	r8, [pc, #624]	; a0dc <_dtoa_r+0x528>
    9e6e:	9c02      	ldr	r4, [sp, #8]
    9e70:	07eb      	lsls	r3, r5, #31
    9e72:	d508      	bpl.n	9e86 <_dtoa_r+0x2d2>
    9e74:	4630      	mov	r0, r6
    9e76:	4639      	mov	r1, r7
    9e78:	e9d8 2300 	ldrd	r2, r3, [r8]
    9e7c:	f004 fd86 	bl	e98c <__aeabi_dmul>
    9e80:	3401      	adds	r4, #1
    9e82:	4606      	mov	r6, r0
    9e84:	460f      	mov	r7, r1
    9e86:	106d      	asrs	r5, r5, #1
    9e88:	f108 0808 	add.w	r8, r8, #8
    9e8c:	d1f0      	bne.n	9e70 <_dtoa_r+0x2bc>
    9e8e:	9402      	str	r4, [sp, #8]
    9e90:	9c11      	ldr	r4, [sp, #68]	; 0x44
    9e92:	463b      	mov	r3, r7
    9e94:	4632      	mov	r2, r6
    9e96:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
    9e9a:	f004 fea1 	bl	ebe0 <__aeabi_ddiv>
    9e9e:	4607      	mov	r7, r0
    9ea0:	4688      	mov	r8, r1
    9ea2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    9ea4:	b143      	cbz	r3, 9eb8 <_dtoa_r+0x304>
    9ea6:	2200      	movs	r2, #0
    9ea8:	4b8d      	ldr	r3, [pc, #564]	; (a0e0 <_dtoa_r+0x52c>)
    9eaa:	4638      	mov	r0, r7
    9eac:	4641      	mov	r1, r8
    9eae:	f004 ffdf 	bl	ee70 <__aeabi_dcmplt>
    9eb2:	2800      	cmp	r0, #0
    9eb4:	f040 8538 	bne.w	a928 <_dtoa_r+0xd74>
    9eb8:	9802      	ldr	r0, [sp, #8]
    9eba:	f004 fcfd 	bl	e8b8 <__aeabi_i2d>
    9ebe:	463a      	mov	r2, r7
    9ec0:	4643      	mov	r3, r8
    9ec2:	f004 fd63 	bl	e98c <__aeabi_dmul>
    9ec6:	4b87      	ldr	r3, [pc, #540]	; (a0e4 <_dtoa_r+0x530>)
    9ec8:	2200      	movs	r2, #0
    9eca:	f004 fba9 	bl	e620 <__adddf3>
    9ece:	f1a1 7350 	sub.w	r3, r1, #54525952	; 0x3400000
    9ed2:	e9cd 0102 	strd	r0, r1, [sp, #8]
    9ed6:	9303      	str	r3, [sp, #12]
    9ed8:	9b07      	ldr	r3, [sp, #28]
    9eda:	2b00      	cmp	r3, #0
    9edc:	f000 80b4 	beq.w	a048 <_dtoa_r+0x494>
    9ee0:	9b06      	ldr	r3, [sp, #24]
    9ee2:	9311      	str	r3, [sp, #68]	; 0x44
    9ee4:	9b07      	ldr	r3, [sp, #28]
    9ee6:	930e      	str	r3, [sp, #56]	; 0x38
    9ee8:	4641      	mov	r1, r8
    9eea:	4638      	mov	r0, r7
    9eec:	f004 fffe 	bl	eeec <__aeabi_d2iz>
    9ef0:	4605      	mov	r5, r0
    9ef2:	f004 fce1 	bl	e8b8 <__aeabi_i2d>
    9ef6:	4602      	mov	r2, r0
    9ef8:	460b      	mov	r3, r1
    9efa:	4638      	mov	r0, r7
    9efc:	4641      	mov	r1, r8
    9efe:	f004 fb8d 	bl	e61c <__aeabi_dsub>
    9f02:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    9f04:	4b74      	ldr	r3, [pc, #464]	; (a0d8 <_dtoa_r+0x524>)
    9f06:	4606      	mov	r6, r0
    9f08:	460f      	mov	r7, r1
    9f0a:	980a      	ldr	r0, [sp, #40]	; 0x28
    9f0c:	9904      	ldr	r1, [sp, #16]
    9f0e:	3530      	adds	r5, #48	; 0x30
    9f10:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    9f14:	fa5f f885 	uxtb.w	r8, r5
    9f18:	e953 2302 	ldrd	r2, r3, [r3, #-8]
    9f1c:	1c4d      	adds	r5, r1, #1
    9f1e:	2800      	cmp	r0, #0
    9f20:	f000 8470 	beq.w	a804 <_dtoa_r+0xc50>
    9f24:	2000      	movs	r0, #0
    9f26:	4970      	ldr	r1, [pc, #448]	; (a0e8 <_dtoa_r+0x534>)
    9f28:	f004 fe5a 	bl	ebe0 <__aeabi_ddiv>
    9f2c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    9f30:	f004 fb74 	bl	e61c <__aeabi_dsub>
    9f34:	9b04      	ldr	r3, [sp, #16]
    9f36:	4632      	mov	r2, r6
    9f38:	f883 8000 	strb.w	r8, [r3]
    9f3c:	463b      	mov	r3, r7
    9f3e:	e9cd 0102 	strd	r0, r1, [sp, #8]
    9f42:	f004 ffb3 	bl	eeac <__aeabi_dcmpgt>
    9f46:	2800      	cmp	r0, #0
    9f48:	f040 84ad 	bne.w	a8a6 <_dtoa_r+0xcf2>
    9f4c:	4632      	mov	r2, r6
    9f4e:	463b      	mov	r3, r7
    9f50:	2000      	movs	r0, #0
    9f52:	4963      	ldr	r1, [pc, #396]	; (a0e0 <_dtoa_r+0x52c>)
    9f54:	f004 fb62 	bl	e61c <__aeabi_dsub>
    9f58:	4602      	mov	r2, r0
    9f5a:	460b      	mov	r3, r1
    9f5c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    9f60:	f004 ffa4 	bl	eeac <__aeabi_dcmpgt>
    9f64:	2800      	cmp	r0, #0
    9f66:	f040 8558 	bne.w	aa1a <_dtoa_r+0xe66>
    9f6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    9f6c:	2b01      	cmp	r3, #1
    9f6e:	f000 8087 	beq.w	a080 <_dtoa_r+0x4cc>
    9f72:	9a04      	ldr	r2, [sp, #16]
    9f74:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    9f78:	4413      	add	r3, r2
    9f7a:	e9cd 9a12 	strd	r9, sl, [sp, #72]	; 0x48
    9f7e:	46a0      	mov	r8, r4
    9f80:	e9dd ab02 	ldrd	sl, fp, [sp, #8]
    9f84:	4699      	mov	r9, r3
    9f86:	e00f      	b.n	9fa8 <_dtoa_r+0x3f4>
    9f88:	4632      	mov	r2, r6
    9f8a:	463b      	mov	r3, r7
    9f8c:	2000      	movs	r0, #0
    9f8e:	4954      	ldr	r1, [pc, #336]	; (a0e0 <_dtoa_r+0x52c>)
    9f90:	f004 fb44 	bl	e61c <__aeabi_dsub>
    9f94:	4652      	mov	r2, sl
    9f96:	465b      	mov	r3, fp
    9f98:	f004 ff6a 	bl	ee70 <__aeabi_dcmplt>
    9f9c:	2800      	cmp	r0, #0
    9f9e:	f040 8509 	bne.w	a9b4 <_dtoa_r+0xe00>
    9fa2:	454d      	cmp	r5, r9
    9fa4:	f000 851c 	beq.w	a9e0 <_dtoa_r+0xe2c>
    9fa8:	4650      	mov	r0, sl
    9faa:	4659      	mov	r1, fp
    9fac:	2200      	movs	r2, #0
    9fae:	4b4f      	ldr	r3, [pc, #316]	; (a0ec <_dtoa_r+0x538>)
    9fb0:	f004 fcec 	bl	e98c <__aeabi_dmul>
    9fb4:	2200      	movs	r2, #0
    9fb6:	4b4d      	ldr	r3, [pc, #308]	; (a0ec <_dtoa_r+0x538>)
    9fb8:	4682      	mov	sl, r0
    9fba:	468b      	mov	fp, r1
    9fbc:	4630      	mov	r0, r6
    9fbe:	4639      	mov	r1, r7
    9fc0:	f004 fce4 	bl	e98c <__aeabi_dmul>
    9fc4:	460f      	mov	r7, r1
    9fc6:	4606      	mov	r6, r0
    9fc8:	f004 ff90 	bl	eeec <__aeabi_d2iz>
    9fcc:	4604      	mov	r4, r0
    9fce:	f004 fc73 	bl	e8b8 <__aeabi_i2d>
    9fd2:	4602      	mov	r2, r0
    9fd4:	460b      	mov	r3, r1
    9fd6:	4630      	mov	r0, r6
    9fd8:	4639      	mov	r1, r7
    9fda:	f004 fb1f 	bl	e61c <__aeabi_dsub>
    9fde:	3430      	adds	r4, #48	; 0x30
    9fe0:	b2e4      	uxtb	r4, r4
    9fe2:	f805 4b01 	strb.w	r4, [r5], #1
    9fe6:	4652      	mov	r2, sl
    9fe8:	465b      	mov	r3, fp
    9fea:	4606      	mov	r6, r0
    9fec:	460f      	mov	r7, r1
    9fee:	f004 ff3f 	bl	ee70 <__aeabi_dcmplt>
    9ff2:	2800      	cmp	r0, #0
    9ff4:	d0c8      	beq.n	9f88 <_dtoa_r+0x3d4>
    9ff6:	9b11      	ldr	r3, [sp, #68]	; 0x44
    9ff8:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    9ffc:	3301      	adds	r3, #1
    9ffe:	4644      	mov	r4, r8
    a000:	9306      	str	r3, [sp, #24]
    a002:	4659      	mov	r1, fp
    a004:	4620      	mov	r0, r4
    a006:	f001 fcf7 	bl	b9f8 <_Bfree>
    a00a:	2300      	movs	r3, #0
    a00c:	702b      	strb	r3, [r5, #0]
    a00e:	9b22      	ldr	r3, [sp, #136]	; 0x88
    a010:	461a      	mov	r2, r3
    a012:	9b06      	ldr	r3, [sp, #24]
    a014:	6013      	str	r3, [r2, #0]
    a016:	9b24      	ldr	r3, [sp, #144]	; 0x90
    a018:	2b00      	cmp	r3, #0
    a01a:	f43f ae04 	beq.w	9c26 <_dtoa_r+0x72>
    a01e:	9804      	ldr	r0, [sp, #16]
    a020:	601d      	str	r5, [r3, #0]
    a022:	b017      	add	sp, #92	; 0x5c
    a024:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a028:	9802      	ldr	r0, [sp, #8]
    a02a:	f004 fc45 	bl	e8b8 <__aeabi_i2d>
    a02e:	463a      	mov	r2, r7
    a030:	4643      	mov	r3, r8
    a032:	f004 fcab 	bl	e98c <__aeabi_dmul>
    a036:	4b2b      	ldr	r3, [pc, #172]	; (a0e4 <_dtoa_r+0x530>)
    a038:	2200      	movs	r2, #0
    a03a:	f004 faf1 	bl	e620 <__adddf3>
    a03e:	f1a1 7350 	sub.w	r3, r1, #54525952	; 0x3400000
    a042:	e9cd 0102 	strd	r0, r1, [sp, #8]
    a046:	9303      	str	r3, [sp, #12]
    a048:	4638      	mov	r0, r7
    a04a:	4641      	mov	r1, r8
    a04c:	2200      	movs	r2, #0
    a04e:	4b28      	ldr	r3, [pc, #160]	; (a0f0 <_dtoa_r+0x53c>)
    a050:	f004 fae4 	bl	e61c <__aeabi_dsub>
    a054:	e9dd 7802 	ldrd	r7, r8, [sp, #8]
    a058:	463a      	mov	r2, r7
    a05a:	4643      	mov	r3, r8
    a05c:	4605      	mov	r5, r0
    a05e:	460e      	mov	r6, r1
    a060:	f004 ff24 	bl	eeac <__aeabi_dcmpgt>
    a064:	4607      	mov	r7, r0
    a066:	2800      	cmp	r0, #0
    a068:	f040 83b6 	bne.w	a7d8 <_dtoa_r+0xc24>
    a06c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    a070:	4602      	mov	r2, r0
    a072:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
    a076:	4628      	mov	r0, r5
    a078:	4631      	mov	r1, r6
    a07a:	f004 fef9 	bl	ee70 <__aeabi_dcmplt>
    a07e:	bb30      	cbnz	r0, a0ce <_dtoa_r+0x51a>
    a080:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
    a084:	e9cd 2302 	strd	r2, r3, [sp, #8]
    a088:	9b15      	ldr	r3, [sp, #84]	; 0x54
    a08a:	2b00      	cmp	r3, #0
    a08c:	f2c0 80c7 	blt.w	a21e <_dtoa_r+0x66a>
    a090:	9a06      	ldr	r2, [sp, #24]
    a092:	2a0e      	cmp	r2, #14
    a094:	f300 80c3 	bgt.w	a21e <_dtoa_r+0x66a>
    a098:	4b0f      	ldr	r3, [pc, #60]	; (a0d8 <_dtoa_r+0x524>)
    a09a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    a09e:	e9d3 9a00 	ldrd	r9, sl, [r3]
    a0a2:	9b21      	ldr	r3, [sp, #132]	; 0x84
    a0a4:	2b00      	cmp	r3, #0
    a0a6:	da25      	bge.n	a0f4 <_dtoa_r+0x540>
    a0a8:	9f07      	ldr	r7, [sp, #28]
    a0aa:	2f00      	cmp	r7, #0
    a0ac:	dc22      	bgt.n	a0f4 <_dtoa_r+0x540>
    a0ae:	f040 8471 	bne.w	a994 <_dtoa_r+0xde0>
    a0b2:	2200      	movs	r2, #0
    a0b4:	4b0e      	ldr	r3, [pc, #56]	; (a0f0 <_dtoa_r+0x53c>)
    a0b6:	4648      	mov	r0, r9
    a0b8:	4651      	mov	r1, sl
    a0ba:	f004 fc67 	bl	e98c <__aeabi_dmul>
    a0be:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    a0c2:	f004 fee9 	bl	ee98 <__aeabi_dcmpge>
    a0c6:	2800      	cmp	r0, #0
    a0c8:	f000 8387 	beq.w	a7da <_dtoa_r+0xc26>
    a0cc:	9f07      	ldr	r7, [sp, #28]
    a0ce:	463e      	mov	r6, r7
    a0d0:	9b21      	ldr	r3, [sp, #132]	; 0x84
    a0d2:	9d04      	ldr	r5, [sp, #16]
    a0d4:	43db      	mvns	r3, r3
    a0d6:	e273      	b.n	a5c0 <_dtoa_r+0xa0c>
    a0d8:	0000f3c0 	.word	0x0000f3c0
    a0dc:	0000f4b0 	.word	0x0000f4b0
    a0e0:	3ff00000 	.word	0x3ff00000
    a0e4:	401c0000 	.word	0x401c0000
    a0e8:	3fe00000 	.word	0x3fe00000
    a0ec:	40240000 	.word	0x40240000
    a0f0:	40140000 	.word	0x40140000
    a0f4:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
    a0f8:	464a      	mov	r2, r9
    a0fa:	4653      	mov	r3, sl
    a0fc:	4630      	mov	r0, r6
    a0fe:	4639      	mov	r1, r7
    a100:	f004 fd6e 	bl	ebe0 <__aeabi_ddiv>
    a104:	f004 fef2 	bl	eeec <__aeabi_d2iz>
    a108:	4680      	mov	r8, r0
    a10a:	f004 fbd5 	bl	e8b8 <__aeabi_i2d>
    a10e:	464a      	mov	r2, r9
    a110:	4653      	mov	r3, sl
    a112:	f004 fc3b 	bl	e98c <__aeabi_dmul>
    a116:	9d04      	ldr	r5, [sp, #16]
    a118:	4602      	mov	r2, r0
    a11a:	4630      	mov	r0, r6
    a11c:	4646      	mov	r6, r8
    a11e:	460b      	mov	r3, r1
    a120:	3630      	adds	r6, #48	; 0x30
    a122:	4639      	mov	r1, r7
    a124:	f004 fa7a 	bl	e61c <__aeabi_dsub>
    a128:	9f06      	ldr	r7, [sp, #24]
    a12a:	f805 6b01 	strb.w	r6, [r5], #1
    a12e:	9e07      	ldr	r6, [sp, #28]
    a130:	3701      	adds	r7, #1
    a132:	2e01      	cmp	r6, #1
    a134:	4602      	mov	r2, r0
    a136:	460b      	mov	r3, r1
    a138:	9706      	str	r7, [sp, #24]
    a13a:	d044      	beq.n	a1c6 <_dtoa_r+0x612>
    a13c:	2200      	movs	r2, #0
    a13e:	4bca      	ldr	r3, [pc, #808]	; (a468 <_dtoa_r+0x8b4>)
    a140:	f004 fc24 	bl	e98c <__aeabi_dmul>
    a144:	2200      	movs	r2, #0
    a146:	2300      	movs	r3, #0
    a148:	4606      	mov	r6, r0
    a14a:	460f      	mov	r7, r1
    a14c:	f004 fe86 	bl	ee5c <__aeabi_dcmpeq>
    a150:	2800      	cmp	r0, #0
    a152:	f47f af56 	bne.w	a002 <_dtoa_r+0x44e>
    a156:	f8cd b008 	str.w	fp, [sp, #8]
    a15a:	f04f 0801 	mov.w	r8, #1
    a15e:	f8dd b01c 	ldr.w	fp, [sp, #28]
    a162:	9405      	str	r4, [sp, #20]
    a164:	e00c      	b.n	a180 <_dtoa_r+0x5cc>
    a166:	2200      	movs	r2, #0
    a168:	4bbf      	ldr	r3, [pc, #764]	; (a468 <_dtoa_r+0x8b4>)
    a16a:	f004 fc0f 	bl	e98c <__aeabi_dmul>
    a16e:	2200      	movs	r2, #0
    a170:	2300      	movs	r3, #0
    a172:	4606      	mov	r6, r0
    a174:	460f      	mov	r7, r1
    a176:	f004 fe71 	bl	ee5c <__aeabi_dcmpeq>
    a17a:	2800      	cmp	r0, #0
    a17c:	f040 8324 	bne.w	a7c8 <_dtoa_r+0xc14>
    a180:	464a      	mov	r2, r9
    a182:	4653      	mov	r3, sl
    a184:	4630      	mov	r0, r6
    a186:	4639      	mov	r1, r7
    a188:	f004 fd2a 	bl	ebe0 <__aeabi_ddiv>
    a18c:	f004 feae 	bl	eeec <__aeabi_d2iz>
    a190:	4604      	mov	r4, r0
    a192:	f004 fb91 	bl	e8b8 <__aeabi_i2d>
    a196:	464a      	mov	r2, r9
    a198:	4653      	mov	r3, sl
    a19a:	f004 fbf7 	bl	e98c <__aeabi_dmul>
    a19e:	4602      	mov	r2, r0
    a1a0:	460b      	mov	r3, r1
    a1a2:	4630      	mov	r0, r6
    a1a4:	4639      	mov	r1, r7
    a1a6:	f004 fa39 	bl	e61c <__aeabi_dsub>
    a1aa:	f108 0801 	add.w	r8, r8, #1
    a1ae:	f104 0630 	add.w	r6, r4, #48	; 0x30
    a1b2:	45c3      	cmp	fp, r8
    a1b4:	4602      	mov	r2, r0
    a1b6:	460b      	mov	r3, r1
    a1b8:	f805 6b01 	strb.w	r6, [r5], #1
    a1bc:	d1d3      	bne.n	a166 <_dtoa_r+0x5b2>
    a1be:	46a0      	mov	r8, r4
    a1c0:	f8dd b008 	ldr.w	fp, [sp, #8]
    a1c4:	9c05      	ldr	r4, [sp, #20]
    a1c6:	4610      	mov	r0, r2
    a1c8:	4619      	mov	r1, r3
    a1ca:	f004 fa29 	bl	e620 <__adddf3>
    a1ce:	464a      	mov	r2, r9
    a1d0:	4653      	mov	r3, sl
    a1d2:	4606      	mov	r6, r0
    a1d4:	460f      	mov	r7, r1
    a1d6:	f004 fe69 	bl	eeac <__aeabi_dcmpgt>
    a1da:	b960      	cbnz	r0, a1f6 <_dtoa_r+0x642>
    a1dc:	464a      	mov	r2, r9
    a1de:	4653      	mov	r3, sl
    a1e0:	4630      	mov	r0, r6
    a1e2:	4639      	mov	r1, r7
    a1e4:	f004 fe3a 	bl	ee5c <__aeabi_dcmpeq>
    a1e8:	2800      	cmp	r0, #0
    a1ea:	f43f af0a 	beq.w	a002 <_dtoa_r+0x44e>
    a1ee:	ea5f 71c8 	movs.w	r1, r8, lsl #31
    a1f2:	f57f af06 	bpl.w	a002 <_dtoa_r+0x44e>
    a1f6:	f815 8c01 	ldrb.w	r8, [r5, #-1]
    a1fa:	9a04      	ldr	r2, [sp, #16]
    a1fc:	1e6b      	subs	r3, r5, #1
    a1fe:	e004      	b.n	a20a <_dtoa_r+0x656>
    a200:	429a      	cmp	r2, r3
    a202:	f000 83b8 	beq.w	a976 <_dtoa_r+0xdc2>
    a206:	f813 8d01 	ldrb.w	r8, [r3, #-1]!
    a20a:	f1b8 0f39 	cmp.w	r8, #57	; 0x39
    a20e:	f103 0501 	add.w	r5, r3, #1
    a212:	d0f5      	beq.n	a200 <_dtoa_r+0x64c>
    a214:	f108 0201 	add.w	r2, r8, #1
    a218:	b2d2      	uxtb	r2, r2
    a21a:	701a      	strb	r2, [r3, #0]
    a21c:	e6f1      	b.n	a002 <_dtoa_r+0x44e>
    a21e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    a220:	2a00      	cmp	r2, #0
    a222:	d03c      	beq.n	a29e <_dtoa_r+0x6ea>
    a224:	9a20      	ldr	r2, [sp, #128]	; 0x80
    a226:	2a01      	cmp	r2, #1
    a228:	f340 826c 	ble.w	a704 <_dtoa_r+0xb50>
    a22c:	9b07      	ldr	r3, [sp, #28]
    a22e:	1e5f      	subs	r7, r3, #1
    a230:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    a232:	42bb      	cmp	r3, r7
    a234:	f280 8242 	bge.w	a6bc <_dtoa_r+0xb08>
    a238:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    a23a:	970b      	str	r7, [sp, #44]	; 0x2c
    a23c:	1afb      	subs	r3, r7, r3
    a23e:	449a      	add	sl, r3
    a240:	2700      	movs	r7, #0
    a242:	9b07      	ldr	r3, [sp, #28]
    a244:	2b00      	cmp	r3, #0
    a246:	f2c0 82c3 	blt.w	a7d0 <_dtoa_r+0xc1c>
    a24a:	9a05      	ldr	r2, [sp, #20]
    a24c:	4611      	mov	r1, r2
    a24e:	4419      	add	r1, r3
    a250:	464d      	mov	r5, r9
    a252:	9105      	str	r1, [sp, #20]
    a254:	4499      	add	r9, r3
    a256:	2101      	movs	r1, #1
    a258:	4620      	mov	r0, r4
    a25a:	f001 fccf 	bl	bbfc <__i2b>
    a25e:	4606      	mov	r6, r0
    a260:	e020      	b.n	a2a4 <_dtoa_r+0x6f0>
    a262:	2301      	movs	r3, #1
    a264:	930c      	str	r3, [sp, #48]	; 0x30
    a266:	9b05      	ldr	r3, [sp, #20]
    a268:	2b00      	cmp	r3, #0
    a26a:	f6bf ad51 	bge.w	9d10 <_dtoa_r+0x15c>
    a26e:	2300      	movs	r3, #0
    a270:	f1c5 0901 	rsb	r9, r5, #1
    a274:	9305      	str	r3, [sp, #20]
    a276:	e54d      	b.n	9d14 <_dtoa_r+0x160>
    a278:	4650      	mov	r0, sl
    a27a:	f004 fb1d 	bl	e8b8 <__aeabi_i2d>
    a27e:	4632      	mov	r2, r6
    a280:	463b      	mov	r3, r7
    a282:	f004 fdeb 	bl	ee5c <__aeabi_dcmpeq>
    a286:	2800      	cmp	r0, #0
    a288:	f47f ad27 	bne.w	9cda <_dtoa_r+0x126>
    a28c:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
    a290:	e523      	b.n	9cda <_dtoa_r+0x126>
    a292:	4b76      	ldr	r3, [pc, #472]	; (a46c <_dtoa_r+0x8b8>)
    a294:	9304      	str	r3, [sp, #16]
    a296:	9804      	ldr	r0, [sp, #16]
    a298:	b017      	add	sp, #92	; 0x5c
    a29a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    a29e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
    a2a0:	9e0a      	ldr	r6, [sp, #40]	; 0x28
    a2a2:	464d      	mov	r5, r9
    a2a4:	2d00      	cmp	r5, #0
    a2a6:	dd0b      	ble.n	a2c0 <_dtoa_r+0x70c>
    a2a8:	9a05      	ldr	r2, [sp, #20]
    a2aa:	2a00      	cmp	r2, #0
    a2ac:	dd08      	ble.n	a2c0 <_dtoa_r+0x70c>
    a2ae:	42aa      	cmp	r2, r5
    a2b0:	4613      	mov	r3, r2
    a2b2:	bfa8      	it	ge
    a2b4:	462b      	movge	r3, r5
    a2b6:	eba9 0903 	sub.w	r9, r9, r3
    a2ba:	1aed      	subs	r5, r5, r3
    a2bc:	1ad3      	subs	r3, r2, r3
    a2be:	9305      	str	r3, [sp, #20]
    a2c0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    a2c2:	b1d3      	cbz	r3, a2fa <_dtoa_r+0x746>
    a2c4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    a2c6:	2b00      	cmp	r3, #0
    a2c8:	f000 819f 	beq.w	a60a <_dtoa_r+0xa56>
    a2cc:	2f00      	cmp	r7, #0
    a2ce:	dd10      	ble.n	a2f2 <_dtoa_r+0x73e>
    a2d0:	4631      	mov	r1, r6
    a2d2:	463a      	mov	r2, r7
    a2d4:	4620      	mov	r0, r4
    a2d6:	f001 fd4d 	bl	bd74 <__pow5mult>
    a2da:	465a      	mov	r2, fp
    a2dc:	4601      	mov	r1, r0
    a2de:	4606      	mov	r6, r0
    a2e0:	4620      	mov	r0, r4
    a2e2:	f001 fca1 	bl	bc28 <__multiply>
    a2e6:	4659      	mov	r1, fp
    a2e8:	4680      	mov	r8, r0
    a2ea:	4620      	mov	r0, r4
    a2ec:	f001 fb84 	bl	b9f8 <_Bfree>
    a2f0:	46c3      	mov	fp, r8
    a2f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    a2f4:	1bda      	subs	r2, r3, r7
    a2f6:	f040 8189 	bne.w	a60c <_dtoa_r+0xa58>
    a2fa:	2101      	movs	r1, #1
    a2fc:	4620      	mov	r0, r4
    a2fe:	f001 fc7d 	bl	bbfc <__i2b>
    a302:	f1ba 0f00 	cmp.w	sl, #0
    a306:	4607      	mov	r7, r0
    a308:	f300 8099 	bgt.w	a43e <_dtoa_r+0x88a>
    a30c:	9b20      	ldr	r3, [sp, #128]	; 0x80
    a30e:	2b01      	cmp	r3, #1
    a310:	f340 8187 	ble.w	a622 <_dtoa_r+0xa6e>
    a314:	2300      	movs	r3, #0
    a316:	9308      	str	r3, [sp, #32]
    a318:	2001      	movs	r0, #1
    a31a:	f1ba 0f00 	cmp.w	sl, #0
    a31e:	f040 809a 	bne.w	a456 <_dtoa_r+0x8a2>
    a322:	9a05      	ldr	r2, [sp, #20]
    a324:	4410      	add	r0, r2
    a326:	f010 001f 	ands.w	r0, r0, #31
    a32a:	d079      	beq.n	a420 <_dtoa_r+0x86c>
    a32c:	f1c0 0320 	rsb	r3, r0, #32
    a330:	2b04      	cmp	r3, #4
    a332:	f340 8377 	ble.w	aa24 <_dtoa_r+0xe70>
    a336:	f1c0 001c 	rsb	r0, r0, #28
    a33a:	4402      	add	r2, r0
    a33c:	4481      	add	r9, r0
    a33e:	4405      	add	r5, r0
    a340:	9205      	str	r2, [sp, #20]
    a342:	f1b9 0f00 	cmp.w	r9, #0
    a346:	dd05      	ble.n	a354 <_dtoa_r+0x7a0>
    a348:	4659      	mov	r1, fp
    a34a:	464a      	mov	r2, r9
    a34c:	4620      	mov	r0, r4
    a34e:	f001 fd5d 	bl	be0c <__lshift>
    a352:	4683      	mov	fp, r0
    a354:	9b05      	ldr	r3, [sp, #20]
    a356:	2b00      	cmp	r3, #0
    a358:	dd05      	ble.n	a366 <_dtoa_r+0x7b2>
    a35a:	4639      	mov	r1, r7
    a35c:	461a      	mov	r2, r3
    a35e:	4620      	mov	r0, r4
    a360:	f001 fd54 	bl	be0c <__lshift>
    a364:	4607      	mov	r7, r0
    a366:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    a368:	2b00      	cmp	r3, #0
    a36a:	f040 8133 	bne.w	a5d4 <_dtoa_r+0xa20>
    a36e:	9b07      	ldr	r3, [sp, #28]
    a370:	2b00      	cmp	r3, #0
    a372:	f340 810a 	ble.w	a58a <_dtoa_r+0x9d6>
    a376:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    a378:	2b00      	cmp	r3, #0
    a37a:	f040 8086 	bne.w	a48a <_dtoa_r+0x8d6>
    a37e:	9b06      	ldr	r3, [sp, #24]
    a380:	3301      	adds	r3, #1
    a382:	9306      	str	r3, [sp, #24]
    a384:	9d04      	ldr	r5, [sp, #16]
    a386:	f8dd 901c 	ldr.w	r9, [sp, #28]
    a38a:	f04f 0801 	mov.w	r8, #1
    a38e:	e008      	b.n	a3a2 <_dtoa_r+0x7ee>
    a390:	4659      	mov	r1, fp
    a392:	2300      	movs	r3, #0
    a394:	220a      	movs	r2, #10
    a396:	4620      	mov	r0, r4
    a398:	f001 fb38 	bl	ba0c <__multadd>
    a39c:	f108 0801 	add.w	r8, r8, #1
    a3a0:	4683      	mov	fp, r0
    a3a2:	4639      	mov	r1, r7
    a3a4:	4658      	mov	r0, fp
    a3a6:	f7ff fb73 	bl	9a90 <quorem>
    a3aa:	45c1      	cmp	r9, r8
    a3ac:	f100 0030 	add.w	r0, r0, #48	; 0x30
    a3b0:	f805 0b01 	strb.w	r0, [r5], #1
    a3b4:	dcec      	bgt.n	a390 <_dtoa_r+0x7dc>
    a3b6:	4603      	mov	r3, r0
    a3b8:	f04f 0a00 	mov.w	sl, #0
    a3bc:	4659      	mov	r1, fp
    a3be:	2201      	movs	r2, #1
    a3c0:	4620      	mov	r0, r4
    a3c2:	9302      	str	r3, [sp, #8]
    a3c4:	f001 fd22 	bl	be0c <__lshift>
    a3c8:	4639      	mov	r1, r7
    a3ca:	4683      	mov	fp, r0
    a3cc:	f001 fd84 	bl	bed8 <__mcmp>
    a3d0:	2800      	cmp	r0, #0
    a3d2:	f815 2c01 	ldrb.w	r2, [r5, #-1]
    a3d6:	f340 8180 	ble.w	a6da <_dtoa_r+0xb26>
    a3da:	1e6b      	subs	r3, r5, #1
    a3dc:	9904      	ldr	r1, [sp, #16]
    a3de:	e004      	b.n	a3ea <_dtoa_r+0x836>
    a3e0:	4299      	cmp	r1, r3
    a3e2:	f000 8188 	beq.w	a6f6 <_dtoa_r+0xb42>
    a3e6:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
    a3ea:	2a39      	cmp	r2, #57	; 0x39
    a3ec:	f103 0501 	add.w	r5, r3, #1
    a3f0:	d0f6      	beq.n	a3e0 <_dtoa_r+0x82c>
    a3f2:	3201      	adds	r2, #1
    a3f4:	701a      	strb	r2, [r3, #0]
    a3f6:	4639      	mov	r1, r7
    a3f8:	4620      	mov	r0, r4
    a3fa:	f001 fafd 	bl	b9f8 <_Bfree>
    a3fe:	2e00      	cmp	r6, #0
    a400:	f43f adff 	beq.w	a002 <_dtoa_r+0x44e>
    a404:	f1ba 0f00 	cmp.w	sl, #0
    a408:	d005      	beq.n	a416 <_dtoa_r+0x862>
    a40a:	45b2      	cmp	sl, r6
    a40c:	d003      	beq.n	a416 <_dtoa_r+0x862>
    a40e:	4651      	mov	r1, sl
    a410:	4620      	mov	r0, r4
    a412:	f001 faf1 	bl	b9f8 <_Bfree>
    a416:	4631      	mov	r1, r6
    a418:	4620      	mov	r0, r4
    a41a:	f001 faed 	bl	b9f8 <_Bfree>
    a41e:	e5f0      	b.n	a002 <_dtoa_r+0x44e>
    a420:	201c      	movs	r0, #28
    a422:	9b05      	ldr	r3, [sp, #20]
    a424:	4403      	add	r3, r0
    a426:	4481      	add	r9, r0
    a428:	4405      	add	r5, r0
    a42a:	9305      	str	r3, [sp, #20]
    a42c:	e789      	b.n	a342 <_dtoa_r+0x78e>
    a42e:	2501      	movs	r5, #1
    a430:	e485      	b.n	9d3e <_dtoa_r+0x18a>
    a432:	f1c3 0620 	rsb	r6, r3, #32
    a436:	9b02      	ldr	r3, [sp, #8]
    a438:	fa03 f006 	lsl.w	r0, r3, r6
    a43c:	e417      	b.n	9c6e <_dtoa_r+0xba>
    a43e:	4601      	mov	r1, r0
    a440:	4652      	mov	r2, sl
    a442:	4620      	mov	r0, r4
    a444:	f001 fc96 	bl	bd74 <__pow5mult>
    a448:	9b20      	ldr	r3, [sp, #128]	; 0x80
    a44a:	2b01      	cmp	r3, #1
    a44c:	4607      	mov	r7, r0
    a44e:	f340 816e 	ble.w	a72e <_dtoa_r+0xb7a>
    a452:	2300      	movs	r3, #0
    a454:	9308      	str	r3, [sp, #32]
    a456:	693b      	ldr	r3, [r7, #16]
    a458:	eb07 0383 	add.w	r3, r7, r3, lsl #2
    a45c:	6918      	ldr	r0, [r3, #16]
    a45e:	f001 fb7d 	bl	bb5c <__hi0bits>
    a462:	f1c0 0020 	rsb	r0, r0, #32
    a466:	e75c      	b.n	a322 <_dtoa_r+0x76e>
    a468:	40240000 	.word	0x40240000
    a46c:	0000f354 	.word	0x0000f354
    a470:	4631      	mov	r1, r6
    a472:	2300      	movs	r3, #0
    a474:	220a      	movs	r2, #10
    a476:	4620      	mov	r0, r4
    a478:	f001 fac8 	bl	ba0c <__multadd>
    a47c:	9b10      	ldr	r3, [sp, #64]	; 0x40
    a47e:	2b00      	cmp	r3, #0
    a480:	4606      	mov	r6, r0
    a482:	f340 82be 	ble.w	aa02 <_dtoa_r+0xe4e>
    a486:	e9cd 8306 	strd	r8, r3, [sp, #24]
    a48a:	2d00      	cmp	r5, #0
    a48c:	dd05      	ble.n	a49a <_dtoa_r+0x8e6>
    a48e:	4631      	mov	r1, r6
    a490:	462a      	mov	r2, r5
    a492:	4620      	mov	r0, r4
    a494:	f001 fcba 	bl	be0c <__lshift>
    a498:	4606      	mov	r6, r0
    a49a:	9b08      	ldr	r3, [sp, #32]
    a49c:	2b00      	cmp	r3, #0
    a49e:	f040 817c 	bne.w	a79a <_dtoa_r+0xbe6>
    a4a2:	46b1      	mov	r9, r6
    a4a4:	9b02      	ldr	r3, [sp, #8]
    a4a6:	9820      	ldr	r0, [sp, #128]	; 0x80
    a4a8:	9904      	ldr	r1, [sp, #16]
    a4aa:	f003 0201 	and.w	r2, r3, #1
    a4ae:	920b      	str	r2, [sp, #44]	; 0x2c
    a4b0:	4302      	orrs	r2, r0
    a4b2:	920a      	str	r2, [sp, #40]	; 0x28
    a4b4:	9a07      	ldr	r2, [sp, #28]
    a4b6:	1e4b      	subs	r3, r1, #1
    a4b8:	441a      	add	r2, r3
    a4ba:	9208      	str	r2, [sp, #32]
    a4bc:	4688      	mov	r8, r1
    a4be:	4639      	mov	r1, r7
    a4c0:	4658      	mov	r0, fp
    a4c2:	f7ff fae5 	bl	9a90 <quorem>
    a4c6:	4631      	mov	r1, r6
    a4c8:	9002      	str	r0, [sp, #8]
    a4ca:	4658      	mov	r0, fp
    a4cc:	f001 fd04 	bl	bed8 <__mcmp>
    a4d0:	464a      	mov	r2, r9
    a4d2:	4682      	mov	sl, r0
    a4d4:	4639      	mov	r1, r7
    a4d6:	4620      	mov	r0, r4
    a4d8:	f001 fd1a 	bl	bf10 <__mdiff>
    a4dc:	9b02      	ldr	r3, [sp, #8]
    a4de:	68c2      	ldr	r2, [r0, #12]
    a4e0:	4605      	mov	r5, r0
    a4e2:	3330      	adds	r3, #48	; 0x30
    a4e4:	2a00      	cmp	r2, #0
    a4e6:	d142      	bne.n	a56e <_dtoa_r+0x9ba>
    a4e8:	4601      	mov	r1, r0
    a4ea:	4658      	mov	r0, fp
    a4ec:	9307      	str	r3, [sp, #28]
    a4ee:	f001 fcf3 	bl	bed8 <__mcmp>
    a4f2:	4629      	mov	r1, r5
    a4f4:	9005      	str	r0, [sp, #20]
    a4f6:	4620      	mov	r0, r4
    a4f8:	f001 fa7e 	bl	b9f8 <_Bfree>
    a4fc:	9a05      	ldr	r2, [sp, #20]
    a4fe:	9b07      	ldr	r3, [sp, #28]
    a500:	b91a      	cbnz	r2, a50a <_dtoa_r+0x956>
    a502:	990a      	ldr	r1, [sp, #40]	; 0x28
    a504:	2900      	cmp	r1, #0
    a506:	f000 825e 	beq.w	a9c6 <_dtoa_r+0xe12>
    a50a:	f1ba 0f00 	cmp.w	sl, #0
    a50e:	f108 0501 	add.w	r5, r8, #1
    a512:	f2c0 8124 	blt.w	a75e <_dtoa_r+0xbaa>
    a516:	9920      	ldr	r1, [sp, #128]	; 0x80
    a518:	ea41 0a0a 	orr.w	sl, r1, sl
    a51c:	990b      	ldr	r1, [sp, #44]	; 0x2c
    a51e:	ea51 010a 	orrs.w	r1, r1, sl
    a522:	f000 811c 	beq.w	a75e <_dtoa_r+0xbaa>
    a526:	2a00      	cmp	r2, #0
    a528:	f300 8159 	bgt.w	a7de <_dtoa_r+0xc2a>
    a52c:	9a08      	ldr	r2, [sp, #32]
    a52e:	f888 3000 	strb.w	r3, [r8]
    a532:	4542      	cmp	r2, r8
    a534:	f000 8160 	beq.w	a7f8 <_dtoa_r+0xc44>
    a538:	4659      	mov	r1, fp
    a53a:	2300      	movs	r3, #0
    a53c:	220a      	movs	r2, #10
    a53e:	4620      	mov	r0, r4
    a540:	f001 fa64 	bl	ba0c <__multadd>
    a544:	454e      	cmp	r6, r9
    a546:	4683      	mov	fp, r0
    a548:	4631      	mov	r1, r6
    a54a:	f04f 0300 	mov.w	r3, #0
    a54e:	f04f 020a 	mov.w	r2, #10
    a552:	4620      	mov	r0, r4
    a554:	d013      	beq.n	a57e <_dtoa_r+0x9ca>
    a556:	f001 fa59 	bl	ba0c <__multadd>
    a55a:	4649      	mov	r1, r9
    a55c:	4606      	mov	r6, r0
    a55e:	2300      	movs	r3, #0
    a560:	220a      	movs	r2, #10
    a562:	4620      	mov	r0, r4
    a564:	f001 fa52 	bl	ba0c <__multadd>
    a568:	46a8      	mov	r8, r5
    a56a:	4681      	mov	r9, r0
    a56c:	e7a7      	b.n	a4be <_dtoa_r+0x90a>
    a56e:	4601      	mov	r1, r0
    a570:	4620      	mov	r0, r4
    a572:	9305      	str	r3, [sp, #20]
    a574:	f001 fa40 	bl	b9f8 <_Bfree>
    a578:	2201      	movs	r2, #1
    a57a:	9b05      	ldr	r3, [sp, #20]
    a57c:	e7c5      	b.n	a50a <_dtoa_r+0x956>
    a57e:	f001 fa45 	bl	ba0c <__multadd>
    a582:	46a8      	mov	r8, r5
    a584:	4606      	mov	r6, r0
    a586:	4681      	mov	r9, r0
    a588:	e799      	b.n	a4be <_dtoa_r+0x90a>
    a58a:	9b20      	ldr	r3, [sp, #128]	; 0x80
    a58c:	2b02      	cmp	r3, #2
    a58e:	f340 8082 	ble.w	a696 <_dtoa_r+0xae2>
    a592:	9b07      	ldr	r3, [sp, #28]
    a594:	2b00      	cmp	r3, #0
    a596:	f47f ad9b 	bne.w	a0d0 <_dtoa_r+0x51c>
    a59a:	4639      	mov	r1, r7
    a59c:	2205      	movs	r2, #5
    a59e:	4620      	mov	r0, r4
    a5a0:	f001 fa34 	bl	ba0c <__multadd>
    a5a4:	4601      	mov	r1, r0
    a5a6:	4607      	mov	r7, r0
    a5a8:	4658      	mov	r0, fp
    a5aa:	f001 fc95 	bl	bed8 <__mcmp>
    a5ae:	2800      	cmp	r0, #0
    a5b0:	f77f ad8e 	ble.w	a0d0 <_dtoa_r+0x51c>
    a5b4:	9d04      	ldr	r5, [sp, #16]
    a5b6:	9b06      	ldr	r3, [sp, #24]
    a5b8:	2231      	movs	r2, #49	; 0x31
    a5ba:	f805 2b01 	strb.w	r2, [r5], #1
    a5be:	3301      	adds	r3, #1
    a5c0:	3301      	adds	r3, #1
    a5c2:	4639      	mov	r1, r7
    a5c4:	4620      	mov	r0, r4
    a5c6:	9306      	str	r3, [sp, #24]
    a5c8:	f001 fa16 	bl	b9f8 <_Bfree>
    a5cc:	2e00      	cmp	r6, #0
    a5ce:	f47f af22 	bne.w	a416 <_dtoa_r+0x862>
    a5d2:	e516      	b.n	a002 <_dtoa_r+0x44e>
    a5d4:	4639      	mov	r1, r7
    a5d6:	4658      	mov	r0, fp
    a5d8:	f001 fc7e 	bl	bed8 <__mcmp>
    a5dc:	2800      	cmp	r0, #0
    a5de:	f6bf aec6 	bge.w	a36e <_dtoa_r+0x7ba>
    a5e2:	4659      	mov	r1, fp
    a5e4:	2300      	movs	r3, #0
    a5e6:	220a      	movs	r2, #10
    a5e8:	4620      	mov	r0, r4
    a5ea:	f001 fa0f 	bl	ba0c <__multadd>
    a5ee:	9b06      	ldr	r3, [sp, #24]
    a5f0:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
    a5f4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    a5f6:	4683      	mov	fp, r0
    a5f8:	2b00      	cmp	r3, #0
    a5fa:	f47f af39 	bne.w	a470 <_dtoa_r+0x8bc>
    a5fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
    a600:	2b00      	cmp	r3, #0
    a602:	f340 81f4 	ble.w	a9ee <_dtoa_r+0xe3a>
    a606:	9307      	str	r3, [sp, #28]
    a608:	e6bc      	b.n	a384 <_dtoa_r+0x7d0>
    a60a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    a60c:	4659      	mov	r1, fp
    a60e:	4620      	mov	r0, r4
    a610:	f001 fbb0 	bl	bd74 <__pow5mult>
    a614:	4683      	mov	fp, r0
    a616:	e670      	b.n	a2fa <_dtoa_r+0x746>
    a618:	4ba7      	ldr	r3, [pc, #668]	; (a8b8 <_dtoa_r+0xd04>)
    a61a:	9304      	str	r3, [sp, #16]
    a61c:	3303      	adds	r3, #3
    a61e:	f7ff bba9 	b.w	9d74 <_dtoa_r+0x1c0>
    a622:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
    a626:	2900      	cmp	r1, #0
    a628:	f47f ae74 	bne.w	a314 <_dtoa_r+0x760>
    a62c:	f3c2 0313 	ubfx	r3, r2, #0, #20
    a630:	2b00      	cmp	r3, #0
    a632:	f000 8087 	beq.w	a744 <_dtoa_r+0xb90>
    a636:	9b02      	ldr	r3, [sp, #8]
    a638:	9308      	str	r3, [sp, #32]
    a63a:	e66d      	b.n	a318 <_dtoa_r+0x764>
    a63c:	2301      	movs	r3, #1
    a63e:	930a      	str	r3, [sp, #40]	; 0x28
    a640:	9b21      	ldr	r3, [sp, #132]	; 0x84
    a642:	2b00      	cmp	r3, #0
    a644:	dd44      	ble.n	a6d0 <_dtoa_r+0xb1c>
    a646:	9310      	str	r3, [sp, #64]	; 0x40
    a648:	9307      	str	r3, [sp, #28]
    a64a:	461e      	mov	r6, r3
    a64c:	2100      	movs	r1, #0
    a64e:	2e17      	cmp	r6, #23
    a650:	6461      	str	r1, [r4, #68]	; 0x44
    a652:	f77f abdc 	ble.w	9e0e <_dtoa_r+0x25a>
    a656:	2201      	movs	r2, #1
    a658:	2304      	movs	r3, #4
    a65a:	005b      	lsls	r3, r3, #1
    a65c:	f103 0014 	add.w	r0, r3, #20
    a660:	42b0      	cmp	r0, r6
    a662:	4611      	mov	r1, r2
    a664:	f102 0201 	add.w	r2, r2, #1
    a668:	d9f7      	bls.n	a65a <_dtoa_r+0xaa6>
    a66a:	6461      	str	r1, [r4, #68]	; 0x44
    a66c:	f7ff bbcf 	b.w	9e0e <_dtoa_r+0x25a>
    a670:	2301      	movs	r3, #1
    a672:	930a      	str	r3, [sp, #40]	; 0x28
    a674:	9b21      	ldr	r3, [sp, #132]	; 0x84
    a676:	9a06      	ldr	r2, [sp, #24]
    a678:	4413      	add	r3, r2
    a67a:	9310      	str	r3, [sp, #64]	; 0x40
    a67c:	3301      	adds	r3, #1
    a67e:	2b01      	cmp	r3, #1
    a680:	461e      	mov	r6, r3
    a682:	9307      	str	r3, [sp, #28]
    a684:	bfb8      	it	lt
    a686:	2601      	movlt	r6, #1
    a688:	e7e0      	b.n	a64c <_dtoa_r+0xa98>
    a68a:	2300      	movs	r3, #0
    a68c:	930a      	str	r3, [sp, #40]	; 0x28
    a68e:	e7f1      	b.n	a674 <_dtoa_r+0xac0>
    a690:	2300      	movs	r3, #0
    a692:	930a      	str	r3, [sp, #40]	; 0x28
    a694:	e7d4      	b.n	a640 <_dtoa_r+0xa8c>
    a696:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    a698:	2b00      	cmp	r3, #0
    a69a:	f47f aef6 	bne.w	a48a <_dtoa_r+0x8d6>
    a69e:	4639      	mov	r1, r7
    a6a0:	4658      	mov	r0, fp
    a6a2:	f7ff f9f5 	bl	9a90 <quorem>
    a6a6:	9a06      	ldr	r2, [sp, #24]
    a6a8:	9d04      	ldr	r5, [sp, #16]
    a6aa:	f100 0330 	add.w	r3, r0, #48	; 0x30
    a6ae:	3201      	adds	r2, #1
    a6b0:	9206      	str	r2, [sp, #24]
    a6b2:	f805 3b01 	strb.w	r3, [r5], #1
    a6b6:	f04f 0a00 	mov.w	sl, #0
    a6ba:	e67f      	b.n	a3bc <_dtoa_r+0x808>
    a6bc:	1bdf      	subs	r7, r3, r7
    a6be:	e5c0      	b.n	a242 <_dtoa_r+0x68e>
    a6c0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    a6c4:	e9cd 230e 	strd	r2, r3, [sp, #56]	; 0x38
    a6c8:	2302      	movs	r3, #2
    a6ca:	9302      	str	r3, [sp, #8]
    a6cc:	f7ff bbcb 	b.w	9e66 <_dtoa_r+0x2b2>
    a6d0:	2301      	movs	r3, #1
    a6d2:	9321      	str	r3, [sp, #132]	; 0x84
    a6d4:	9307      	str	r3, [sp, #28]
    a6d6:	f7ff bb96 	b.w	9e06 <_dtoa_r+0x252>
    a6da:	d103      	bne.n	a6e4 <_dtoa_r+0xb30>
    a6dc:	9b02      	ldr	r3, [sp, #8]
    a6de:	07db      	lsls	r3, r3, #31
    a6e0:	f53f ae7b 	bmi.w	a3da <_dtoa_r+0x826>
    a6e4:	1e6b      	subs	r3, r5, #1
    a6e6:	e001      	b.n	a6ec <_dtoa_r+0xb38>
    a6e8:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
    a6ec:	2a30      	cmp	r2, #48	; 0x30
    a6ee:	f103 0501 	add.w	r5, r3, #1
    a6f2:	d0f9      	beq.n	a6e8 <_dtoa_r+0xb34>
    a6f4:	e67f      	b.n	a3f6 <_dtoa_r+0x842>
    a6f6:	9a06      	ldr	r2, [sp, #24]
    a6f8:	3201      	adds	r2, #1
    a6fa:	9206      	str	r2, [sp, #24]
    a6fc:	9a04      	ldr	r2, [sp, #16]
    a6fe:	2331      	movs	r3, #49	; 0x31
    a700:	7013      	strb	r3, [r2, #0]
    a702:	e678      	b.n	a3f6 <_dtoa_r+0x842>
    a704:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    a706:	2a00      	cmp	r2, #0
    a708:	f000 80d2 	beq.w	a8b0 <_dtoa_r+0xcfc>
    a70c:	f203 4333 	addw	r3, r3, #1075	; 0x433
    a710:	9a05      	ldr	r2, [sp, #20]
    a712:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
    a714:	441a      	add	r2, r3
    a716:	464d      	mov	r5, r9
    a718:	9205      	str	r2, [sp, #20]
    a71a:	4499      	add	r9, r3
    a71c:	e59b      	b.n	a256 <_dtoa_r+0x6a2>
    a71e:	f040 80d3 	bne.w	a8c8 <_dtoa_r+0xd14>
    a722:	2302      	movs	r3, #2
    a724:	e9dd 7802 	ldrd	r7, r8, [sp, #8]
    a728:	9302      	str	r3, [sp, #8]
    a72a:	f7ff bbba 	b.w	9ea2 <_dtoa_r+0x2ee>
    a72e:	9b02      	ldr	r3, [sp, #8]
    a730:	2b00      	cmp	r3, #0
    a732:	f47f ae8e 	bne.w	a452 <_dtoa_r+0x89e>
    a736:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
    a73a:	f3c2 0313 	ubfx	r3, r2, #0, #20
    a73e:	2b00      	cmp	r3, #0
    a740:	f040 8175 	bne.w	aa2e <_dtoa_r+0xe7a>
    a744:	4b5d      	ldr	r3, [pc, #372]	; (a8bc <_dtoa_r+0xd08>)
    a746:	4013      	ands	r3, r2
    a748:	2b00      	cmp	r3, #0
    a74a:	f000 8121 	beq.w	a990 <_dtoa_r+0xddc>
    a74e:	9b05      	ldr	r3, [sp, #20]
    a750:	3301      	adds	r3, #1
    a752:	9305      	str	r3, [sp, #20]
    a754:	2301      	movs	r3, #1
    a756:	f109 0901 	add.w	r9, r9, #1
    a75a:	9308      	str	r3, [sp, #32]
    a75c:	e5dc      	b.n	a318 <_dtoa_r+0x764>
    a75e:	9906      	ldr	r1, [sp, #24]
    a760:	2a00      	cmp	r2, #0
    a762:	f101 0101 	add.w	r1, r1, #1
    a766:	9106      	str	r1, [sp, #24]
    a768:	dd12      	ble.n	a790 <_dtoa_r+0xbdc>
    a76a:	4659      	mov	r1, fp
    a76c:	2201      	movs	r2, #1
    a76e:	4620      	mov	r0, r4
    a770:	9305      	str	r3, [sp, #20]
    a772:	f001 fb4b 	bl	be0c <__lshift>
    a776:	4639      	mov	r1, r7
    a778:	4683      	mov	fp, r0
    a77a:	f001 fbad 	bl	bed8 <__mcmp>
    a77e:	2800      	cmp	r0, #0
    a780:	9b05      	ldr	r3, [sp, #20]
    a782:	f340 8111 	ble.w	a9a8 <_dtoa_r+0xdf4>
    a786:	2b39      	cmp	r3, #57	; 0x39
    a788:	f000 80fc 	beq.w	a984 <_dtoa_r+0xdd0>
    a78c:	9b02      	ldr	r3, [sp, #8]
    a78e:	3331      	adds	r3, #49	; 0x31
    a790:	46b2      	mov	sl, r6
    a792:	f888 3000 	strb.w	r3, [r8]
    a796:	464e      	mov	r6, r9
    a798:	e62d      	b.n	a3f6 <_dtoa_r+0x842>
    a79a:	6871      	ldr	r1, [r6, #4]
    a79c:	4620      	mov	r0, r4
    a79e:	f001 f905 	bl	b9ac <_Balloc>
    a7a2:	4605      	mov	r5, r0
    a7a4:	2800      	cmp	r0, #0
    a7a6:	f000 8145 	beq.w	aa34 <_dtoa_r+0xe80>
    a7aa:	6933      	ldr	r3, [r6, #16]
    a7ac:	3302      	adds	r3, #2
    a7ae:	009a      	lsls	r2, r3, #2
    a7b0:	f106 010c 	add.w	r1, r6, #12
    a7b4:	300c      	adds	r0, #12
    a7b6:	f001 f85b 	bl	b870 <memcpy>
    a7ba:	4629      	mov	r1, r5
    a7bc:	2201      	movs	r2, #1
    a7be:	4620      	mov	r0, r4
    a7c0:	f001 fb24 	bl	be0c <__lshift>
    a7c4:	4681      	mov	r9, r0
    a7c6:	e66d      	b.n	a4a4 <_dtoa_r+0x8f0>
    a7c8:	f8dd b008 	ldr.w	fp, [sp, #8]
    a7cc:	9c05      	ldr	r4, [sp, #20]
    a7ce:	e418      	b.n	a002 <_dtoa_r+0x44e>
    a7d0:	9b07      	ldr	r3, [sp, #28]
    a7d2:	eba9 0503 	sub.w	r5, r9, r3
    a7d6:	e53e      	b.n	a256 <_dtoa_r+0x6a2>
    a7d8:	2700      	movs	r7, #0
    a7da:	463e      	mov	r6, r7
    a7dc:	e6ea      	b.n	a5b4 <_dtoa_r+0xa00>
    a7de:	9a06      	ldr	r2, [sp, #24]
    a7e0:	2b39      	cmp	r3, #57	; 0x39
    a7e2:	f102 0201 	add.w	r2, r2, #1
    a7e6:	9206      	str	r2, [sp, #24]
    a7e8:	f000 80cc 	beq.w	a984 <_dtoa_r+0xdd0>
    a7ec:	3301      	adds	r3, #1
    a7ee:	46b2      	mov	sl, r6
    a7f0:	f888 3000 	strb.w	r3, [r8]
    a7f4:	464e      	mov	r6, r9
    a7f6:	e5fe      	b.n	a3f6 <_dtoa_r+0x842>
    a7f8:	9a06      	ldr	r2, [sp, #24]
    a7fa:	3201      	adds	r2, #1
    a7fc:	46b2      	mov	sl, r6
    a7fe:	9206      	str	r2, [sp, #24]
    a800:	464e      	mov	r6, r9
    a802:	e5db      	b.n	a3bc <_dtoa_r+0x808>
    a804:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    a808:	f004 f8c0 	bl	e98c <__aeabi_dmul>
    a80c:	9b04      	ldr	r3, [sp, #16]
    a80e:	f883 8000 	strb.w	r8, [r3]
    a812:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    a814:	2b01      	cmp	r3, #1
    a816:	e9cd 0102 	strd	r0, r1, [sp, #8]
    a81a:	d022      	beq.n	a862 <_dtoa_r+0xcae>
    a81c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    a81e:	9a04      	ldr	r2, [sp, #16]
    a820:	f8cd 9038 	str.w	r9, [sp, #56]	; 0x38
    a824:	4413      	add	r3, r2
    a826:	4699      	mov	r9, r3
    a828:	2200      	movs	r2, #0
    a82a:	4b25      	ldr	r3, [pc, #148]	; (a8c0 <_dtoa_r+0xd0c>)
    a82c:	4630      	mov	r0, r6
    a82e:	4639      	mov	r1, r7
    a830:	f004 f8ac 	bl	e98c <__aeabi_dmul>
    a834:	460f      	mov	r7, r1
    a836:	4606      	mov	r6, r0
    a838:	f004 fb58 	bl	eeec <__aeabi_d2iz>
    a83c:	4680      	mov	r8, r0
    a83e:	f004 f83b 	bl	e8b8 <__aeabi_i2d>
    a842:	f108 0830 	add.w	r8, r8, #48	; 0x30
    a846:	4602      	mov	r2, r0
    a848:	460b      	mov	r3, r1
    a84a:	4630      	mov	r0, r6
    a84c:	4639      	mov	r1, r7
    a84e:	f003 fee5 	bl	e61c <__aeabi_dsub>
    a852:	f805 8b01 	strb.w	r8, [r5], #1
    a856:	454d      	cmp	r5, r9
    a858:	4606      	mov	r6, r0
    a85a:	460f      	mov	r7, r1
    a85c:	d1e4      	bne.n	a828 <_dtoa_r+0xc74>
    a85e:	f8dd 9038 	ldr.w	r9, [sp, #56]	; 0x38
    a862:	4b18      	ldr	r3, [pc, #96]	; (a8c4 <_dtoa_r+0xd10>)
    a864:	2200      	movs	r2, #0
    a866:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    a86a:	f003 fed9 	bl	e620 <__adddf3>
    a86e:	4632      	mov	r2, r6
    a870:	463b      	mov	r3, r7
    a872:	f004 fafd 	bl	ee70 <__aeabi_dcmplt>
    a876:	2800      	cmp	r0, #0
    a878:	f040 8090 	bne.w	a99c <_dtoa_r+0xde8>
    a87c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    a880:	2000      	movs	r0, #0
    a882:	4910      	ldr	r1, [pc, #64]	; (a8c4 <_dtoa_r+0xd10>)
    a884:	f003 feca 	bl	e61c <__aeabi_dsub>
    a888:	4632      	mov	r2, r6
    a88a:	463b      	mov	r3, r7
    a88c:	f004 fb0e 	bl	eeac <__aeabi_dcmpgt>
    a890:	2800      	cmp	r0, #0
    a892:	f43f abf5 	beq.w	a080 <_dtoa_r+0x4cc>
    a896:	e000      	b.n	a89a <_dtoa_r+0xce6>
    a898:	4615      	mov	r5, r2
    a89a:	f815 3c01 	ldrb.w	r3, [r5, #-1]
    a89e:	2b30      	cmp	r3, #48	; 0x30
    a8a0:	f105 32ff 	add.w	r2, r5, #4294967295	; 0xffffffff
    a8a4:	d0f8      	beq.n	a898 <_dtoa_r+0xce4>
    a8a6:	9b11      	ldr	r3, [sp, #68]	; 0x44
    a8a8:	3301      	adds	r3, #1
    a8aa:	9306      	str	r3, [sp, #24]
    a8ac:	f7ff bba9 	b.w	a002 <_dtoa_r+0x44e>
    a8b0:	9b14      	ldr	r3, [sp, #80]	; 0x50
    a8b2:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
    a8b6:	e72b      	b.n	a710 <_dtoa_r+0xb5c>
    a8b8:	0000f358 	.word	0x0000f358
    a8bc:	7ff00000 	.word	0x7ff00000
    a8c0:	40240000 	.word	0x40240000
    a8c4:	3fe00000 	.word	0x3fe00000
    a8c8:	9b06      	ldr	r3, [sp, #24]
    a8ca:	425d      	negs	r5, r3
    a8cc:	4b6c      	ldr	r3, [pc, #432]	; (aa80 <_dtoa_r+0xecc>)
    a8ce:	f005 020f 	and.w	r2, r5, #15
    a8d2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    a8d6:	e9d3 2300 	ldrd	r2, r3, [r3]
    a8da:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
    a8de:	f004 f855 	bl	e98c <__aeabi_dmul>
    a8e2:	112d      	asrs	r5, r5, #4
    a8e4:	4607      	mov	r7, r0
    a8e6:	4688      	mov	r8, r1
    a8e8:	f000 8093 	beq.w	aa12 <_dtoa_r+0xe5e>
    a8ec:	2202      	movs	r2, #2
    a8ee:	4e65      	ldr	r6, [pc, #404]	; (aa84 <_dtoa_r+0xed0>)
    a8f0:	e9cd 780e 	strd	r7, r8, [sp, #56]	; 0x38
    a8f4:	2300      	movs	r3, #0
    a8f6:	46a0      	mov	r8, r4
    a8f8:	4614      	mov	r4, r2
    a8fa:	07ef      	lsls	r7, r5, #31
    a8fc:	d505      	bpl.n	a90a <_dtoa_r+0xd56>
    a8fe:	e9d6 2300 	ldrd	r2, r3, [r6]
    a902:	f004 f843 	bl	e98c <__aeabi_dmul>
    a906:	3401      	adds	r4, #1
    a908:	2301      	movs	r3, #1
    a90a:	106d      	asrs	r5, r5, #1
    a90c:	f106 0608 	add.w	r6, r6, #8
    a910:	d1f3      	bne.n	a8fa <_dtoa_r+0xd46>
    a912:	9402      	str	r4, [sp, #8]
    a914:	4644      	mov	r4, r8
    a916:	e9dd 780e 	ldrd	r7, r8, [sp, #56]	; 0x38
    a91a:	2b00      	cmp	r3, #0
    a91c:	f43f aac1 	beq.w	9ea2 <_dtoa_r+0x2ee>
    a920:	4607      	mov	r7, r0
    a922:	4688      	mov	r8, r1
    a924:	f7ff babd 	b.w	9ea2 <_dtoa_r+0x2ee>
    a928:	9b07      	ldr	r3, [sp, #28]
    a92a:	2b00      	cmp	r3, #0
    a92c:	f43f ab7c 	beq.w	a028 <_dtoa_r+0x474>
    a930:	9d10      	ldr	r5, [sp, #64]	; 0x40
    a932:	2d00      	cmp	r5, #0
    a934:	f77f aba4 	ble.w	a080 <_dtoa_r+0x4cc>
    a938:	2200      	movs	r2, #0
    a93a:	4b53      	ldr	r3, [pc, #332]	; (aa88 <_dtoa_r+0xed4>)
    a93c:	4638      	mov	r0, r7
    a93e:	4641      	mov	r1, r8
    a940:	f004 f824 	bl	e98c <__aeabi_dmul>
    a944:	4607      	mov	r7, r0
    a946:	9802      	ldr	r0, [sp, #8]
    a948:	4688      	mov	r8, r1
    a94a:	3001      	adds	r0, #1
    a94c:	f003 ffb4 	bl	e8b8 <__aeabi_i2d>
    a950:	463a      	mov	r2, r7
    a952:	4643      	mov	r3, r8
    a954:	f004 f81a 	bl	e98c <__aeabi_dmul>
    a958:	4b4c      	ldr	r3, [pc, #304]	; (aa8c <_dtoa_r+0xed8>)
    a95a:	2200      	movs	r2, #0
    a95c:	f003 fe60 	bl	e620 <__adddf3>
    a960:	f1a1 7350 	sub.w	r3, r1, #54525952	; 0x3400000
    a964:	e9cd 0102 	strd	r0, r1, [sp, #8]
    a968:	9303      	str	r3, [sp, #12]
    a96a:	9b06      	ldr	r3, [sp, #24]
    a96c:	950e      	str	r5, [sp, #56]	; 0x38
    a96e:	3b01      	subs	r3, #1
    a970:	9311      	str	r3, [sp, #68]	; 0x44
    a972:	f7ff bab9 	b.w	9ee8 <_dtoa_r+0x334>
    a976:	9a06      	ldr	r2, [sp, #24]
    a978:	3201      	adds	r2, #1
    a97a:	9206      	str	r2, [sp, #24]
    a97c:	2231      	movs	r2, #49	; 0x31
    a97e:	701a      	strb	r2, [r3, #0]
    a980:	f7ff bb3f 	b.w	a002 <_dtoa_r+0x44e>
    a984:	2239      	movs	r2, #57	; 0x39
    a986:	46b2      	mov	sl, r6
    a988:	f888 2000 	strb.w	r2, [r8]
    a98c:	464e      	mov	r6, r9
    a98e:	e524      	b.n	a3da <_dtoa_r+0x826>
    a990:	9308      	str	r3, [sp, #32]
    a992:	e4c1      	b.n	a318 <_dtoa_r+0x764>
    a994:	2700      	movs	r7, #0
    a996:	463e      	mov	r6, r7
    a998:	f7ff bb9a 	b.w	a0d0 <_dtoa_r+0x51c>
    a99c:	9b11      	ldr	r3, [sp, #68]	; 0x44
    a99e:	3301      	adds	r3, #1
    a9a0:	9306      	str	r3, [sp, #24]
    a9a2:	f815 8c01 	ldrb.w	r8, [r5, #-1]
    a9a6:	e428      	b.n	a1fa <_dtoa_r+0x646>
    a9a8:	f47f aef2 	bne.w	a790 <_dtoa_r+0xbdc>
    a9ac:	07da      	lsls	r2, r3, #31
    a9ae:	f57f aeef 	bpl.w	a790 <_dtoa_r+0xbdc>
    a9b2:	e6e8      	b.n	a786 <_dtoa_r+0xbd2>
    a9b4:	4643      	mov	r3, r8
    a9b6:	46a0      	mov	r8, r4
    a9b8:	461c      	mov	r4, r3
    a9ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
    a9bc:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    a9c0:	3301      	adds	r3, #1
    a9c2:	9306      	str	r3, [sp, #24]
    a9c4:	e419      	b.n	a1fa <_dtoa_r+0x646>
    a9c6:	9a06      	ldr	r2, [sp, #24]
    a9c8:	2b39      	cmp	r3, #57	; 0x39
    a9ca:	f102 0201 	add.w	r2, r2, #1
    a9ce:	9206      	str	r2, [sp, #24]
    a9d0:	f108 0501 	add.w	r5, r8, #1
    a9d4:	d0d6      	beq.n	a984 <_dtoa_r+0xdd0>
    a9d6:	f1ba 0f00 	cmp.w	sl, #0
    a9da:	f73f aed7 	bgt.w	a78c <_dtoa_r+0xbd8>
    a9de:	e6d7      	b.n	a790 <_dtoa_r+0xbdc>
    a9e0:	e9dd 9a12 	ldrd	r9, sl, [sp, #72]	; 0x48
    a9e4:	f8dd b038 	ldr.w	fp, [sp, #56]	; 0x38
    a9e8:	4644      	mov	r4, r8
    a9ea:	f7ff bb49 	b.w	a080 <_dtoa_r+0x4cc>
    a9ee:	9b20      	ldr	r3, [sp, #128]	; 0x80
    a9f0:	2b02      	cmp	r3, #2
    a9f2:	dc02      	bgt.n	a9fa <_dtoa_r+0xe46>
    a9f4:	f8cd 8018 	str.w	r8, [sp, #24]
    a9f8:	e651      	b.n	a69e <_dtoa_r+0xaea>
    a9fa:	9b10      	ldr	r3, [sp, #64]	; 0x40
    a9fc:	e9cd 8306 	strd	r8, r3, [sp, #24]
    aa00:	e5c7      	b.n	a592 <_dtoa_r+0x9de>
    aa02:	9b20      	ldr	r3, [sp, #128]	; 0x80
    aa04:	2b02      	cmp	r3, #2
    aa06:	dcf8      	bgt.n	a9fa <_dtoa_r+0xe46>
    aa08:	9b10      	ldr	r3, [sp, #64]	; 0x40
    aa0a:	f8cd 8018 	str.w	r8, [sp, #24]
    aa0e:	9307      	str	r3, [sp, #28]
    aa10:	e53b      	b.n	a48a <_dtoa_r+0x8d6>
    aa12:	2302      	movs	r3, #2
    aa14:	9302      	str	r3, [sp, #8]
    aa16:	f7ff ba44 	b.w	9ea2 <_dtoa_r+0x2ee>
    aa1a:	9b11      	ldr	r3, [sp, #68]	; 0x44
    aa1c:	3301      	adds	r3, #1
    aa1e:	9306      	str	r3, [sp, #24]
    aa20:	f7ff bbeb 	b.w	a1fa <_dtoa_r+0x646>
    aa24:	f43f ac8d 	beq.w	a342 <_dtoa_r+0x78e>
    aa28:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
    aa2c:	e4f9      	b.n	a422 <_dtoa_r+0x86e>
    aa2e:	9b02      	ldr	r3, [sp, #8]
    aa30:	9308      	str	r3, [sp, #32]
    aa32:	e510      	b.n	a456 <_dtoa_r+0x8a2>
    aa34:	4602      	mov	r2, r0
    aa36:	4b16      	ldr	r3, [pc, #88]	; (aa90 <_dtoa_r+0xedc>)
    aa38:	4816      	ldr	r0, [pc, #88]	; (aa94 <_dtoa_r+0xee0>)
    aa3a:	f240 21ea 	movw	r1, #746	; 0x2ea
    aa3e:	f002 fbe1 	bl	d204 <__assert_func>
    aa42:	2500      	movs	r5, #0
    aa44:	6465      	str	r5, [r4, #68]	; 0x44
    aa46:	4629      	mov	r1, r5
    aa48:	4620      	mov	r0, r4
    aa4a:	f000 ffaf 	bl	b9ac <_Balloc>
    aa4e:	9004      	str	r0, [sp, #16]
    aa50:	b950      	cbnz	r0, aa68 <_dtoa_r+0xeb4>
    aa52:	4b0f      	ldr	r3, [pc, #60]	; (aa90 <_dtoa_r+0xedc>)
    aa54:	480f      	ldr	r0, [pc, #60]	; (aa94 <_dtoa_r+0xee0>)
    aa56:	2200      	movs	r2, #0
    aa58:	f44f 71d5 	mov.w	r1, #426	; 0x1aa
    aa5c:	f002 fbd2 	bl	d204 <__assert_func>
    aa60:	4b0d      	ldr	r3, [pc, #52]	; (aa98 <_dtoa_r+0xee4>)
    aa62:	9304      	str	r3, [sp, #16]
    aa64:	f7ff b8df 	b.w	9c26 <_dtoa_r+0x72>
    aa68:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    aa6c:	9307      	str	r3, [sp, #28]
    aa6e:	9a04      	ldr	r2, [sp, #16]
    aa70:	9310      	str	r3, [sp, #64]	; 0x40
    aa72:	2301      	movs	r3, #1
    aa74:	6422      	str	r2, [r4, #64]	; 0x40
    aa76:	9521      	str	r5, [sp, #132]	; 0x84
    aa78:	930a      	str	r3, [sp, #40]	; 0x28
    aa7a:	f7ff bb05 	b.w	a088 <_dtoa_r+0x4d4>
    aa7e:	bf00      	nop
    aa80:	0000f3c0 	.word	0x0000f3c0
    aa84:	0000f4b0 	.word	0x0000f4b0
    aa88:	40240000 	.word	0x40240000
    aa8c:	401c0000 	.word	0x401c0000
    aa90:	0000f368 	.word	0x0000f368
    aa94:	0000f37c 	.word	0x0000f37c
    aa98:	0000f35c 	.word	0x0000f35c

0000aa9c <__sflush_r>:
    aa9c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
    aaa0:	b29a      	uxth	r2, r3
    aaa2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    aaa6:	460c      	mov	r4, r1
    aaa8:	0711      	lsls	r1, r2, #28
    aaaa:	4680      	mov	r8, r0
    aaac:	d448      	bmi.n	ab40 <__sflush_r+0xa4>
    aaae:	6862      	ldr	r2, [r4, #4]
    aab0:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    aab4:	2a00      	cmp	r2, #0
    aab6:	81a3      	strh	r3, [r4, #12]
    aab8:	dd5d      	ble.n	ab76 <__sflush_r+0xda>
    aaba:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    aabc:	2d00      	cmp	r5, #0
    aabe:	d057      	beq.n	ab70 <__sflush_r+0xd4>
    aac0:	2200      	movs	r2, #0
    aac2:	b29b      	uxth	r3, r3
    aac4:	f8d8 6000 	ldr.w	r6, [r8]
    aac8:	69e1      	ldr	r1, [r4, #28]
    aaca:	f8c8 2000 	str.w	r2, [r8]
    aace:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
    aad2:	d154      	bne.n	ab7e <__sflush_r+0xe2>
    aad4:	2301      	movs	r3, #1
    aad6:	4640      	mov	r0, r8
    aad8:	47a8      	blx	r5
    aada:	1c43      	adds	r3, r0, #1
    aadc:	d066      	beq.n	abac <__sflush_r+0x110>
    aade:	89a3      	ldrh	r3, [r4, #12]
    aae0:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    aae2:	69e1      	ldr	r1, [r4, #28]
    aae4:	075f      	lsls	r7, r3, #29
    aae6:	d505      	bpl.n	aaf4 <__sflush_r+0x58>
    aae8:	6862      	ldr	r2, [r4, #4]
    aaea:	6b23      	ldr	r3, [r4, #48]	; 0x30
    aaec:	1a80      	subs	r0, r0, r2
    aaee:	b10b      	cbz	r3, aaf4 <__sflush_r+0x58>
    aaf0:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    aaf2:	1ac0      	subs	r0, r0, r3
    aaf4:	4602      	mov	r2, r0
    aaf6:	2300      	movs	r3, #0
    aaf8:	4640      	mov	r0, r8
    aafa:	47a8      	blx	r5
    aafc:	1c45      	adds	r5, r0, #1
    aafe:	d148      	bne.n	ab92 <__sflush_r+0xf6>
    ab00:	f8d8 2000 	ldr.w	r2, [r8]
    ab04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    ab08:	2a00      	cmp	r2, #0
    ab0a:	d05c      	beq.n	abc6 <__sflush_r+0x12a>
    ab0c:	2a1d      	cmp	r2, #29
    ab0e:	d001      	beq.n	ab14 <__sflush_r+0x78>
    ab10:	2a16      	cmp	r2, #22
    ab12:	d164      	bne.n	abde <__sflush_r+0x142>
    ab14:	6922      	ldr	r2, [r4, #16]
    ab16:	2100      	movs	r1, #0
    ab18:	e9c4 2100 	strd	r2, r1, [r4]
    ab1c:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
    ab20:	81a3      	strh	r3, [r4, #12]
    ab22:	6b21      	ldr	r1, [r4, #48]	; 0x30
    ab24:	f8c8 6000 	str.w	r6, [r8]
    ab28:	b311      	cbz	r1, ab70 <__sflush_r+0xd4>
    ab2a:	f104 0340 	add.w	r3, r4, #64	; 0x40
    ab2e:	4299      	cmp	r1, r3
    ab30:	d002      	beq.n	ab38 <__sflush_r+0x9c>
    ab32:	4640      	mov	r0, r8
    ab34:	f000 f9ce 	bl	aed4 <_free_r>
    ab38:	2000      	movs	r0, #0
    ab3a:	6320      	str	r0, [r4, #48]	; 0x30
    ab3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ab40:	6926      	ldr	r6, [r4, #16]
    ab42:	b1ae      	cbz	r6, ab70 <__sflush_r+0xd4>
    ab44:	6825      	ldr	r5, [r4, #0]
    ab46:	6026      	str	r6, [r4, #0]
    ab48:	0791      	lsls	r1, r2, #30
    ab4a:	bf0c      	ite	eq
    ab4c:	6963      	ldreq	r3, [r4, #20]
    ab4e:	2300      	movne	r3, #0
    ab50:	1bad      	subs	r5, r5, r6
    ab52:	60a3      	str	r3, [r4, #8]
    ab54:	e00a      	b.n	ab6c <__sflush_r+0xd0>
    ab56:	462b      	mov	r3, r5
    ab58:	4632      	mov	r2, r6
    ab5a:	6a67      	ldr	r7, [r4, #36]	; 0x24
    ab5c:	69e1      	ldr	r1, [r4, #28]
    ab5e:	4640      	mov	r0, r8
    ab60:	47b8      	blx	r7
    ab62:	2800      	cmp	r0, #0
    ab64:	eba5 0500 	sub.w	r5, r5, r0
    ab68:	4406      	add	r6, r0
    ab6a:	dd0a      	ble.n	ab82 <__sflush_r+0xe6>
    ab6c:	2d00      	cmp	r5, #0
    ab6e:	dcf2      	bgt.n	ab56 <__sflush_r+0xba>
    ab70:	2000      	movs	r0, #0
    ab72:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ab76:	6be2      	ldr	r2, [r4, #60]	; 0x3c
    ab78:	2a00      	cmp	r2, #0
    ab7a:	dc9e      	bgt.n	aaba <__sflush_r+0x1e>
    ab7c:	e7f8      	b.n	ab70 <__sflush_r+0xd4>
    ab7e:	6d20      	ldr	r0, [r4, #80]	; 0x50
    ab80:	e7b0      	b.n	aae4 <__sflush_r+0x48>
    ab82:	89a3      	ldrh	r3, [r4, #12]
    ab84:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    ab88:	81a3      	strh	r3, [r4, #12]
    ab8a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    ab8e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    ab92:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    ab96:	6922      	ldr	r2, [r4, #16]
    ab98:	6022      	str	r2, [r4, #0]
    ab9a:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
    ab9e:	2200      	movs	r2, #0
    aba0:	6062      	str	r2, [r4, #4]
    aba2:	04da      	lsls	r2, r3, #19
    aba4:	81a3      	strh	r3, [r4, #12]
    aba6:	d5bc      	bpl.n	ab22 <__sflush_r+0x86>
    aba8:	6520      	str	r0, [r4, #80]	; 0x50
    abaa:	e7ba      	b.n	ab22 <__sflush_r+0x86>
    abac:	f8d8 3000 	ldr.w	r3, [r8]
    abb0:	2b00      	cmp	r3, #0
    abb2:	d094      	beq.n	aade <__sflush_r+0x42>
    abb4:	2b1d      	cmp	r3, #29
    abb6:	d00f      	beq.n	abd8 <__sflush_r+0x13c>
    abb8:	2b16      	cmp	r3, #22
    abba:	d00d      	beq.n	abd8 <__sflush_r+0x13c>
    abbc:	89a3      	ldrh	r3, [r4, #12]
    abbe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    abc2:	81a3      	strh	r3, [r4, #12]
    abc4:	e7d5      	b.n	ab72 <__sflush_r+0xd6>
    abc6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
    abca:	6921      	ldr	r1, [r4, #16]
    abcc:	81a3      	strh	r3, [r4, #12]
    abce:	04db      	lsls	r3, r3, #19
    abd0:	e9c4 1200 	strd	r1, r2, [r4]
    abd4:	d5a5      	bpl.n	ab22 <__sflush_r+0x86>
    abd6:	e7e7      	b.n	aba8 <__sflush_r+0x10c>
    abd8:	f8c8 6000 	str.w	r6, [r8]
    abdc:	e7c8      	b.n	ab70 <__sflush_r+0xd4>
    abde:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    abe2:	81a3      	strh	r3, [r4, #12]
    abe4:	e7c5      	b.n	ab72 <__sflush_r+0xd6>
    abe6:	bf00      	nop

0000abe8 <_fflush_r>:
    abe8:	b510      	push	{r4, lr}
    abea:	4604      	mov	r4, r0
    abec:	b082      	sub	sp, #8
    abee:	b108      	cbz	r0, abf4 <_fflush_r+0xc>
    abf0:	6b83      	ldr	r3, [r0, #56]	; 0x38
    abf2:	b123      	cbz	r3, abfe <_fflush_r+0x16>
    abf4:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
    abf8:	b948      	cbnz	r0, ac0e <_fflush_r+0x26>
    abfa:	b002      	add	sp, #8
    abfc:	bd10      	pop	{r4, pc}
    abfe:	9101      	str	r1, [sp, #4]
    ac00:	f000 f8f8 	bl	adf4 <__sinit>
    ac04:	9901      	ldr	r1, [sp, #4]
    ac06:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
    ac0a:	2800      	cmp	r0, #0
    ac0c:	d0f5      	beq.n	abfa <_fflush_r+0x12>
    ac0e:	4620      	mov	r0, r4
    ac10:	b002      	add	sp, #8
    ac12:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    ac16:	f7ff bf41 	b.w	aa9c <__sflush_r>
    ac1a:	bf00      	nop

0000ac1c <fflush>:
    ac1c:	b120      	cbz	r0, ac28 <fflush+0xc>
    ac1e:	4b05      	ldr	r3, [pc, #20]	; (ac34 <fflush+0x18>)
    ac20:	4601      	mov	r1, r0
    ac22:	6818      	ldr	r0, [r3, #0]
    ac24:	f7ff bfe0 	b.w	abe8 <_fflush_r>
    ac28:	4b03      	ldr	r3, [pc, #12]	; (ac38 <fflush+0x1c>)
    ac2a:	4904      	ldr	r1, [pc, #16]	; (ac3c <fflush+0x20>)
    ac2c:	6818      	ldr	r0, [r3, #0]
    ac2e:	f000 ba71 	b.w	b114 <_fwalk_reent>
    ac32:	bf00      	nop
    ac34:	0001f6a0 	.word	0x0001f6a0
    ac38:	0000f2f0 	.word	0x0000f2f0
    ac3c:	0000abe9 	.word	0x0000abe9

0000ac40 <__fp_lock>:
    ac40:	2000      	movs	r0, #0
    ac42:	4770      	bx	lr

0000ac44 <_cleanup_r>:
    ac44:	4901      	ldr	r1, [pc, #4]	; (ac4c <_cleanup_r+0x8>)
    ac46:	f000 ba65 	b.w	b114 <_fwalk_reent>
    ac4a:	bf00      	nop
    ac4c:	0000d2d1 	.word	0x0000d2d1

0000ac50 <__sinit.part.0>:
    ac50:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ac54:	6845      	ldr	r5, [r0, #4]
    ac56:	4b2c      	ldr	r3, [pc, #176]	; (ad08 <__sinit.part.0+0xb8>)
    ac58:	63c3      	str	r3, [r0, #60]	; 0x3c
    ac5a:	2400      	movs	r4, #0
    ac5c:	4607      	mov	r7, r0
    ac5e:	f500 723b 	add.w	r2, r0, #748	; 0x2ec
    ac62:	2304      	movs	r3, #4
    ac64:	2103      	movs	r1, #3
    ac66:	e9c0 12b9 	strd	r1, r2, [r0, #740]	; 0x2e4
    ac6a:	f8c0 42e0 	str.w	r4, [r0, #736]	; 0x2e0
    ac6e:	4621      	mov	r1, r4
    ac70:	60eb      	str	r3, [r5, #12]
    ac72:	f105 005c 	add.w	r0, r5, #92	; 0x5c
    ac76:	666c      	str	r4, [r5, #100]	; 0x64
    ac78:	e9c5 4400 	strd	r4, r4, [r5]
    ac7c:	60ac      	str	r4, [r5, #8]
    ac7e:	e9c5 4404 	strd	r4, r4, [r5, #16]
    ac82:	61ac      	str	r4, [r5, #24]
    ac84:	2208      	movs	r2, #8
    ac86:	f7fd faed 	bl	8264 <memset>
    ac8a:	f8df b088 	ldr.w	fp, [pc, #136]	; ad14 <__sinit.part.0+0xc4>
    ac8e:	68be      	ldr	r6, [r7, #8]
    ac90:	f8df a084 	ldr.w	sl, [pc, #132]	; ad18 <__sinit.part.0+0xc8>
    ac94:	f8df 9084 	ldr.w	r9, [pc, #132]	; ad1c <__sinit.part.0+0xcc>
    ac98:	f8df 8084 	ldr.w	r8, [pc, #132]	; ad20 <__sinit.part.0+0xd0>
    ac9c:	4b1b      	ldr	r3, [pc, #108]	; (ad0c <__sinit.part.0+0xbc>)
    ac9e:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
    aca2:	e9c5 5b07 	strd	r5, fp, [r5, #28]
    aca6:	e9c5 a909 	strd	sl, r9, [r5, #36]	; 0x24
    acaa:	4621      	mov	r1, r4
    acac:	60f3      	str	r3, [r6, #12]
    acae:	2208      	movs	r2, #8
    acb0:	f106 005c 	add.w	r0, r6, #92	; 0x5c
    acb4:	6674      	str	r4, [r6, #100]	; 0x64
    acb6:	e9c6 4400 	strd	r4, r4, [r6]
    acba:	60b4      	str	r4, [r6, #8]
    acbc:	e9c6 4404 	strd	r4, r4, [r6, #16]
    acc0:	61b4      	str	r4, [r6, #24]
    acc2:	f7fd facf 	bl	8264 <memset>
    acc6:	68fd      	ldr	r5, [r7, #12]
    acc8:	4b11      	ldr	r3, [pc, #68]	; (ad10 <__sinit.part.0+0xc0>)
    acca:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
    acce:	e9c6 6b07 	strd	r6, fp, [r6, #28]
    acd2:	e9c6 a909 	strd	sl, r9, [r6, #36]	; 0x24
    acd6:	4621      	mov	r1, r4
    acd8:	60eb      	str	r3, [r5, #12]
    acda:	666c      	str	r4, [r5, #100]	; 0x64
    acdc:	e9c5 4400 	strd	r4, r4, [r5]
    ace0:	60ac      	str	r4, [r5, #8]
    ace2:	e9c5 4404 	strd	r4, r4, [r5, #16]
    ace6:	61ac      	str	r4, [r5, #24]
    ace8:	f105 005c 	add.w	r0, r5, #92	; 0x5c
    acec:	2208      	movs	r2, #8
    acee:	f7fd fab9 	bl	8264 <memset>
    acf2:	2301      	movs	r3, #1
    acf4:	e9c5 5b07 	strd	r5, fp, [r5, #28]
    acf8:	e9c5 a909 	strd	sl, r9, [r5, #36]	; 0x24
    acfc:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
    ad00:	63bb      	str	r3, [r7, #56]	; 0x38
    ad02:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ad06:	bf00      	nop
    ad08:	0000ac45 	.word	0x0000ac45
    ad0c:	00010009 	.word	0x00010009
    ad10:	00020012 	.word	0x00020012
    ad14:	0000c349 	.word	0x0000c349
    ad18:	0000c371 	.word	0x0000c371
    ad1c:	0000c3b1 	.word	0x0000c3b1
    ad20:	0000c3d1 	.word	0x0000c3d1

0000ad24 <__fp_unlock>:
    ad24:	2000      	movs	r0, #0
    ad26:	4770      	bx	lr

0000ad28 <__sfmoreglue>:
    ad28:	b570      	push	{r4, r5, r6, lr}
    ad2a:	1e4a      	subs	r2, r1, #1
    ad2c:	2568      	movs	r5, #104	; 0x68
    ad2e:	fb05 f502 	mul.w	r5, r5, r2
    ad32:	460e      	mov	r6, r1
    ad34:	f105 0174 	add.w	r1, r5, #116	; 0x74
    ad38:	f000 fa98 	bl	b26c <_malloc_r>
    ad3c:	4604      	mov	r4, r0
    ad3e:	b140      	cbz	r0, ad52 <__sfmoreglue+0x2a>
    ad40:	2100      	movs	r1, #0
    ad42:	300c      	adds	r0, #12
    ad44:	6066      	str	r6, [r4, #4]
    ad46:	f105 0268 	add.w	r2, r5, #104	; 0x68
    ad4a:	6021      	str	r1, [r4, #0]
    ad4c:	60a0      	str	r0, [r4, #8]
    ad4e:	f7fd fa89 	bl	8264 <memset>
    ad52:	4620      	mov	r0, r4
    ad54:	bd70      	pop	{r4, r5, r6, pc}
    ad56:	bf00      	nop

0000ad58 <__sfp>:
    ad58:	4b1f      	ldr	r3, [pc, #124]	; (add8 <__sfp+0x80>)
    ad5a:	b570      	push	{r4, r5, r6, lr}
    ad5c:	681d      	ldr	r5, [r3, #0]
    ad5e:	6bab      	ldr	r3, [r5, #56]	; 0x38
    ad60:	4606      	mov	r6, r0
    ad62:	b34b      	cbz	r3, adb8 <__sfp+0x60>
    ad64:	f505 7538 	add.w	r5, r5, #736	; 0x2e0
    ad68:	e9d5 3401 	ldrd	r3, r4, [r5, #4]
    ad6c:	3b01      	subs	r3, #1
    ad6e:	d505      	bpl.n	ad7c <__sfp+0x24>
    ad70:	e01e      	b.n	adb0 <__sfp+0x58>
    ad72:	3b01      	subs	r3, #1
    ad74:	1c5a      	adds	r2, r3, #1
    ad76:	f104 0468 	add.w	r4, r4, #104	; 0x68
    ad7a:	d019      	beq.n	adb0 <__sfp+0x58>
    ad7c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    ad80:	2a00      	cmp	r2, #0
    ad82:	d1f6      	bne.n	ad72 <__sfp+0x1a>
    ad84:	2500      	movs	r5, #0
    ad86:	4b15      	ldr	r3, [pc, #84]	; (addc <__sfp+0x84>)
    ad88:	6665      	str	r5, [r4, #100]	; 0x64
    ad8a:	e9c4 5500 	strd	r5, r5, [r4]
    ad8e:	60a5      	str	r5, [r4, #8]
    ad90:	e9c4 5504 	strd	r5, r5, [r4, #16]
    ad94:	61a5      	str	r5, [r4, #24]
    ad96:	4629      	mov	r1, r5
    ad98:	60e3      	str	r3, [r4, #12]
    ad9a:	2208      	movs	r2, #8
    ad9c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
    ada0:	f7fd fa60 	bl	8264 <memset>
    ada4:	e9c4 550c 	strd	r5, r5, [r4, #48]	; 0x30
    ada8:	e9c4 5511 	strd	r5, r5, [r4, #68]	; 0x44
    adac:	4620      	mov	r0, r4
    adae:	bd70      	pop	{r4, r5, r6, pc}
    adb0:	682c      	ldr	r4, [r5, #0]
    adb2:	b12c      	cbz	r4, adc0 <__sfp+0x68>
    adb4:	4625      	mov	r5, r4
    adb6:	e7d7      	b.n	ad68 <__sfp+0x10>
    adb8:	4628      	mov	r0, r5
    adba:	f7ff ff49 	bl	ac50 <__sinit.part.0>
    adbe:	e7d1      	b.n	ad64 <__sfp+0xc>
    adc0:	2104      	movs	r1, #4
    adc2:	4630      	mov	r0, r6
    adc4:	f7ff ffb0 	bl	ad28 <__sfmoreglue>
    adc8:	4604      	mov	r4, r0
    adca:	6028      	str	r0, [r5, #0]
    adcc:	2800      	cmp	r0, #0
    adce:	d1f1      	bne.n	adb4 <__sfp+0x5c>
    add0:	230c      	movs	r3, #12
    add2:	6033      	str	r3, [r6, #0]
    add4:	e7ea      	b.n	adac <__sfp+0x54>
    add6:	bf00      	nop
    add8:	0000f2f0 	.word	0x0000f2f0
    addc:	ffff0001 	.word	0xffff0001

0000ade0 <_cleanup>:
    ade0:	4b02      	ldr	r3, [pc, #8]	; (adec <_cleanup+0xc>)
    ade2:	4903      	ldr	r1, [pc, #12]	; (adf0 <_cleanup+0x10>)
    ade4:	6818      	ldr	r0, [r3, #0]
    ade6:	f000 b995 	b.w	b114 <_fwalk_reent>
    adea:	bf00      	nop
    adec:	0000f2f0 	.word	0x0000f2f0
    adf0:	0000d2d1 	.word	0x0000d2d1

0000adf4 <__sinit>:
    adf4:	6b83      	ldr	r3, [r0, #56]	; 0x38
    adf6:	b103      	cbz	r3, adfa <__sinit+0x6>
    adf8:	4770      	bx	lr
    adfa:	e729      	b.n	ac50 <__sinit.part.0>

0000adfc <__sfp_lock_acquire>:
    adfc:	4770      	bx	lr
    adfe:	bf00      	nop

0000ae00 <__sfp_lock_release>:
    ae00:	4770      	bx	lr
    ae02:	bf00      	nop

0000ae04 <__sinit_lock_acquire>:
    ae04:	4770      	bx	lr
    ae06:	bf00      	nop

0000ae08 <__sinit_lock_release>:
    ae08:	4770      	bx	lr
    ae0a:	bf00      	nop

0000ae0c <__fp_lock_all>:
    ae0c:	4b02      	ldr	r3, [pc, #8]	; (ae18 <__fp_lock_all+0xc>)
    ae0e:	4903      	ldr	r1, [pc, #12]	; (ae1c <__fp_lock_all+0x10>)
    ae10:	6818      	ldr	r0, [r3, #0]
    ae12:	f000 b959 	b.w	b0c8 <_fwalk>
    ae16:	bf00      	nop
    ae18:	0001f6a0 	.word	0x0001f6a0
    ae1c:	0000ac41 	.word	0x0000ac41

0000ae20 <__fp_unlock_all>:
    ae20:	4b02      	ldr	r3, [pc, #8]	; (ae2c <__fp_unlock_all+0xc>)
    ae22:	4903      	ldr	r1, [pc, #12]	; (ae30 <__fp_unlock_all+0x10>)
    ae24:	6818      	ldr	r0, [r3, #0]
    ae26:	f000 b94f 	b.w	b0c8 <_fwalk>
    ae2a:	bf00      	nop
    ae2c:	0001f6a0 	.word	0x0001f6a0
    ae30:	0000ad25 	.word	0x0000ad25

0000ae34 <_malloc_trim_r>:
    ae34:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    ae36:	4f24      	ldr	r7, [pc, #144]	; (aec8 <_malloc_trim_r+0x94>)
    ae38:	460c      	mov	r4, r1
    ae3a:	4606      	mov	r6, r0
    ae3c:	f000 fdb2 	bl	b9a4 <__malloc_lock>
    ae40:	68bb      	ldr	r3, [r7, #8]
    ae42:	685d      	ldr	r5, [r3, #4]
    ae44:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
    ae48:	310f      	adds	r1, #15
    ae4a:	f025 0503 	bic.w	r5, r5, #3
    ae4e:	4429      	add	r1, r5
    ae50:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
    ae54:	f021 010f 	bic.w	r1, r1, #15
    ae58:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
    ae5c:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
    ae60:	db07      	blt.n	ae72 <_malloc_trim_r+0x3e>
    ae62:	2100      	movs	r1, #0
    ae64:	4630      	mov	r0, r6
    ae66:	f001 fa5d 	bl	c324 <_sbrk_r>
    ae6a:	68bb      	ldr	r3, [r7, #8]
    ae6c:	442b      	add	r3, r5
    ae6e:	4298      	cmp	r0, r3
    ae70:	d004      	beq.n	ae7c <_malloc_trim_r+0x48>
    ae72:	4630      	mov	r0, r6
    ae74:	f000 fd98 	bl	b9a8 <__malloc_unlock>
    ae78:	2000      	movs	r0, #0
    ae7a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    ae7c:	4261      	negs	r1, r4
    ae7e:	4630      	mov	r0, r6
    ae80:	f001 fa50 	bl	c324 <_sbrk_r>
    ae84:	3001      	adds	r0, #1
    ae86:	d00d      	beq.n	aea4 <_malloc_trim_r+0x70>
    ae88:	4b10      	ldr	r3, [pc, #64]	; (aecc <_malloc_trim_r+0x98>)
    ae8a:	68ba      	ldr	r2, [r7, #8]
    ae8c:	6819      	ldr	r1, [r3, #0]
    ae8e:	1b2d      	subs	r5, r5, r4
    ae90:	f045 0501 	orr.w	r5, r5, #1
    ae94:	4630      	mov	r0, r6
    ae96:	1b09      	subs	r1, r1, r4
    ae98:	6055      	str	r5, [r2, #4]
    ae9a:	6019      	str	r1, [r3, #0]
    ae9c:	f000 fd84 	bl	b9a8 <__malloc_unlock>
    aea0:	2001      	movs	r0, #1
    aea2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    aea4:	2100      	movs	r1, #0
    aea6:	4630      	mov	r0, r6
    aea8:	f001 fa3c 	bl	c324 <_sbrk_r>
    aeac:	68ba      	ldr	r2, [r7, #8]
    aeae:	1a83      	subs	r3, r0, r2
    aeb0:	2b0f      	cmp	r3, #15
    aeb2:	ddde      	ble.n	ae72 <_malloc_trim_r+0x3e>
    aeb4:	4c06      	ldr	r4, [pc, #24]	; (aed0 <_malloc_trim_r+0x9c>)
    aeb6:	4905      	ldr	r1, [pc, #20]	; (aecc <_malloc_trim_r+0x98>)
    aeb8:	6824      	ldr	r4, [r4, #0]
    aeba:	f043 0301 	orr.w	r3, r3, #1
    aebe:	1b00      	subs	r0, r0, r4
    aec0:	6053      	str	r3, [r2, #4]
    aec2:	6008      	str	r0, [r1, #0]
    aec4:	e7d5      	b.n	ae72 <_malloc_trim_r+0x3e>
    aec6:	bf00      	nop
    aec8:	0001fad0 	.word	0x0001fad0
    aecc:	0002006c 	.word	0x0002006c
    aed0:	0001fed8 	.word	0x0001fed8

0000aed4 <_free_r>:
    aed4:	2900      	cmp	r1, #0
    aed6:	d05e      	beq.n	af96 <_free_r+0xc2>
    aed8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    aeda:	460f      	mov	r7, r1
    aedc:	4606      	mov	r6, r0
    aede:	f000 fd61 	bl	b9a4 <__malloc_lock>
    aee2:	f857 cc04 	ldr.w	ip, [r7, #-4]
    aee6:	4d75      	ldr	r5, [pc, #468]	; (b0bc <_free_r+0x1e8>)
    aee8:	f02c 0301 	bic.w	r3, ip, #1
    aeec:	f1a7 0008 	sub.w	r0, r7, #8
    aef0:	18c2      	adds	r2, r0, r3
    aef2:	68a9      	ldr	r1, [r5, #8]
    aef4:	6854      	ldr	r4, [r2, #4]
    aef6:	4291      	cmp	r1, r2
    aef8:	f024 0403 	bic.w	r4, r4, #3
    aefc:	f000 8084 	beq.w	b008 <_free_r+0x134>
    af00:	f01c 0f01 	tst.w	ip, #1
    af04:	6054      	str	r4, [r2, #4]
    af06:	eb02 0104 	add.w	r1, r2, r4
    af0a:	d133      	bne.n	af74 <_free_r+0xa0>
    af0c:	f857 ec08 	ldr.w	lr, [r7, #-8]
    af10:	6849      	ldr	r1, [r1, #4]
    af12:	eba0 000e 	sub.w	r0, r0, lr
    af16:	f105 0c08 	add.w	ip, r5, #8
    af1a:	6887      	ldr	r7, [r0, #8]
    af1c:	4567      	cmp	r7, ip
    af1e:	4473      	add	r3, lr
    af20:	f001 0101 	and.w	r1, r1, #1
    af24:	d060      	beq.n	afe8 <_free_r+0x114>
    af26:	f8d0 e00c 	ldr.w	lr, [r0, #12]
    af2a:	f8c7 e00c 	str.w	lr, [r7, #12]
    af2e:	f8ce 7008 	str.w	r7, [lr, #8]
    af32:	2900      	cmp	r1, #0
    af34:	f000 808d 	beq.w	b052 <_free_r+0x17e>
    af38:	f043 0101 	orr.w	r1, r3, #1
    af3c:	6041      	str	r1, [r0, #4]
    af3e:	6013      	str	r3, [r2, #0]
    af40:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    af44:	d230      	bcs.n	afa8 <_free_r+0xd4>
    af46:	08db      	lsrs	r3, r3, #3
    af48:	1c59      	adds	r1, r3, #1
    af4a:	686c      	ldr	r4, [r5, #4]
    af4c:	109a      	asrs	r2, r3, #2
    af4e:	2301      	movs	r3, #1
    af50:	4093      	lsls	r3, r2
    af52:	4323      	orrs	r3, r4
    af54:	eb05 02c1 	add.w	r2, r5, r1, lsl #3
    af58:	f855 4031 	ldr.w	r4, [r5, r1, lsl #3]
    af5c:	606b      	str	r3, [r5, #4]
    af5e:	3a08      	subs	r2, #8
    af60:	e9c0 4202 	strd	r4, r2, [r0, #8]
    af64:	f845 0031 	str.w	r0, [r5, r1, lsl #3]
    af68:	60e0      	str	r0, [r4, #12]
    af6a:	4630      	mov	r0, r6
    af6c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    af70:	f000 bd1a 	b.w	b9a8 <__malloc_unlock>
    af74:	6849      	ldr	r1, [r1, #4]
    af76:	07c9      	lsls	r1, r1, #31
    af78:	d40e      	bmi.n	af98 <_free_r+0xc4>
    af7a:	4423      	add	r3, r4
    af7c:	f105 0c08 	add.w	ip, r5, #8
    af80:	6891      	ldr	r1, [r2, #8]
    af82:	4561      	cmp	r1, ip
    af84:	f043 0401 	orr.w	r4, r3, #1
    af88:	d06b      	beq.n	b062 <_free_r+0x18e>
    af8a:	68d2      	ldr	r2, [r2, #12]
    af8c:	60ca      	str	r2, [r1, #12]
    af8e:	6091      	str	r1, [r2, #8]
    af90:	6044      	str	r4, [r0, #4]
    af92:	50c3      	str	r3, [r0, r3]
    af94:	e7d4      	b.n	af40 <_free_r+0x6c>
    af96:	4770      	bx	lr
    af98:	f043 0101 	orr.w	r1, r3, #1
    af9c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    afa0:	f847 1c04 	str.w	r1, [r7, #-4]
    afa4:	6013      	str	r3, [r2, #0]
    afa6:	d3ce      	bcc.n	af46 <_free_r+0x72>
    afa8:	0a5a      	lsrs	r2, r3, #9
    afaa:	2a04      	cmp	r2, #4
    afac:	d846      	bhi.n	b03c <_free_r+0x168>
    afae:	099a      	lsrs	r2, r3, #6
    afb0:	f102 0739 	add.w	r7, r2, #57	; 0x39
    afb4:	00ff      	lsls	r7, r7, #3
    afb6:	f102 0138 	add.w	r1, r2, #56	; 0x38
    afba:	19ec      	adds	r4, r5, r7
    afbc:	59ea      	ldr	r2, [r5, r7]
    afbe:	3c08      	subs	r4, #8
    afc0:	4294      	cmp	r4, r2
    afc2:	d055      	beq.n	b070 <_free_r+0x19c>
    afc4:	6851      	ldr	r1, [r2, #4]
    afc6:	f021 0103 	bic.w	r1, r1, #3
    afca:	4299      	cmp	r1, r3
    afcc:	d902      	bls.n	afd4 <_free_r+0x100>
    afce:	6892      	ldr	r2, [r2, #8]
    afd0:	4294      	cmp	r4, r2
    afd2:	d1f7      	bne.n	afc4 <_free_r+0xf0>
    afd4:	68d4      	ldr	r4, [r2, #12]
    afd6:	e9c0 2402 	strd	r2, r4, [r0, #8]
    afda:	60a0      	str	r0, [r4, #8]
    afdc:	60d0      	str	r0, [r2, #12]
    afde:	4630      	mov	r0, r6
    afe0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    afe4:	f000 bce0 	b.w	b9a8 <__malloc_unlock>
    afe8:	2900      	cmp	r1, #0
    afea:	d162      	bne.n	b0b2 <_free_r+0x1de>
    afec:	e9d2 2102 	ldrd	r2, r1, [r2, #8]
    aff0:	4423      	add	r3, r4
    aff2:	f043 0401 	orr.w	r4, r3, #1
    aff6:	60d1      	str	r1, [r2, #12]
    aff8:	608a      	str	r2, [r1, #8]
    affa:	6044      	str	r4, [r0, #4]
    affc:	50c3      	str	r3, [r0, r3]
    affe:	4630      	mov	r0, r6
    b000:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    b004:	f000 bcd0 	b.w	b9a8 <__malloc_unlock>
    b008:	f01c 0f01 	tst.w	ip, #1
    b00c:	4423      	add	r3, r4
    b00e:	d107      	bne.n	b020 <_free_r+0x14c>
    b010:	f857 2c08 	ldr.w	r2, [r7, #-8]
    b014:	1a80      	subs	r0, r0, r2
    b016:	4413      	add	r3, r2
    b018:	e9d0 1202 	ldrd	r1, r2, [r0, #8]
    b01c:	60ca      	str	r2, [r1, #12]
    b01e:	6091      	str	r1, [r2, #8]
    b020:	4a27      	ldr	r2, [pc, #156]	; (b0c0 <_free_r+0x1ec>)
    b022:	6812      	ldr	r2, [r2, #0]
    b024:	f043 0101 	orr.w	r1, r3, #1
    b028:	429a      	cmp	r2, r3
    b02a:	6041      	str	r1, [r0, #4]
    b02c:	60a8      	str	r0, [r5, #8]
    b02e:	d89c      	bhi.n	af6a <_free_r+0x96>
    b030:	4b24      	ldr	r3, [pc, #144]	; (b0c4 <_free_r+0x1f0>)
    b032:	4630      	mov	r0, r6
    b034:	6819      	ldr	r1, [r3, #0]
    b036:	f7ff fefd 	bl	ae34 <_malloc_trim_r>
    b03a:	e796      	b.n	af6a <_free_r+0x96>
    b03c:	2a14      	cmp	r2, #20
    b03e:	d90a      	bls.n	b056 <_free_r+0x182>
    b040:	2a54      	cmp	r2, #84	; 0x54
    b042:	d81d      	bhi.n	b080 <_free_r+0x1ac>
    b044:	0b1a      	lsrs	r2, r3, #12
    b046:	f102 076f 	add.w	r7, r2, #111	; 0x6f
    b04a:	00ff      	lsls	r7, r7, #3
    b04c:	f102 016e 	add.w	r1, r2, #110	; 0x6e
    b050:	e7b3      	b.n	afba <_free_r+0xe6>
    b052:	4423      	add	r3, r4
    b054:	e794      	b.n	af80 <_free_r+0xac>
    b056:	f102 075c 	add.w	r7, r2, #92	; 0x5c
    b05a:	00ff      	lsls	r7, r7, #3
    b05c:	f102 015b 	add.w	r1, r2, #91	; 0x5b
    b060:	e7ab      	b.n	afba <_free_r+0xe6>
    b062:	e9c5 0004 	strd	r0, r0, [r5, #16]
    b066:	e9c0 cc02 	strd	ip, ip, [r0, #8]
    b06a:	6044      	str	r4, [r0, #4]
    b06c:	50c3      	str	r3, [r0, r3]
    b06e:	e77c      	b.n	af6a <_free_r+0x96>
    b070:	686b      	ldr	r3, [r5, #4]
    b072:	1089      	asrs	r1, r1, #2
    b074:	2701      	movs	r7, #1
    b076:	fa07 f101 	lsl.w	r1, r7, r1
    b07a:	4319      	orrs	r1, r3
    b07c:	6069      	str	r1, [r5, #4]
    b07e:	e7aa      	b.n	afd6 <_free_r+0x102>
    b080:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
    b084:	d806      	bhi.n	b094 <_free_r+0x1c0>
    b086:	0bda      	lsrs	r2, r3, #15
    b088:	f102 0778 	add.w	r7, r2, #120	; 0x78
    b08c:	00ff      	lsls	r7, r7, #3
    b08e:	f102 0177 	add.w	r1, r2, #119	; 0x77
    b092:	e792      	b.n	afba <_free_r+0xe6>
    b094:	f240 5154 	movw	r1, #1364	; 0x554
    b098:	428a      	cmp	r2, r1
    b09a:	d806      	bhi.n	b0aa <_free_r+0x1d6>
    b09c:	0c9a      	lsrs	r2, r3, #18
    b09e:	f102 077d 	add.w	r7, r2, #125	; 0x7d
    b0a2:	00ff      	lsls	r7, r7, #3
    b0a4:	f102 017c 	add.w	r1, r2, #124	; 0x7c
    b0a8:	e787      	b.n	afba <_free_r+0xe6>
    b0aa:	f44f 777e 	mov.w	r7, #1016	; 0x3f8
    b0ae:	217e      	movs	r1, #126	; 0x7e
    b0b0:	e783      	b.n	afba <_free_r+0xe6>
    b0b2:	f043 0101 	orr.w	r1, r3, #1
    b0b6:	6041      	str	r1, [r0, #4]
    b0b8:	6013      	str	r3, [r2, #0]
    b0ba:	e756      	b.n	af6a <_free_r+0x96>
    b0bc:	0001fad0 	.word	0x0001fad0
    b0c0:	0001fedc 	.word	0x0001fedc
    b0c4:	00020068 	.word	0x00020068

0000b0c8 <_fwalk>:
    b0c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    b0cc:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
    b0d0:	d01b      	beq.n	b10a <_fwalk+0x42>
    b0d2:	4688      	mov	r8, r1
    b0d4:	2600      	movs	r6, #0
    b0d6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
    b0da:	3d01      	subs	r5, #1
    b0dc:	d40f      	bmi.n	b0fe <_fwalk+0x36>
    b0de:	89a3      	ldrh	r3, [r4, #12]
    b0e0:	2b01      	cmp	r3, #1
    b0e2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
    b0e6:	d906      	bls.n	b0f6 <_fwalk+0x2e>
    b0e8:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
    b0ec:	3301      	adds	r3, #1
    b0ee:	4620      	mov	r0, r4
    b0f0:	d001      	beq.n	b0f6 <_fwalk+0x2e>
    b0f2:	47c0      	blx	r8
    b0f4:	4306      	orrs	r6, r0
    b0f6:	1c6b      	adds	r3, r5, #1
    b0f8:	f104 0468 	add.w	r4, r4, #104	; 0x68
    b0fc:	d1ef      	bne.n	b0de <_fwalk+0x16>
    b0fe:	683f      	ldr	r7, [r7, #0]
    b100:	2f00      	cmp	r7, #0
    b102:	d1e8      	bne.n	b0d6 <_fwalk+0xe>
    b104:	4630      	mov	r0, r6
    b106:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    b10a:	463e      	mov	r6, r7
    b10c:	4630      	mov	r0, r6
    b10e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    b112:	bf00      	nop

0000b114 <_fwalk_reent>:
    b114:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    b118:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
    b11c:	d01f      	beq.n	b15e <_fwalk_reent+0x4a>
    b11e:	4688      	mov	r8, r1
    b120:	4606      	mov	r6, r0
    b122:	f04f 0900 	mov.w	r9, #0
    b126:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
    b12a:	3d01      	subs	r5, #1
    b12c:	d411      	bmi.n	b152 <_fwalk_reent+0x3e>
    b12e:	89a3      	ldrh	r3, [r4, #12]
    b130:	2b01      	cmp	r3, #1
    b132:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
    b136:	d908      	bls.n	b14a <_fwalk_reent+0x36>
    b138:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
    b13c:	3301      	adds	r3, #1
    b13e:	4621      	mov	r1, r4
    b140:	4630      	mov	r0, r6
    b142:	d002      	beq.n	b14a <_fwalk_reent+0x36>
    b144:	47c0      	blx	r8
    b146:	ea49 0900 	orr.w	r9, r9, r0
    b14a:	1c6b      	adds	r3, r5, #1
    b14c:	f104 0468 	add.w	r4, r4, #104	; 0x68
    b150:	d1ed      	bne.n	b12e <_fwalk_reent+0x1a>
    b152:	683f      	ldr	r7, [r7, #0]
    b154:	2f00      	cmp	r7, #0
    b156:	d1e6      	bne.n	b126 <_fwalk_reent+0x12>
    b158:	4648      	mov	r0, r9
    b15a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    b15e:	46b9      	mov	r9, r7
    b160:	4648      	mov	r0, r9
    b162:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    b166:	bf00      	nop

0000b168 <__localeconv_l>:
    b168:	30f0      	adds	r0, #240	; 0xf0
    b16a:	4770      	bx	lr

0000b16c <_localeconv_r>:
    b16c:	4800      	ldr	r0, [pc, #0]	; (b170 <_localeconv_r+0x4>)
    b16e:	4770      	bx	lr
    b170:	0001ffd0 	.word	0x0001ffd0

0000b174 <localeconv>:
    b174:	4800      	ldr	r0, [pc, #0]	; (b178 <localeconv+0x4>)
    b176:	4770      	bx	lr
    b178:	0001ffd0 	.word	0x0001ffd0

0000b17c <__swhatbuf_r>:
    b17c:	b570      	push	{r4, r5, r6, lr}
    b17e:	460c      	mov	r4, r1
    b180:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    b184:	2900      	cmp	r1, #0
    b186:	b096      	sub	sp, #88	; 0x58
    b188:	4615      	mov	r5, r2
    b18a:	461e      	mov	r6, r3
    b18c:	db14      	blt.n	b1b8 <__swhatbuf_r+0x3c>
    b18e:	466a      	mov	r2, sp
    b190:	f002 f992 	bl	d4b8 <_fstat_r>
    b194:	2800      	cmp	r0, #0
    b196:	db0f      	blt.n	b1b8 <__swhatbuf_r+0x3c>
    b198:	9a01      	ldr	r2, [sp, #4]
    b19a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
    b19e:	f5a2 5200 	sub.w	r2, r2, #8192	; 0x2000
    b1a2:	fab2 f282 	clz	r2, r2
    b1a6:	0952      	lsrs	r2, r2, #5
    b1a8:	f44f 6380 	mov.w	r3, #1024	; 0x400
    b1ac:	f44f 6000 	mov.w	r0, #2048	; 0x800
    b1b0:	6032      	str	r2, [r6, #0]
    b1b2:	602b      	str	r3, [r5, #0]
    b1b4:	b016      	add	sp, #88	; 0x58
    b1b6:	bd70      	pop	{r4, r5, r6, pc}
    b1b8:	89a2      	ldrh	r2, [r4, #12]
    b1ba:	2300      	movs	r3, #0
    b1bc:	f012 0080 	ands.w	r0, r2, #128	; 0x80
    b1c0:	6033      	str	r3, [r6, #0]
    b1c2:	d004      	beq.n	b1ce <__swhatbuf_r+0x52>
    b1c4:	2240      	movs	r2, #64	; 0x40
    b1c6:	4618      	mov	r0, r3
    b1c8:	602a      	str	r2, [r5, #0]
    b1ca:	b016      	add	sp, #88	; 0x58
    b1cc:	bd70      	pop	{r4, r5, r6, pc}
    b1ce:	f44f 6380 	mov.w	r3, #1024	; 0x400
    b1d2:	602b      	str	r3, [r5, #0]
    b1d4:	b016      	add	sp, #88	; 0x58
    b1d6:	bd70      	pop	{r4, r5, r6, pc}

0000b1d8 <__smakebuf_r>:
    b1d8:	898a      	ldrh	r2, [r1, #12]
    b1da:	0792      	lsls	r2, r2, #30
    b1dc:	460b      	mov	r3, r1
    b1de:	d506      	bpl.n	b1ee <__smakebuf_r+0x16>
    b1e0:	f101 0243 	add.w	r2, r1, #67	; 0x43
    b1e4:	2101      	movs	r1, #1
    b1e6:	601a      	str	r2, [r3, #0]
    b1e8:	e9c3 2104 	strd	r2, r1, [r3, #16]
    b1ec:	4770      	bx	lr
    b1ee:	b570      	push	{r4, r5, r6, lr}
    b1f0:	b082      	sub	sp, #8
    b1f2:	ab01      	add	r3, sp, #4
    b1f4:	466a      	mov	r2, sp
    b1f6:	460c      	mov	r4, r1
    b1f8:	4606      	mov	r6, r0
    b1fa:	f7ff ffbf 	bl	b17c <__swhatbuf_r>
    b1fe:	9900      	ldr	r1, [sp, #0]
    b200:	4605      	mov	r5, r0
    b202:	4630      	mov	r0, r6
    b204:	f000 f832 	bl	b26c <_malloc_r>
    b208:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    b20c:	b170      	cbz	r0, b22c <__smakebuf_r+0x54>
    b20e:	4916      	ldr	r1, [pc, #88]	; (b268 <__smakebuf_r+0x90>)
    b210:	63f1      	str	r1, [r6, #60]	; 0x3c
    b212:	9a01      	ldr	r2, [sp, #4]
    b214:	9900      	ldr	r1, [sp, #0]
    b216:	6020      	str	r0, [r4, #0]
    b218:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    b21c:	81a3      	strh	r3, [r4, #12]
    b21e:	e9c4 0104 	strd	r0, r1, [r4, #16]
    b222:	b98a      	cbnz	r2, b248 <__smakebuf_r+0x70>
    b224:	432b      	orrs	r3, r5
    b226:	81a3      	strh	r3, [r4, #12]
    b228:	b002      	add	sp, #8
    b22a:	bd70      	pop	{r4, r5, r6, pc}
    b22c:	059a      	lsls	r2, r3, #22
    b22e:	d4fb      	bmi.n	b228 <__smakebuf_r+0x50>
    b230:	f023 0303 	bic.w	r3, r3, #3
    b234:	f104 0243 	add.w	r2, r4, #67	; 0x43
    b238:	f043 0302 	orr.w	r3, r3, #2
    b23c:	2101      	movs	r1, #1
    b23e:	81a3      	strh	r3, [r4, #12]
    b240:	6022      	str	r2, [r4, #0]
    b242:	e9c4 2104 	strd	r2, r1, [r4, #16]
    b246:	e7ef      	b.n	b228 <__smakebuf_r+0x50>
    b248:	4630      	mov	r0, r6
    b24a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    b24e:	f002 facb 	bl	d7e8 <_isatty_r>
    b252:	b910      	cbnz	r0, b25a <__smakebuf_r+0x82>
    b254:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    b258:	e7e4      	b.n	b224 <__smakebuf_r+0x4c>
    b25a:	89a3      	ldrh	r3, [r4, #12]
    b25c:	f023 0303 	bic.w	r3, r3, #3
    b260:	f043 0301 	orr.w	r3, r3, #1
    b264:	b21b      	sxth	r3, r3
    b266:	e7dd      	b.n	b224 <__smakebuf_r+0x4c>
    b268:	0000ac45 	.word	0x0000ac45

0000b26c <_malloc_r>:
    b26c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b270:	f101 050b 	add.w	r5, r1, #11
    b274:	2d16      	cmp	r5, #22
    b276:	b083      	sub	sp, #12
    b278:	4606      	mov	r6, r0
    b27a:	d823      	bhi.n	b2c4 <_malloc_r+0x58>
    b27c:	2910      	cmp	r1, #16
    b27e:	f200 80b9 	bhi.w	b3f4 <_malloc_r+0x188>
    b282:	f000 fb8f 	bl	b9a4 <__malloc_lock>
    b286:	2510      	movs	r5, #16
    b288:	2318      	movs	r3, #24
    b28a:	2002      	movs	r0, #2
    b28c:	4fcd      	ldr	r7, [pc, #820]	; (b5c4 <_malloc_r+0x358>)
    b28e:	443b      	add	r3, r7
    b290:	f1a3 0208 	sub.w	r2, r3, #8
    b294:	685c      	ldr	r4, [r3, #4]
    b296:	4294      	cmp	r4, r2
    b298:	f000 80b9 	beq.w	b40e <_malloc_r+0x1a2>
    b29c:	6863      	ldr	r3, [r4, #4]
    b29e:	f023 0303 	bic.w	r3, r3, #3
    b2a2:	4423      	add	r3, r4
    b2a4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
    b2a8:	685a      	ldr	r2, [r3, #4]
    b2aa:	60e9      	str	r1, [r5, #12]
    b2ac:	f042 0201 	orr.w	r2, r2, #1
    b2b0:	4630      	mov	r0, r6
    b2b2:	608d      	str	r5, [r1, #8]
    b2b4:	605a      	str	r2, [r3, #4]
    b2b6:	f000 fb77 	bl	b9a8 <__malloc_unlock>
    b2ba:	3408      	adds	r4, #8
    b2bc:	4620      	mov	r0, r4
    b2be:	b003      	add	sp, #12
    b2c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b2c4:	f035 0507 	bics.w	r5, r5, #7
    b2c8:	f100 8094 	bmi.w	b3f4 <_malloc_r+0x188>
    b2cc:	42a9      	cmp	r1, r5
    b2ce:	f200 8091 	bhi.w	b3f4 <_malloc_r+0x188>
    b2d2:	f000 fb67 	bl	b9a4 <__malloc_lock>
    b2d6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
    b2da:	f0c0 819d 	bcc.w	b618 <_malloc_r+0x3ac>
    b2de:	0a6b      	lsrs	r3, r5, #9
    b2e0:	f000 808f 	beq.w	b402 <_malloc_r+0x196>
    b2e4:	2b04      	cmp	r3, #4
    b2e6:	f200 8173 	bhi.w	b5d0 <_malloc_r+0x364>
    b2ea:	09ab      	lsrs	r3, r5, #6
    b2ec:	f103 0039 	add.w	r0, r3, #57	; 0x39
    b2f0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
    b2f4:	00c3      	lsls	r3, r0, #3
    b2f6:	4fb3      	ldr	r7, [pc, #716]	; (b5c4 <_malloc_r+0x358>)
    b2f8:	443b      	add	r3, r7
    b2fa:	f1a3 0108 	sub.w	r1, r3, #8
    b2fe:	685c      	ldr	r4, [r3, #4]
    b300:	42a1      	cmp	r1, r4
    b302:	d106      	bne.n	b312 <_malloc_r+0xa6>
    b304:	e00c      	b.n	b320 <_malloc_r+0xb4>
    b306:	2a00      	cmp	r2, #0
    b308:	f280 812b 	bge.w	b562 <_malloc_r+0x2f6>
    b30c:	68e4      	ldr	r4, [r4, #12]
    b30e:	42a1      	cmp	r1, r4
    b310:	d006      	beq.n	b320 <_malloc_r+0xb4>
    b312:	6863      	ldr	r3, [r4, #4]
    b314:	f023 0303 	bic.w	r3, r3, #3
    b318:	1b5a      	subs	r2, r3, r5
    b31a:	2a0f      	cmp	r2, #15
    b31c:	ddf3      	ble.n	b306 <_malloc_r+0x9a>
    b31e:	4660      	mov	r0, ip
    b320:	693c      	ldr	r4, [r7, #16]
    b322:	f8df c2a4 	ldr.w	ip, [pc, #676]	; b5c8 <_malloc_r+0x35c>
    b326:	4564      	cmp	r4, ip
    b328:	d07c      	beq.n	b424 <_malloc_r+0x1b8>
    b32a:	6863      	ldr	r3, [r4, #4]
    b32c:	f023 0303 	bic.w	r3, r3, #3
    b330:	1b5a      	subs	r2, r3, r5
    b332:	2a0f      	cmp	r2, #15
    b334:	f300 817e 	bgt.w	b634 <_malloc_r+0x3c8>
    b338:	2a00      	cmp	r2, #0
    b33a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
    b33e:	f280 816f 	bge.w	b620 <_malloc_r+0x3b4>
    b342:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    b346:	f080 811a 	bcs.w	b57e <_malloc_r+0x312>
    b34a:	08db      	lsrs	r3, r3, #3
    b34c:	1c59      	adds	r1, r3, #1
    b34e:	687a      	ldr	r2, [r7, #4]
    b350:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
    b354:	f8c4 8008 	str.w	r8, [r4, #8]
    b358:	f04f 0e01 	mov.w	lr, #1
    b35c:	109b      	asrs	r3, r3, #2
    b35e:	fa0e f303 	lsl.w	r3, lr, r3
    b362:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
    b366:	4313      	orrs	r3, r2
    b368:	f1ae 0208 	sub.w	r2, lr, #8
    b36c:	60e2      	str	r2, [r4, #12]
    b36e:	607b      	str	r3, [r7, #4]
    b370:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
    b374:	f8c8 400c 	str.w	r4, [r8, #12]
    b378:	1082      	asrs	r2, r0, #2
    b37a:	2401      	movs	r4, #1
    b37c:	4094      	lsls	r4, r2
    b37e:	429c      	cmp	r4, r3
    b380:	d856      	bhi.n	b430 <_malloc_r+0x1c4>
    b382:	421c      	tst	r4, r3
    b384:	d106      	bne.n	b394 <_malloc_r+0x128>
    b386:	f020 0003 	bic.w	r0, r0, #3
    b38a:	0064      	lsls	r4, r4, #1
    b38c:	421c      	tst	r4, r3
    b38e:	f100 0004 	add.w	r0, r0, #4
    b392:	d0fa      	beq.n	b38a <_malloc_r+0x11e>
    b394:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
    b398:	46ce      	mov	lr, r9
    b39a:	4680      	mov	r8, r0
    b39c:	f8de 300c 	ldr.w	r3, [lr, #12]
    b3a0:	459e      	cmp	lr, r3
    b3a2:	d107      	bne.n	b3b4 <_malloc_r+0x148>
    b3a4:	e120      	b.n	b5e8 <_malloc_r+0x37c>
    b3a6:	2a00      	cmp	r2, #0
    b3a8:	f280 8127 	bge.w	b5fa <_malloc_r+0x38e>
    b3ac:	68db      	ldr	r3, [r3, #12]
    b3ae:	459e      	cmp	lr, r3
    b3b0:	f000 811a 	beq.w	b5e8 <_malloc_r+0x37c>
    b3b4:	6859      	ldr	r1, [r3, #4]
    b3b6:	f021 0103 	bic.w	r1, r1, #3
    b3ba:	1b4a      	subs	r2, r1, r5
    b3bc:	2a0f      	cmp	r2, #15
    b3be:	ddf2      	ble.n	b3a6 <_malloc_r+0x13a>
    b3c0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
    b3c4:	195c      	adds	r4, r3, r5
    b3c6:	f045 0501 	orr.w	r5, r5, #1
    b3ca:	605d      	str	r5, [r3, #4]
    b3cc:	f042 0501 	orr.w	r5, r2, #1
    b3d0:	f8c8 e00c 	str.w	lr, [r8, #12]
    b3d4:	4630      	mov	r0, r6
    b3d6:	f8ce 8008 	str.w	r8, [lr, #8]
    b3da:	e9c7 4404 	strd	r4, r4, [r7, #16]
    b3de:	e9c4 cc02 	strd	ip, ip, [r4, #8]
    b3e2:	6065      	str	r5, [r4, #4]
    b3e4:	505a      	str	r2, [r3, r1]
    b3e6:	9300      	str	r3, [sp, #0]
    b3e8:	f000 fade 	bl	b9a8 <__malloc_unlock>
    b3ec:	9b00      	ldr	r3, [sp, #0]
    b3ee:	f103 0408 	add.w	r4, r3, #8
    b3f2:	e002      	b.n	b3fa <_malloc_r+0x18e>
    b3f4:	230c      	movs	r3, #12
    b3f6:	6033      	str	r3, [r6, #0]
    b3f8:	2400      	movs	r4, #0
    b3fa:	4620      	mov	r0, r4
    b3fc:	b003      	add	sp, #12
    b3fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b402:	f44f 7300 	mov.w	r3, #512	; 0x200
    b406:	2040      	movs	r0, #64	; 0x40
    b408:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
    b40c:	e773      	b.n	b2f6 <_malloc_r+0x8a>
    b40e:	68dc      	ldr	r4, [r3, #12]
    b410:	42a3      	cmp	r3, r4
    b412:	bf08      	it	eq
    b414:	3002      	addeq	r0, #2
    b416:	f47f af41 	bne.w	b29c <_malloc_r+0x30>
    b41a:	693c      	ldr	r4, [r7, #16]
    b41c:	f8df c1a8 	ldr.w	ip, [pc, #424]	; b5c8 <_malloc_r+0x35c>
    b420:	4564      	cmp	r4, ip
    b422:	d182      	bne.n	b32a <_malloc_r+0xbe>
    b424:	687b      	ldr	r3, [r7, #4]
    b426:	1082      	asrs	r2, r0, #2
    b428:	2401      	movs	r4, #1
    b42a:	4094      	lsls	r4, r2
    b42c:	429c      	cmp	r4, r3
    b42e:	d9a8      	bls.n	b382 <_malloc_r+0x116>
    b430:	68bc      	ldr	r4, [r7, #8]
    b432:	6863      	ldr	r3, [r4, #4]
    b434:	f023 0803 	bic.w	r8, r3, #3
    b438:	45a8      	cmp	r8, r5
    b43a:	d303      	bcc.n	b444 <_malloc_r+0x1d8>
    b43c:	eba8 0305 	sub.w	r3, r8, r5
    b440:	2b0f      	cmp	r3, #15
    b442:	dc7e      	bgt.n	b542 <_malloc_r+0x2d6>
    b444:	f8df 9184 	ldr.w	r9, [pc, #388]	; b5cc <_malloc_r+0x360>
    b448:	f8d7 2408 	ldr.w	r2, [r7, #1032]	; 0x408
    b44c:	f8d9 3000 	ldr.w	r3, [r9]
    b450:	3201      	adds	r2, #1
    b452:	eb04 0a08 	add.w	sl, r4, r8
    b456:	442b      	add	r3, r5
    b458:	f000 8137 	beq.w	b6ca <_malloc_r+0x45e>
    b45c:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
    b460:	330f      	adds	r3, #15
    b462:	f423 6b7f 	bic.w	fp, r3, #4080	; 0xff0
    b466:	f02b 0b0f 	bic.w	fp, fp, #15
    b46a:	4659      	mov	r1, fp
    b46c:	4630      	mov	r0, r6
    b46e:	f000 ff59 	bl	c324 <_sbrk_r>
    b472:	1c41      	adds	r1, r0, #1
    b474:	4602      	mov	r2, r0
    b476:	f000 80f7 	beq.w	b668 <_malloc_r+0x3fc>
    b47a:	4582      	cmp	sl, r0
    b47c:	f200 80f2 	bhi.w	b664 <_malloc_r+0x3f8>
    b480:	f8d9 1004 	ldr.w	r1, [r9, #4]
    b484:	4459      	add	r1, fp
    b486:	f8c9 1004 	str.w	r1, [r9, #4]
    b48a:	460b      	mov	r3, r1
    b48c:	f000 8153 	beq.w	b736 <_malloc_r+0x4ca>
    b490:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
    b494:	3101      	adds	r1, #1
    b496:	bf1b      	ittet	ne
    b498:	eba2 0a0a 	subne.w	sl, r2, sl
    b49c:	4453      	addne	r3, sl
    b49e:	f8c7 2408 	streq.w	r2, [r7, #1032]	; 0x408
    b4a2:	f8c9 3004 	strne.w	r3, [r9, #4]
    b4a6:	f012 0307 	ands.w	r3, r2, #7
    b4aa:	f000 811a 	beq.w	b6e2 <_malloc_r+0x476>
    b4ae:	f1c3 0108 	rsb	r1, r3, #8
    b4b2:	440a      	add	r2, r1
    b4b4:	f5c3 5180 	rsb	r1, r3, #4096	; 0x1000
    b4b8:	4493      	add	fp, r2
    b4ba:	3108      	adds	r1, #8
    b4bc:	eba1 010b 	sub.w	r1, r1, fp
    b4c0:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
    b4c4:	4651      	mov	r1, sl
    b4c6:	4630      	mov	r0, r6
    b4c8:	9301      	str	r3, [sp, #4]
    b4ca:	9200      	str	r2, [sp, #0]
    b4cc:	f000 ff2a 	bl	c324 <_sbrk_r>
    b4d0:	1c42      	adds	r2, r0, #1
    b4d2:	e9dd 2300 	ldrd	r2, r3, [sp]
    b4d6:	f000 8153 	beq.w	b780 <_malloc_r+0x514>
    b4da:	1a83      	subs	r3, r0, r2
    b4dc:	eb03 0b0a 	add.w	fp, r3, sl
    b4e0:	f8d9 1004 	ldr.w	r1, [r9, #4]
    b4e4:	60ba      	str	r2, [r7, #8]
    b4e6:	f04b 0301 	orr.w	r3, fp, #1
    b4ea:	4451      	add	r1, sl
    b4ec:	42bc      	cmp	r4, r7
    b4ee:	6053      	str	r3, [r2, #4]
    b4f0:	f8c9 1004 	str.w	r1, [r9, #4]
    b4f4:	f000 812b 	beq.w	b74e <_malloc_r+0x4e2>
    b4f8:	f1b8 0f0f 	cmp.w	r8, #15
    b4fc:	f240 8129 	bls.w	b752 <_malloc_r+0x4e6>
    b500:	6863      	ldr	r3, [r4, #4]
    b502:	f1a8 000c 	sub.w	r0, r8, #12
    b506:	f020 0007 	bic.w	r0, r0, #7
    b50a:	f003 0301 	and.w	r3, r3, #1
    b50e:	eb04 0c00 	add.w	ip, r4, r0
    b512:	4303      	orrs	r3, r0
    b514:	f04f 0e05 	mov.w	lr, #5
    b518:	280f      	cmp	r0, #15
    b51a:	6063      	str	r3, [r4, #4]
    b51c:	e9cc ee01 	strd	lr, lr, [ip, #4]
    b520:	f200 8135 	bhi.w	b78e <_malloc_r+0x522>
    b524:	6853      	ldr	r3, [r2, #4]
    b526:	4614      	mov	r4, r2
    b528:	f8d9 202c 	ldr.w	r2, [r9, #44]	; 0x2c
    b52c:	428a      	cmp	r2, r1
    b52e:	f8d9 2030 	ldr.w	r2, [r9, #48]	; 0x30
    b532:	bf38      	it	cc
    b534:	f8c9 102c 	strcc.w	r1, [r9, #44]	; 0x2c
    b538:	428a      	cmp	r2, r1
    b53a:	bf38      	it	cc
    b53c:	f8c9 1030 	strcc.w	r1, [r9, #48]	; 0x30
    b540:	e094      	b.n	b66c <_malloc_r+0x400>
    b542:	1962      	adds	r2, r4, r5
    b544:	f043 0301 	orr.w	r3, r3, #1
    b548:	f045 0501 	orr.w	r5, r5, #1
    b54c:	6065      	str	r5, [r4, #4]
    b54e:	4630      	mov	r0, r6
    b550:	60ba      	str	r2, [r7, #8]
    b552:	6053      	str	r3, [r2, #4]
    b554:	f000 fa28 	bl	b9a8 <__malloc_unlock>
    b558:	3408      	adds	r4, #8
    b55a:	4620      	mov	r0, r4
    b55c:	b003      	add	sp, #12
    b55e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    b562:	4423      	add	r3, r4
    b564:	68e1      	ldr	r1, [r4, #12]
    b566:	685a      	ldr	r2, [r3, #4]
    b568:	68a5      	ldr	r5, [r4, #8]
    b56a:	f042 0201 	orr.w	r2, r2, #1
    b56e:	60e9      	str	r1, [r5, #12]
    b570:	4630      	mov	r0, r6
    b572:	608d      	str	r5, [r1, #8]
    b574:	605a      	str	r2, [r3, #4]
    b576:	f000 fa17 	bl	b9a8 <__malloc_unlock>
    b57a:	3408      	adds	r4, #8
    b57c:	e73d      	b.n	b3fa <_malloc_r+0x18e>
    b57e:	0a5a      	lsrs	r2, r3, #9
    b580:	2a04      	cmp	r2, #4
    b582:	d969      	bls.n	b658 <_malloc_r+0x3ec>
    b584:	2a14      	cmp	r2, #20
    b586:	f200 80be 	bhi.w	b706 <_malloc_r+0x49a>
    b58a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
    b58e:	00c9      	lsls	r1, r1, #3
    b590:	325b      	adds	r2, #91	; 0x5b
    b592:	eb07 0e01 	add.w	lr, r7, r1
    b596:	5879      	ldr	r1, [r7, r1]
    b598:	f1ae 0e08 	sub.w	lr, lr, #8
    b59c:	458e      	cmp	lr, r1
    b59e:	f000 8097 	beq.w	b6d0 <_malloc_r+0x464>
    b5a2:	684a      	ldr	r2, [r1, #4]
    b5a4:	f022 0203 	bic.w	r2, r2, #3
    b5a8:	429a      	cmp	r2, r3
    b5aa:	d902      	bls.n	b5b2 <_malloc_r+0x346>
    b5ac:	6889      	ldr	r1, [r1, #8]
    b5ae:	458e      	cmp	lr, r1
    b5b0:	d1f7      	bne.n	b5a2 <_malloc_r+0x336>
    b5b2:	f8d1 e00c 	ldr.w	lr, [r1, #12]
    b5b6:	687b      	ldr	r3, [r7, #4]
    b5b8:	e9c4 1e02 	strd	r1, lr, [r4, #8]
    b5bc:	f8ce 4008 	str.w	r4, [lr, #8]
    b5c0:	60cc      	str	r4, [r1, #12]
    b5c2:	e6d9      	b.n	b378 <_malloc_r+0x10c>
    b5c4:	0001fad0 	.word	0x0001fad0
    b5c8:	0001fad8 	.word	0x0001fad8
    b5cc:	00020068 	.word	0x00020068
    b5d0:	2b14      	cmp	r3, #20
    b5d2:	d959      	bls.n	b688 <_malloc_r+0x41c>
    b5d4:	2b54      	cmp	r3, #84	; 0x54
    b5d6:	f200 809e 	bhi.w	b716 <_malloc_r+0x4aa>
    b5da:	0b2b      	lsrs	r3, r5, #12
    b5dc:	f103 006f 	add.w	r0, r3, #111	; 0x6f
    b5e0:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
    b5e4:	00c3      	lsls	r3, r0, #3
    b5e6:	e686      	b.n	b2f6 <_malloc_r+0x8a>
    b5e8:	f108 0801 	add.w	r8, r8, #1
    b5ec:	f018 0f03 	tst.w	r8, #3
    b5f0:	f10e 0e08 	add.w	lr, lr, #8
    b5f4:	f47f aed2 	bne.w	b39c <_malloc_r+0x130>
    b5f8:	e051      	b.n	b69e <_malloc_r+0x432>
    b5fa:	4419      	add	r1, r3
    b5fc:	461c      	mov	r4, r3
    b5fe:	684a      	ldr	r2, [r1, #4]
    b600:	68db      	ldr	r3, [r3, #12]
    b602:	f854 5f08 	ldr.w	r5, [r4, #8]!
    b606:	f042 0201 	orr.w	r2, r2, #1
    b60a:	604a      	str	r2, [r1, #4]
    b60c:	4630      	mov	r0, r6
    b60e:	60eb      	str	r3, [r5, #12]
    b610:	609d      	str	r5, [r3, #8]
    b612:	f000 f9c9 	bl	b9a8 <__malloc_unlock>
    b616:	e6f0      	b.n	b3fa <_malloc_r+0x18e>
    b618:	08e8      	lsrs	r0, r5, #3
    b61a:	f105 0308 	add.w	r3, r5, #8
    b61e:	e635      	b.n	b28c <_malloc_r+0x20>
    b620:	4423      	add	r3, r4
    b622:	4630      	mov	r0, r6
    b624:	685a      	ldr	r2, [r3, #4]
    b626:	f042 0201 	orr.w	r2, r2, #1
    b62a:	605a      	str	r2, [r3, #4]
    b62c:	3408      	adds	r4, #8
    b62e:	f000 f9bb 	bl	b9a8 <__malloc_unlock>
    b632:	e6e2      	b.n	b3fa <_malloc_r+0x18e>
    b634:	1961      	adds	r1, r4, r5
    b636:	f045 0e01 	orr.w	lr, r5, #1
    b63a:	f042 0501 	orr.w	r5, r2, #1
    b63e:	f8c4 e004 	str.w	lr, [r4, #4]
    b642:	4630      	mov	r0, r6
    b644:	e9c7 1104 	strd	r1, r1, [r7, #16]
    b648:	e9c1 cc02 	strd	ip, ip, [r1, #8]
    b64c:	604d      	str	r5, [r1, #4]
    b64e:	50e2      	str	r2, [r4, r3]
    b650:	f000 f9aa 	bl	b9a8 <__malloc_unlock>
    b654:	3408      	adds	r4, #8
    b656:	e6d0      	b.n	b3fa <_malloc_r+0x18e>
    b658:	099a      	lsrs	r2, r3, #6
    b65a:	f102 0139 	add.w	r1, r2, #57	; 0x39
    b65e:	00c9      	lsls	r1, r1, #3
    b660:	3238      	adds	r2, #56	; 0x38
    b662:	e796      	b.n	b592 <_malloc_r+0x326>
    b664:	42bc      	cmp	r4, r7
    b666:	d060      	beq.n	b72a <_malloc_r+0x4be>
    b668:	68bc      	ldr	r4, [r7, #8]
    b66a:	6863      	ldr	r3, [r4, #4]
    b66c:	f023 0b03 	bic.w	fp, r3, #3
    b670:	45ab      	cmp	fp, r5
    b672:	ebab 0305 	sub.w	r3, fp, r5
    b676:	d302      	bcc.n	b67e <_malloc_r+0x412>
    b678:	2b0f      	cmp	r3, #15
    b67a:	f73f af62 	bgt.w	b542 <_malloc_r+0x2d6>
    b67e:	4630      	mov	r0, r6
    b680:	f000 f992 	bl	b9a8 <__malloc_unlock>
    b684:	2400      	movs	r4, #0
    b686:	e6b8      	b.n	b3fa <_malloc_r+0x18e>
    b688:	f103 005c 	add.w	r0, r3, #92	; 0x5c
    b68c:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
    b690:	00c3      	lsls	r3, r0, #3
    b692:	e630      	b.n	b2f6 <_malloc_r+0x8a>
    b694:	f859 3908 	ldr.w	r3, [r9], #-8
    b698:	454b      	cmp	r3, r9
    b69a:	f040 8096 	bne.w	b7ca <_malloc_r+0x55e>
    b69e:	f010 0f03 	tst.w	r0, #3
    b6a2:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
    b6a6:	d1f5      	bne.n	b694 <_malloc_r+0x428>
    b6a8:	687b      	ldr	r3, [r7, #4]
    b6aa:	ea23 0304 	bic.w	r3, r3, r4
    b6ae:	607b      	str	r3, [r7, #4]
    b6b0:	0064      	lsls	r4, r4, #1
    b6b2:	429c      	cmp	r4, r3
    b6b4:	f63f aebc 	bhi.w	b430 <_malloc_r+0x1c4>
    b6b8:	b91c      	cbnz	r4, b6c2 <_malloc_r+0x456>
    b6ba:	e6b9      	b.n	b430 <_malloc_r+0x1c4>
    b6bc:	0064      	lsls	r4, r4, #1
    b6be:	f108 0804 	add.w	r8, r8, #4
    b6c2:	421c      	tst	r4, r3
    b6c4:	d0fa      	beq.n	b6bc <_malloc_r+0x450>
    b6c6:	4640      	mov	r0, r8
    b6c8:	e664      	b.n	b394 <_malloc_r+0x128>
    b6ca:	f103 0b10 	add.w	fp, r3, #16
    b6ce:	e6cc      	b.n	b46a <_malloc_r+0x1fe>
    b6d0:	687b      	ldr	r3, [r7, #4]
    b6d2:	1092      	asrs	r2, r2, #2
    b6d4:	f04f 0801 	mov.w	r8, #1
    b6d8:	fa08 f202 	lsl.w	r2, r8, r2
    b6dc:	4313      	orrs	r3, r2
    b6de:	607b      	str	r3, [r7, #4]
    b6e0:	e76a      	b.n	b5b8 <_malloc_r+0x34c>
    b6e2:	eb02 010b 	add.w	r1, r2, fp
    b6e6:	4249      	negs	r1, r1
    b6e8:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
    b6ec:	4651      	mov	r1, sl
    b6ee:	4630      	mov	r0, r6
    b6f0:	9301      	str	r3, [sp, #4]
    b6f2:	9200      	str	r2, [sp, #0]
    b6f4:	f000 fe16 	bl	c324 <_sbrk_r>
    b6f8:	1c43      	adds	r3, r0, #1
    b6fa:	e9dd 2300 	ldrd	r2, r3, [sp]
    b6fe:	f47f aeec 	bne.w	b4da <_malloc_r+0x26e>
    b702:	469a      	mov	sl, r3
    b704:	e6ec      	b.n	b4e0 <_malloc_r+0x274>
    b706:	2a54      	cmp	r2, #84	; 0x54
    b708:	d826      	bhi.n	b758 <_malloc_r+0x4ec>
    b70a:	0b1a      	lsrs	r2, r3, #12
    b70c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
    b710:	00c9      	lsls	r1, r1, #3
    b712:	326e      	adds	r2, #110	; 0x6e
    b714:	e73d      	b.n	b592 <_malloc_r+0x326>
    b716:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
    b71a:	d826      	bhi.n	b76a <_malloc_r+0x4fe>
    b71c:	0beb      	lsrs	r3, r5, #15
    b71e:	f103 0078 	add.w	r0, r3, #120	; 0x78
    b722:	f103 0c77 	add.w	ip, r3, #119	; 0x77
    b726:	00c3      	lsls	r3, r0, #3
    b728:	e5e5      	b.n	b2f6 <_malloc_r+0x8a>
    b72a:	f8d9 3004 	ldr.w	r3, [r9, #4]
    b72e:	445b      	add	r3, fp
    b730:	f8c9 3004 	str.w	r3, [r9, #4]
    b734:	e6ac      	b.n	b490 <_malloc_r+0x224>
    b736:	f3ca 000b 	ubfx	r0, sl, #0, #12
    b73a:	2800      	cmp	r0, #0
    b73c:	f47f aea8 	bne.w	b490 <_malloc_r+0x224>
    b740:	eb08 030b 	add.w	r3, r8, fp
    b744:	68bc      	ldr	r4, [r7, #8]
    b746:	f043 0301 	orr.w	r3, r3, #1
    b74a:	6063      	str	r3, [r4, #4]
    b74c:	e6ec      	b.n	b528 <_malloc_r+0x2bc>
    b74e:	4614      	mov	r4, r2
    b750:	e6ea      	b.n	b528 <_malloc_r+0x2bc>
    b752:	2301      	movs	r3, #1
    b754:	6053      	str	r3, [r2, #4]
    b756:	e792      	b.n	b67e <_malloc_r+0x412>
    b758:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
    b75c:	d821      	bhi.n	b7a2 <_malloc_r+0x536>
    b75e:	0bda      	lsrs	r2, r3, #15
    b760:	f102 0178 	add.w	r1, r2, #120	; 0x78
    b764:	00c9      	lsls	r1, r1, #3
    b766:	3277      	adds	r2, #119	; 0x77
    b768:	e713      	b.n	b592 <_malloc_r+0x326>
    b76a:	f240 5254 	movw	r2, #1364	; 0x554
    b76e:	4293      	cmp	r3, r2
    b770:	d821      	bhi.n	b7b6 <_malloc_r+0x54a>
    b772:	0cab      	lsrs	r3, r5, #18
    b774:	f103 007d 	add.w	r0, r3, #125	; 0x7d
    b778:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
    b77c:	00c3      	lsls	r3, r0, #3
    b77e:	e5ba      	b.n	b2f6 <_malloc_r+0x8a>
    b780:	3b08      	subs	r3, #8
    b782:	449b      	add	fp, r3
    b784:	ebab 0b02 	sub.w	fp, fp, r2
    b788:	f04f 0a00 	mov.w	sl, #0
    b78c:	e6a8      	b.n	b4e0 <_malloc_r+0x274>
    b78e:	f104 0108 	add.w	r1, r4, #8
    b792:	4630      	mov	r0, r6
    b794:	f7ff fb9e 	bl	aed4 <_free_r>
    b798:	68bc      	ldr	r4, [r7, #8]
    b79a:	f8d9 1004 	ldr.w	r1, [r9, #4]
    b79e:	6863      	ldr	r3, [r4, #4]
    b7a0:	e6c2      	b.n	b528 <_malloc_r+0x2bc>
    b7a2:	f240 5154 	movw	r1, #1364	; 0x554
    b7a6:	428a      	cmp	r2, r1
    b7a8:	d80b      	bhi.n	b7c2 <_malloc_r+0x556>
    b7aa:	0c9a      	lsrs	r2, r3, #18
    b7ac:	f102 017d 	add.w	r1, r2, #125	; 0x7d
    b7b0:	00c9      	lsls	r1, r1, #3
    b7b2:	327c      	adds	r2, #124	; 0x7c
    b7b4:	e6ed      	b.n	b592 <_malloc_r+0x326>
    b7b6:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
    b7ba:	207f      	movs	r0, #127	; 0x7f
    b7bc:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
    b7c0:	e599      	b.n	b2f6 <_malloc_r+0x8a>
    b7c2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
    b7c6:	227e      	movs	r2, #126	; 0x7e
    b7c8:	e6e3      	b.n	b592 <_malloc_r+0x326>
    b7ca:	687b      	ldr	r3, [r7, #4]
    b7cc:	e770      	b.n	b6b0 <_malloc_r+0x444>
    b7ce:	bf00      	nop

0000b7d0 <memchr>:
    b7d0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
    b7d4:	2a10      	cmp	r2, #16
    b7d6:	db2b      	blt.n	b830 <memchr+0x60>
    b7d8:	f010 0f07 	tst.w	r0, #7
    b7dc:	d008      	beq.n	b7f0 <memchr+0x20>
    b7de:	f810 3b01 	ldrb.w	r3, [r0], #1
    b7e2:	3a01      	subs	r2, #1
    b7e4:	428b      	cmp	r3, r1
    b7e6:	d02d      	beq.n	b844 <memchr+0x74>
    b7e8:	f010 0f07 	tst.w	r0, #7
    b7ec:	b342      	cbz	r2, b840 <memchr+0x70>
    b7ee:	d1f6      	bne.n	b7de <memchr+0xe>
    b7f0:	b4f0      	push	{r4, r5, r6, r7}
    b7f2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
    b7f6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
    b7fa:	f022 0407 	bic.w	r4, r2, #7
    b7fe:	f07f 0700 	mvns.w	r7, #0
    b802:	2300      	movs	r3, #0
    b804:	e8f0 5602 	ldrd	r5, r6, [r0], #8
    b808:	3c08      	subs	r4, #8
    b80a:	ea85 0501 	eor.w	r5, r5, r1
    b80e:	ea86 0601 	eor.w	r6, r6, r1
    b812:	fa85 f547 	uadd8	r5, r5, r7
    b816:	faa3 f587 	sel	r5, r3, r7
    b81a:	fa86 f647 	uadd8	r6, r6, r7
    b81e:	faa5 f687 	sel	r6, r5, r7
    b822:	b98e      	cbnz	r6, b848 <memchr+0x78>
    b824:	d1ee      	bne.n	b804 <memchr+0x34>
    b826:	bcf0      	pop	{r4, r5, r6, r7}
    b828:	f001 01ff 	and.w	r1, r1, #255	; 0xff
    b82c:	f002 0207 	and.w	r2, r2, #7
    b830:	b132      	cbz	r2, b840 <memchr+0x70>
    b832:	f810 3b01 	ldrb.w	r3, [r0], #1
    b836:	3a01      	subs	r2, #1
    b838:	ea83 0301 	eor.w	r3, r3, r1
    b83c:	b113      	cbz	r3, b844 <memchr+0x74>
    b83e:	d1f8      	bne.n	b832 <memchr+0x62>
    b840:	2000      	movs	r0, #0
    b842:	4770      	bx	lr
    b844:	3801      	subs	r0, #1
    b846:	4770      	bx	lr
    b848:	2d00      	cmp	r5, #0
    b84a:	bf06      	itte	eq
    b84c:	4635      	moveq	r5, r6
    b84e:	3803      	subeq	r0, #3
    b850:	3807      	subne	r0, #7
    b852:	f015 0f01 	tst.w	r5, #1
    b856:	d107      	bne.n	b868 <memchr+0x98>
    b858:	3001      	adds	r0, #1
    b85a:	f415 7f80 	tst.w	r5, #256	; 0x100
    b85e:	bf02      	ittt	eq
    b860:	3001      	addeq	r0, #1
    b862:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
    b866:	3001      	addeq	r0, #1
    b868:	bcf0      	pop	{r4, r5, r6, r7}
    b86a:	3801      	subs	r0, #1
    b86c:	4770      	bx	lr
    b86e:	bf00      	nop

0000b870 <memcpy>:
    b870:	4684      	mov	ip, r0
    b872:	ea41 0300 	orr.w	r3, r1, r0
    b876:	f013 0303 	ands.w	r3, r3, #3
    b87a:	d16d      	bne.n	b958 <memcpy+0xe8>
    b87c:	3a40      	subs	r2, #64	; 0x40
    b87e:	d341      	bcc.n	b904 <memcpy+0x94>
    b880:	f851 3b04 	ldr.w	r3, [r1], #4
    b884:	f840 3b04 	str.w	r3, [r0], #4
    b888:	f851 3b04 	ldr.w	r3, [r1], #4
    b88c:	f840 3b04 	str.w	r3, [r0], #4
    b890:	f851 3b04 	ldr.w	r3, [r1], #4
    b894:	f840 3b04 	str.w	r3, [r0], #4
    b898:	f851 3b04 	ldr.w	r3, [r1], #4
    b89c:	f840 3b04 	str.w	r3, [r0], #4
    b8a0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8a4:	f840 3b04 	str.w	r3, [r0], #4
    b8a8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8ac:	f840 3b04 	str.w	r3, [r0], #4
    b8b0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8b4:	f840 3b04 	str.w	r3, [r0], #4
    b8b8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8bc:	f840 3b04 	str.w	r3, [r0], #4
    b8c0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8c4:	f840 3b04 	str.w	r3, [r0], #4
    b8c8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8cc:	f840 3b04 	str.w	r3, [r0], #4
    b8d0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8d4:	f840 3b04 	str.w	r3, [r0], #4
    b8d8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8dc:	f840 3b04 	str.w	r3, [r0], #4
    b8e0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8e4:	f840 3b04 	str.w	r3, [r0], #4
    b8e8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8ec:	f840 3b04 	str.w	r3, [r0], #4
    b8f0:	f851 3b04 	ldr.w	r3, [r1], #4
    b8f4:	f840 3b04 	str.w	r3, [r0], #4
    b8f8:	f851 3b04 	ldr.w	r3, [r1], #4
    b8fc:	f840 3b04 	str.w	r3, [r0], #4
    b900:	3a40      	subs	r2, #64	; 0x40
    b902:	d2bd      	bcs.n	b880 <memcpy+0x10>
    b904:	3230      	adds	r2, #48	; 0x30
    b906:	d311      	bcc.n	b92c <memcpy+0xbc>
    b908:	f851 3b04 	ldr.w	r3, [r1], #4
    b90c:	f840 3b04 	str.w	r3, [r0], #4
    b910:	f851 3b04 	ldr.w	r3, [r1], #4
    b914:	f840 3b04 	str.w	r3, [r0], #4
    b918:	f851 3b04 	ldr.w	r3, [r1], #4
    b91c:	f840 3b04 	str.w	r3, [r0], #4
    b920:	f851 3b04 	ldr.w	r3, [r1], #4
    b924:	f840 3b04 	str.w	r3, [r0], #4
    b928:	3a10      	subs	r2, #16
    b92a:	d2ed      	bcs.n	b908 <memcpy+0x98>
    b92c:	320c      	adds	r2, #12
    b92e:	d305      	bcc.n	b93c <memcpy+0xcc>
    b930:	f851 3b04 	ldr.w	r3, [r1], #4
    b934:	f840 3b04 	str.w	r3, [r0], #4
    b938:	3a04      	subs	r2, #4
    b93a:	d2f9      	bcs.n	b930 <memcpy+0xc0>
    b93c:	3204      	adds	r2, #4
    b93e:	d008      	beq.n	b952 <memcpy+0xe2>
    b940:	07d2      	lsls	r2, r2, #31
    b942:	bf1c      	itt	ne
    b944:	f811 3b01 	ldrbne.w	r3, [r1], #1
    b948:	f800 3b01 	strbne.w	r3, [r0], #1
    b94c:	d301      	bcc.n	b952 <memcpy+0xe2>
    b94e:	880b      	ldrh	r3, [r1, #0]
    b950:	8003      	strh	r3, [r0, #0]
    b952:	4660      	mov	r0, ip
    b954:	4770      	bx	lr
    b956:	bf00      	nop
    b958:	2a08      	cmp	r2, #8
    b95a:	d313      	bcc.n	b984 <memcpy+0x114>
    b95c:	078b      	lsls	r3, r1, #30
    b95e:	d08d      	beq.n	b87c <memcpy+0xc>
    b960:	f010 0303 	ands.w	r3, r0, #3
    b964:	d08a      	beq.n	b87c <memcpy+0xc>
    b966:	f1c3 0304 	rsb	r3, r3, #4
    b96a:	1ad2      	subs	r2, r2, r3
    b96c:	07db      	lsls	r3, r3, #31
    b96e:	bf1c      	itt	ne
    b970:	f811 3b01 	ldrbne.w	r3, [r1], #1
    b974:	f800 3b01 	strbne.w	r3, [r0], #1
    b978:	d380      	bcc.n	b87c <memcpy+0xc>
    b97a:	f831 3b02 	ldrh.w	r3, [r1], #2
    b97e:	f820 3b02 	strh.w	r3, [r0], #2
    b982:	e77b      	b.n	b87c <memcpy+0xc>
    b984:	3a04      	subs	r2, #4
    b986:	d3d9      	bcc.n	b93c <memcpy+0xcc>
    b988:	3a01      	subs	r2, #1
    b98a:	f811 3b01 	ldrb.w	r3, [r1], #1
    b98e:	f800 3b01 	strb.w	r3, [r0], #1
    b992:	d2f9      	bcs.n	b988 <memcpy+0x118>
    b994:	780b      	ldrb	r3, [r1, #0]
    b996:	7003      	strb	r3, [r0, #0]
    b998:	784b      	ldrb	r3, [r1, #1]
    b99a:	7043      	strb	r3, [r0, #1]
    b99c:	788b      	ldrb	r3, [r1, #2]
    b99e:	7083      	strb	r3, [r0, #2]
    b9a0:	4660      	mov	r0, ip
    b9a2:	4770      	bx	lr

0000b9a4 <__malloc_lock>:
    b9a4:	4770      	bx	lr
    b9a6:	bf00      	nop

0000b9a8 <__malloc_unlock>:
    b9a8:	4770      	bx	lr
    b9aa:	bf00      	nop

0000b9ac <_Balloc>:
    b9ac:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    b9ae:	b570      	push	{r4, r5, r6, lr}
    b9b0:	4605      	mov	r5, r0
    b9b2:	460c      	mov	r4, r1
    b9b4:	b14b      	cbz	r3, b9ca <_Balloc+0x1e>
    b9b6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
    b9ba:	b180      	cbz	r0, b9de <_Balloc+0x32>
    b9bc:	6802      	ldr	r2, [r0, #0]
    b9be:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
    b9c2:	2300      	movs	r3, #0
    b9c4:	e9c0 3303 	strd	r3, r3, [r0, #12]
    b9c8:	bd70      	pop	{r4, r5, r6, pc}
    b9ca:	2221      	movs	r2, #33	; 0x21
    b9cc:	2104      	movs	r1, #4
    b9ce:	f001 fc3d 	bl	d24c <_calloc_r>
    b9d2:	4603      	mov	r3, r0
    b9d4:	64e8      	str	r0, [r5, #76]	; 0x4c
    b9d6:	2800      	cmp	r0, #0
    b9d8:	d1ed      	bne.n	b9b6 <_Balloc+0xa>
    b9da:	2000      	movs	r0, #0
    b9dc:	bd70      	pop	{r4, r5, r6, pc}
    b9de:	2101      	movs	r1, #1
    b9e0:	fa01 f604 	lsl.w	r6, r1, r4
    b9e4:	1d72      	adds	r2, r6, #5
    b9e6:	4628      	mov	r0, r5
    b9e8:	0092      	lsls	r2, r2, #2
    b9ea:	f001 fc2f 	bl	d24c <_calloc_r>
    b9ee:	2800      	cmp	r0, #0
    b9f0:	d0f3      	beq.n	b9da <_Balloc+0x2e>
    b9f2:	e9c0 4601 	strd	r4, r6, [r0, #4]
    b9f6:	e7e4      	b.n	b9c2 <_Balloc+0x16>

0000b9f8 <_Bfree>:
    b9f8:	b131      	cbz	r1, ba08 <_Bfree+0x10>
    b9fa:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    b9fc:	684a      	ldr	r2, [r1, #4]
    b9fe:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
    ba02:	6008      	str	r0, [r1, #0]
    ba04:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    ba08:	4770      	bx	lr
    ba0a:	bf00      	nop

0000ba0c <__multadd>:
    ba0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    ba0e:	690c      	ldr	r4, [r1, #16]
    ba10:	b083      	sub	sp, #12
    ba12:	460d      	mov	r5, r1
    ba14:	4606      	mov	r6, r0
    ba16:	f101 0c14 	add.w	ip, r1, #20
    ba1a:	2700      	movs	r7, #0
    ba1c:	f8dc 0000 	ldr.w	r0, [ip]
    ba20:	b281      	uxth	r1, r0
    ba22:	fb02 3301 	mla	r3, r2, r1, r3
    ba26:	0c19      	lsrs	r1, r3, #16
    ba28:	0c00      	lsrs	r0, r0, #16
    ba2a:	fb02 1000 	mla	r0, r2, r0, r1
    ba2e:	b29b      	uxth	r3, r3
    ba30:	3701      	adds	r7, #1
    ba32:	eb03 4300 	add.w	r3, r3, r0, lsl #16
    ba36:	42bc      	cmp	r4, r7
    ba38:	f84c 3b04 	str.w	r3, [ip], #4
    ba3c:	ea4f 4310 	mov.w	r3, r0, lsr #16
    ba40:	dcec      	bgt.n	ba1c <__multadd+0x10>
    ba42:	b13b      	cbz	r3, ba54 <__multadd+0x48>
    ba44:	68aa      	ldr	r2, [r5, #8]
    ba46:	42a2      	cmp	r2, r4
    ba48:	dd07      	ble.n	ba5a <__multadd+0x4e>
    ba4a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
    ba4e:	3401      	adds	r4, #1
    ba50:	6153      	str	r3, [r2, #20]
    ba52:	612c      	str	r4, [r5, #16]
    ba54:	4628      	mov	r0, r5
    ba56:	b003      	add	sp, #12
    ba58:	bdf0      	pop	{r4, r5, r6, r7, pc}
    ba5a:	6869      	ldr	r1, [r5, #4]
    ba5c:	9301      	str	r3, [sp, #4]
    ba5e:	4630      	mov	r0, r6
    ba60:	3101      	adds	r1, #1
    ba62:	f7ff ffa3 	bl	b9ac <_Balloc>
    ba66:	9b01      	ldr	r3, [sp, #4]
    ba68:	4607      	mov	r7, r0
    ba6a:	b1b8      	cbz	r0, ba9c <__multadd+0x90>
    ba6c:	692a      	ldr	r2, [r5, #16]
    ba6e:	9301      	str	r3, [sp, #4]
    ba70:	3202      	adds	r2, #2
    ba72:	f105 010c 	add.w	r1, r5, #12
    ba76:	0092      	lsls	r2, r2, #2
    ba78:	300c      	adds	r0, #12
    ba7a:	f7ff fef9 	bl	b870 <memcpy>
    ba7e:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
    ba80:	6869      	ldr	r1, [r5, #4]
    ba82:	9b01      	ldr	r3, [sp, #4]
    ba84:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
    ba88:	6028      	str	r0, [r5, #0]
    ba8a:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
    ba8e:	463d      	mov	r5, r7
    ba90:	eb05 0284 	add.w	r2, r5, r4, lsl #2
    ba94:	3401      	adds	r4, #1
    ba96:	6153      	str	r3, [r2, #20]
    ba98:	612c      	str	r4, [r5, #16]
    ba9a:	e7db      	b.n	ba54 <__multadd+0x48>
    ba9c:	4602      	mov	r2, r0
    ba9e:	4b02      	ldr	r3, [pc, #8]	; (baa8 <__multadd+0x9c>)
    baa0:	4802      	ldr	r0, [pc, #8]	; (baac <__multadd+0xa0>)
    baa2:	21b5      	movs	r1, #181	; 0xb5
    baa4:	f001 fbae 	bl	d204 <__assert_func>
    baa8:	0000f368 	.word	0x0000f368
    baac:	0000f4d8 	.word	0x0000f4d8

0000bab0 <__s2b>:
    bab0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    bab4:	4c26      	ldr	r4, [pc, #152]	; (bb50 <__s2b+0xa0>)
    bab6:	9e08      	ldr	r6, [sp, #32]
    bab8:	461d      	mov	r5, r3
    baba:	3308      	adds	r3, #8
    babc:	fb84 4c03 	smull	r4, ip, r4, r3
    bac0:	2d09      	cmp	r5, #9
    bac2:	ea4f 73e3 	mov.w	r3, r3, asr #31
    bac6:	4690      	mov	r8, r2
    bac8:	4607      	mov	r7, r0
    baca:	460c      	mov	r4, r1
    bacc:	ebc3 026c 	rsb	r2, r3, ip, asr #1
    bad0:	dd36      	ble.n	bb40 <__s2b+0x90>
    bad2:	2301      	movs	r3, #1
    bad4:	2100      	movs	r1, #0
    bad6:	005b      	lsls	r3, r3, #1
    bad8:	429a      	cmp	r2, r3
    bada:	f101 0101 	add.w	r1, r1, #1
    bade:	dcfa      	bgt.n	bad6 <__s2b+0x26>
    bae0:	4638      	mov	r0, r7
    bae2:	f7ff ff63 	bl	b9ac <_Balloc>
    bae6:	b368      	cbz	r0, bb44 <__s2b+0x94>
    bae8:	2301      	movs	r3, #1
    baea:	f1b8 0f09 	cmp.w	r8, #9
    baee:	e9c0 3604 	strd	r3, r6, [r0, #16]
    baf2:	dc13      	bgt.n	bb1c <__s2b+0x6c>
    baf4:	340a      	adds	r4, #10
    baf6:	f04f 0809 	mov.w	r8, #9
    bafa:	4545      	cmp	r5, r8
    bafc:	dd0c      	ble.n	bb18 <__s2b+0x68>
    bafe:	eba5 0508 	sub.w	r5, r5, r8
    bb02:	4425      	add	r5, r4
    bb04:	f814 3b01 	ldrb.w	r3, [r4], #1
    bb08:	4601      	mov	r1, r0
    bb0a:	3b30      	subs	r3, #48	; 0x30
    bb0c:	220a      	movs	r2, #10
    bb0e:	4638      	mov	r0, r7
    bb10:	f7ff ff7c 	bl	ba0c <__multadd>
    bb14:	42a5      	cmp	r5, r4
    bb16:	d1f5      	bne.n	bb04 <__s2b+0x54>
    bb18:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    bb1c:	f104 0909 	add.w	r9, r4, #9
    bb20:	464e      	mov	r6, r9
    bb22:	4444      	add	r4, r8
    bb24:	f816 3b01 	ldrb.w	r3, [r6], #1
    bb28:	4601      	mov	r1, r0
    bb2a:	3b30      	subs	r3, #48	; 0x30
    bb2c:	220a      	movs	r2, #10
    bb2e:	4638      	mov	r0, r7
    bb30:	f7ff ff6c 	bl	ba0c <__multadd>
    bb34:	42b4      	cmp	r4, r6
    bb36:	d1f5      	bne.n	bb24 <__s2b+0x74>
    bb38:	f1a8 0408 	sub.w	r4, r8, #8
    bb3c:	444c      	add	r4, r9
    bb3e:	e7dc      	b.n	bafa <__s2b+0x4a>
    bb40:	2100      	movs	r1, #0
    bb42:	e7cd      	b.n	bae0 <__s2b+0x30>
    bb44:	4602      	mov	r2, r0
    bb46:	4b03      	ldr	r3, [pc, #12]	; (bb54 <__s2b+0xa4>)
    bb48:	4803      	ldr	r0, [pc, #12]	; (bb58 <__s2b+0xa8>)
    bb4a:	21ce      	movs	r1, #206	; 0xce
    bb4c:	f001 fb5a 	bl	d204 <__assert_func>
    bb50:	38e38e39 	.word	0x38e38e39
    bb54:	0000f368 	.word	0x0000f368
    bb58:	0000f4d8 	.word	0x0000f4d8

0000bb5c <__hi0bits>:
    bb5c:	0c02      	lsrs	r2, r0, #16
    bb5e:	0412      	lsls	r2, r2, #16
    bb60:	4603      	mov	r3, r0
    bb62:	b9ca      	cbnz	r2, bb98 <__hi0bits+0x3c>
    bb64:	0403      	lsls	r3, r0, #16
    bb66:	2010      	movs	r0, #16
    bb68:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
    bb6c:	bf04      	itt	eq
    bb6e:	021b      	lsleq	r3, r3, #8
    bb70:	3008      	addeq	r0, #8
    bb72:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
    bb76:	bf04      	itt	eq
    bb78:	011b      	lsleq	r3, r3, #4
    bb7a:	3004      	addeq	r0, #4
    bb7c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
    bb80:	bf04      	itt	eq
    bb82:	009b      	lsleq	r3, r3, #2
    bb84:	3002      	addeq	r0, #2
    bb86:	2b00      	cmp	r3, #0
    bb88:	db05      	blt.n	bb96 <__hi0bits+0x3a>
    bb8a:	f013 4f80 	tst.w	r3, #1073741824	; 0x40000000
    bb8e:	f100 0001 	add.w	r0, r0, #1
    bb92:	bf08      	it	eq
    bb94:	2020      	moveq	r0, #32
    bb96:	4770      	bx	lr
    bb98:	2000      	movs	r0, #0
    bb9a:	e7e5      	b.n	bb68 <__hi0bits+0xc>

0000bb9c <__lo0bits>:
    bb9c:	6803      	ldr	r3, [r0, #0]
    bb9e:	f013 0207 	ands.w	r2, r3, #7
    bba2:	4601      	mov	r1, r0
    bba4:	d007      	beq.n	bbb6 <__lo0bits+0x1a>
    bba6:	07da      	lsls	r2, r3, #31
    bba8:	d420      	bmi.n	bbec <__lo0bits+0x50>
    bbaa:	0798      	lsls	r0, r3, #30
    bbac:	d522      	bpl.n	bbf4 <__lo0bits+0x58>
    bbae:	085b      	lsrs	r3, r3, #1
    bbb0:	600b      	str	r3, [r1, #0]
    bbb2:	2001      	movs	r0, #1
    bbb4:	4770      	bx	lr
    bbb6:	b298      	uxth	r0, r3
    bbb8:	b9b0      	cbnz	r0, bbe8 <__lo0bits+0x4c>
    bbba:	0c1b      	lsrs	r3, r3, #16
    bbbc:	2010      	movs	r0, #16
    bbbe:	f013 0fff 	tst.w	r3, #255	; 0xff
    bbc2:	bf04      	itt	eq
    bbc4:	0a1b      	lsreq	r3, r3, #8
    bbc6:	3008      	addeq	r0, #8
    bbc8:	071a      	lsls	r2, r3, #28
    bbca:	bf04      	itt	eq
    bbcc:	091b      	lsreq	r3, r3, #4
    bbce:	3004      	addeq	r0, #4
    bbd0:	079a      	lsls	r2, r3, #30
    bbd2:	bf04      	itt	eq
    bbd4:	089b      	lsreq	r3, r3, #2
    bbd6:	3002      	addeq	r0, #2
    bbd8:	07da      	lsls	r2, r3, #31
    bbda:	d403      	bmi.n	bbe4 <__lo0bits+0x48>
    bbdc:	085b      	lsrs	r3, r3, #1
    bbde:	f100 0001 	add.w	r0, r0, #1
    bbe2:	d005      	beq.n	bbf0 <__lo0bits+0x54>
    bbe4:	600b      	str	r3, [r1, #0]
    bbe6:	4770      	bx	lr
    bbe8:	4610      	mov	r0, r2
    bbea:	e7e8      	b.n	bbbe <__lo0bits+0x22>
    bbec:	2000      	movs	r0, #0
    bbee:	4770      	bx	lr
    bbf0:	2020      	movs	r0, #32
    bbf2:	4770      	bx	lr
    bbf4:	089b      	lsrs	r3, r3, #2
    bbf6:	600b      	str	r3, [r1, #0]
    bbf8:	2002      	movs	r0, #2
    bbfa:	4770      	bx	lr

0000bbfc <__i2b>:
    bbfc:	b510      	push	{r4, lr}
    bbfe:	460c      	mov	r4, r1
    bc00:	2101      	movs	r1, #1
    bc02:	f7ff fed3 	bl	b9ac <_Balloc>
    bc06:	4602      	mov	r2, r0
    bc08:	b118      	cbz	r0, bc12 <__i2b+0x16>
    bc0a:	2301      	movs	r3, #1
    bc0c:	e9c0 3404 	strd	r3, r4, [r0, #16]
    bc10:	bd10      	pop	{r4, pc}
    bc12:	4b03      	ldr	r3, [pc, #12]	; (bc20 <__i2b+0x24>)
    bc14:	4803      	ldr	r0, [pc, #12]	; (bc24 <__i2b+0x28>)
    bc16:	f44f 71a0 	mov.w	r1, #320	; 0x140
    bc1a:	f001 faf3 	bl	d204 <__assert_func>
    bc1e:	bf00      	nop
    bc20:	0000f368 	.word	0x0000f368
    bc24:	0000f4d8 	.word	0x0000f4d8

0000bc28 <__multiply>:
    bc28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bc2c:	690e      	ldr	r6, [r1, #16]
    bc2e:	6917      	ldr	r7, [r2, #16]
    bc30:	42be      	cmp	r6, r7
    bc32:	b083      	sub	sp, #12
    bc34:	460c      	mov	r4, r1
    bc36:	4615      	mov	r5, r2
    bc38:	db05      	blt.n	bc46 <__multiply+0x1e>
    bc3a:	463a      	mov	r2, r7
    bc3c:	462b      	mov	r3, r5
    bc3e:	4637      	mov	r7, r6
    bc40:	460d      	mov	r5, r1
    bc42:	4616      	mov	r6, r2
    bc44:	461c      	mov	r4, r3
    bc46:	e9d5 1301 	ldrd	r1, r3, [r5, #4]
    bc4a:	eb07 0806 	add.w	r8, r7, r6
    bc4e:	4543      	cmp	r3, r8
    bc50:	bfb8      	it	lt
    bc52:	3101      	addlt	r1, #1
    bc54:	f7ff feaa 	bl	b9ac <_Balloc>
    bc58:	9000      	str	r0, [sp, #0]
    bc5a:	2800      	cmp	r0, #0
    bc5c:	d07f      	beq.n	bd5e <__multiply+0x136>
    bc5e:	9b00      	ldr	r3, [sp, #0]
    bc60:	f103 0a14 	add.w	sl, r3, #20
    bc64:	eb0a 0988 	add.w	r9, sl, r8, lsl #2
    bc68:	45ca      	cmp	sl, r9
    bc6a:	d205      	bcs.n	bc78 <__multiply+0x50>
    bc6c:	4653      	mov	r3, sl
    bc6e:	2100      	movs	r1, #0
    bc70:	f843 1b04 	str.w	r1, [r3], #4
    bc74:	4599      	cmp	r9, r3
    bc76:	d8fb      	bhi.n	bc70 <__multiply+0x48>
    bc78:	f104 0e14 	add.w	lr, r4, #20
    bc7c:	eb0e 0b86 	add.w	fp, lr, r6, lsl #2
    bc80:	f105 0314 	add.w	r3, r5, #20
    bc84:	45de      	cmp	lr, fp
    bc86:	eb03 0787 	add.w	r7, r3, r7, lsl #2
    bc8a:	d253      	bcs.n	bd34 <__multiply+0x10c>
    bc8c:	f8cd 8004 	str.w	r8, [sp, #4]
    bc90:	4698      	mov	r8, r3
    bc92:	e005      	b.n	bca0 <__multiply+0x78>
    bc94:	0c09      	lsrs	r1, r1, #16
    bc96:	d128      	bne.n	bcea <__multiply+0xc2>
    bc98:	45f3      	cmp	fp, lr
    bc9a:	f10a 0a04 	add.w	sl, sl, #4
    bc9e:	d947      	bls.n	bd30 <__multiply+0x108>
    bca0:	f85e 1b04 	ldr.w	r1, [lr], #4
    bca4:	b28e      	uxth	r6, r1
    bca6:	2e00      	cmp	r6, #0
    bca8:	d0f4      	beq.n	bc94 <__multiply+0x6c>
    bcaa:	4645      	mov	r5, r8
    bcac:	4654      	mov	r4, sl
    bcae:	2300      	movs	r3, #0
    bcb0:	f855 1b04 	ldr.w	r1, [r5], #4
    bcb4:	6820      	ldr	r0, [r4, #0]
    bcb6:	b28a      	uxth	r2, r1
    bcb8:	fa1f fc80 	uxth.w	ip, r0
    bcbc:	fb06 c202 	mla	r2, r6, r2, ip
    bcc0:	0c09      	lsrs	r1, r1, #16
    bcc2:	0c00      	lsrs	r0, r0, #16
    bcc4:	4413      	add	r3, r2
    bcc6:	fb06 0201 	mla	r2, r6, r1, r0
    bcca:	eb02 4213 	add.w	r2, r2, r3, lsr #16
    bcce:	b29b      	uxth	r3, r3
    bcd0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
    bcd4:	42af      	cmp	r7, r5
    bcd6:	f844 3b04 	str.w	r3, [r4], #4
    bcda:	ea4f 4312 	mov.w	r3, r2, lsr #16
    bcde:	d8e7      	bhi.n	bcb0 <__multiply+0x88>
    bce0:	6023      	str	r3, [r4, #0]
    bce2:	f85e 1c04 	ldr.w	r1, [lr, #-4]
    bce6:	0c09      	lsrs	r1, r1, #16
    bce8:	d0d6      	beq.n	bc98 <__multiply+0x70>
    bcea:	f8da 3000 	ldr.w	r3, [sl]
    bcee:	4640      	mov	r0, r8
    bcf0:	461a      	mov	r2, r3
    bcf2:	4654      	mov	r4, sl
    bcf4:	f04f 0c00 	mov.w	ip, #0
    bcf8:	8805      	ldrh	r5, [r0, #0]
    bcfa:	0c12      	lsrs	r2, r2, #16
    bcfc:	fb01 2205 	mla	r2, r1, r5, r2
    bd00:	4494      	add	ip, r2
    bd02:	b29b      	uxth	r3, r3
    bd04:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
    bd08:	f844 3b04 	str.w	r3, [r4], #4
    bd0c:	f850 3b04 	ldr.w	r3, [r0], #4
    bd10:	6822      	ldr	r2, [r4, #0]
    bd12:	0c1b      	lsrs	r3, r3, #16
    bd14:	b295      	uxth	r5, r2
    bd16:	fb01 5303 	mla	r3, r1, r3, r5
    bd1a:	eb03 431c 	add.w	r3, r3, ip, lsr #16
    bd1e:	4287      	cmp	r7, r0
    bd20:	ea4f 4c13 	mov.w	ip, r3, lsr #16
    bd24:	d8e8      	bhi.n	bcf8 <__multiply+0xd0>
    bd26:	45f3      	cmp	fp, lr
    bd28:	6023      	str	r3, [r4, #0]
    bd2a:	f10a 0a04 	add.w	sl, sl, #4
    bd2e:	d8b7      	bhi.n	bca0 <__multiply+0x78>
    bd30:	f8dd 8004 	ldr.w	r8, [sp, #4]
    bd34:	f1b8 0f00 	cmp.w	r8, #0
    bd38:	dd0b      	ble.n	bd52 <__multiply+0x12a>
    bd3a:	f859 3c04 	ldr.w	r3, [r9, #-4]
    bd3e:	f1a9 0904 	sub.w	r9, r9, #4
    bd42:	b11b      	cbz	r3, bd4c <__multiply+0x124>
    bd44:	e005      	b.n	bd52 <__multiply+0x12a>
    bd46:	f859 3d04 	ldr.w	r3, [r9, #-4]!
    bd4a:	b913      	cbnz	r3, bd52 <__multiply+0x12a>
    bd4c:	f1b8 0801 	subs.w	r8, r8, #1
    bd50:	d1f9      	bne.n	bd46 <__multiply+0x11e>
    bd52:	9800      	ldr	r0, [sp, #0]
    bd54:	f8c0 8010 	str.w	r8, [r0, #16]
    bd58:	b003      	add	sp, #12
    bd5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    bd5e:	4602      	mov	r2, r0
    bd60:	4b02      	ldr	r3, [pc, #8]	; (bd6c <__multiply+0x144>)
    bd62:	4803      	ldr	r0, [pc, #12]	; (bd70 <__multiply+0x148>)
    bd64:	f240 115d 	movw	r1, #349	; 0x15d
    bd68:	f001 fa4c 	bl	d204 <__assert_func>
    bd6c:	0000f368 	.word	0x0000f368
    bd70:	0000f4d8 	.word	0x0000f4d8

0000bd74 <__pow5mult>:
    bd74:	f012 0303 	ands.w	r3, r2, #3
    bd78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    bd7c:	4614      	mov	r4, r2
    bd7e:	4607      	mov	r7, r0
    bd80:	d12e      	bne.n	bde0 <__pow5mult+0x6c>
    bd82:	460d      	mov	r5, r1
    bd84:	10a4      	asrs	r4, r4, #2
    bd86:	d01c      	beq.n	bdc2 <__pow5mult+0x4e>
    bd88:	6cbe      	ldr	r6, [r7, #72]	; 0x48
    bd8a:	b396      	cbz	r6, bdf2 <__pow5mult+0x7e>
    bd8c:	07e3      	lsls	r3, r4, #31
    bd8e:	f04f 0800 	mov.w	r8, #0
    bd92:	d406      	bmi.n	bda2 <__pow5mult+0x2e>
    bd94:	1064      	asrs	r4, r4, #1
    bd96:	d014      	beq.n	bdc2 <__pow5mult+0x4e>
    bd98:	6830      	ldr	r0, [r6, #0]
    bd9a:	b1a8      	cbz	r0, bdc8 <__pow5mult+0x54>
    bd9c:	4606      	mov	r6, r0
    bd9e:	07e3      	lsls	r3, r4, #31
    bda0:	d5f8      	bpl.n	bd94 <__pow5mult+0x20>
    bda2:	4632      	mov	r2, r6
    bda4:	4629      	mov	r1, r5
    bda6:	4638      	mov	r0, r7
    bda8:	f7ff ff3e 	bl	bc28 <__multiply>
    bdac:	b1b5      	cbz	r5, bddc <__pow5mult+0x68>
    bdae:	686a      	ldr	r2, [r5, #4]
    bdb0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    bdb2:	1064      	asrs	r4, r4, #1
    bdb4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
    bdb8:	6029      	str	r1, [r5, #0]
    bdba:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
    bdbe:	4605      	mov	r5, r0
    bdc0:	d1ea      	bne.n	bd98 <__pow5mult+0x24>
    bdc2:	4628      	mov	r0, r5
    bdc4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    bdc8:	4632      	mov	r2, r6
    bdca:	4631      	mov	r1, r6
    bdcc:	4638      	mov	r0, r7
    bdce:	f7ff ff2b 	bl	bc28 <__multiply>
    bdd2:	6030      	str	r0, [r6, #0]
    bdd4:	f8c0 8000 	str.w	r8, [r0]
    bdd8:	4606      	mov	r6, r0
    bdda:	e7e0      	b.n	bd9e <__pow5mult+0x2a>
    bddc:	4605      	mov	r5, r0
    bdde:	e7d9      	b.n	bd94 <__pow5mult+0x20>
    bde0:	3b01      	subs	r3, #1
    bde2:	4a09      	ldr	r2, [pc, #36]	; (be08 <__pow5mult+0x94>)
    bde4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
    bde8:	2300      	movs	r3, #0
    bdea:	f7ff fe0f 	bl	ba0c <__multadd>
    bdee:	4605      	mov	r5, r0
    bdf0:	e7c8      	b.n	bd84 <__pow5mult+0x10>
    bdf2:	f240 2171 	movw	r1, #625	; 0x271
    bdf6:	4638      	mov	r0, r7
    bdf8:	f7ff ff00 	bl	bbfc <__i2b>
    bdfc:	2300      	movs	r3, #0
    bdfe:	64b8      	str	r0, [r7, #72]	; 0x48
    be00:	4606      	mov	r6, r0
    be02:	6003      	str	r3, [r0, #0]
    be04:	e7c2      	b.n	bd8c <__pow5mult+0x18>
    be06:	bf00      	nop
    be08:	0000f3b0 	.word	0x0000f3b0

0000be0c <__lshift>:
    be0c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    be10:	690e      	ldr	r6, [r1, #16]
    be12:	460d      	mov	r5, r1
    be14:	ea4f 1962 	mov.w	r9, r2, asr #5
    be18:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
    be1c:	444e      	add	r6, r9
    be1e:	1c74      	adds	r4, r6, #1
    be20:	429c      	cmp	r4, r3
    be22:	4690      	mov	r8, r2
    be24:	4607      	mov	r7, r0
    be26:	dd04      	ble.n	be32 <__lshift+0x26>
    be28:	005b      	lsls	r3, r3, #1
    be2a:	429c      	cmp	r4, r3
    be2c:	f101 0101 	add.w	r1, r1, #1
    be30:	dcfa      	bgt.n	be28 <__lshift+0x1c>
    be32:	4638      	mov	r0, r7
    be34:	f7ff fdba 	bl	b9ac <_Balloc>
    be38:	2800      	cmp	r0, #0
    be3a:	d042      	beq.n	bec2 <__lshift+0xb6>
    be3c:	f1b9 0f00 	cmp.w	r9, #0
    be40:	f100 0c14 	add.w	ip, r0, #20
    be44:	dd0e      	ble.n	be64 <__lshift+0x58>
    be46:	f109 0905 	add.w	r9, r9, #5
    be4a:	ea4f 0989 	mov.w	r9, r9, lsl #2
    be4e:	eb00 0109 	add.w	r1, r0, r9
    be52:	4663      	mov	r3, ip
    be54:	2200      	movs	r2, #0
    be56:	f843 2b04 	str.w	r2, [r3], #4
    be5a:	428b      	cmp	r3, r1
    be5c:	d1fb      	bne.n	be56 <__lshift+0x4a>
    be5e:	f1a9 0914 	sub.w	r9, r9, #20
    be62:	44cc      	add	ip, r9
    be64:	6929      	ldr	r1, [r5, #16]
    be66:	f105 0314 	add.w	r3, r5, #20
    be6a:	f018 081f 	ands.w	r8, r8, #31
    be6e:	eb03 0e81 	add.w	lr, r3, r1, lsl #2
    be72:	d01d      	beq.n	beb0 <__lshift+0xa4>
    be74:	f1c8 0920 	rsb	r9, r8, #32
    be78:	2200      	movs	r2, #0
    be7a:	6819      	ldr	r1, [r3, #0]
    be7c:	fa01 f108 	lsl.w	r1, r1, r8
    be80:	4311      	orrs	r1, r2
    be82:	f84c 1b04 	str.w	r1, [ip], #4
    be86:	f853 2b04 	ldr.w	r2, [r3], #4
    be8a:	4573      	cmp	r3, lr
    be8c:	fa22 f209 	lsr.w	r2, r2, r9
    be90:	d3f3      	bcc.n	be7a <__lshift+0x6e>
    be92:	f8cc 2000 	str.w	r2, [ip]
    be96:	2a00      	cmp	r2, #0
    be98:	bf18      	it	ne
    be9a:	4626      	movne	r6, r4
    be9c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    be9e:	686a      	ldr	r2, [r5, #4]
    bea0:	6106      	str	r6, [r0, #16]
    bea2:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
    bea6:	6029      	str	r1, [r5, #0]
    bea8:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
    beac:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    beb0:	f1ac 0c04 	sub.w	ip, ip, #4
    beb4:	f853 2b04 	ldr.w	r2, [r3], #4
    beb8:	f84c 2f04 	str.w	r2, [ip, #4]!
    bebc:	459e      	cmp	lr, r3
    bebe:	d8f9      	bhi.n	beb4 <__lshift+0xa8>
    bec0:	e7ec      	b.n	be9c <__lshift+0x90>
    bec2:	4602      	mov	r2, r0
    bec4:	4b02      	ldr	r3, [pc, #8]	; (bed0 <__lshift+0xc4>)
    bec6:	4803      	ldr	r0, [pc, #12]	; (bed4 <__lshift+0xc8>)
    bec8:	f240 11d9 	movw	r1, #473	; 0x1d9
    becc:	f001 f99a 	bl	d204 <__assert_func>
    bed0:	0000f368 	.word	0x0000f368
    bed4:	0000f4d8 	.word	0x0000f4d8

0000bed8 <__mcmp>:
    bed8:	b430      	push	{r4, r5}
    beda:	690b      	ldr	r3, [r1, #16]
    bedc:	4605      	mov	r5, r0
    bede:	6900      	ldr	r0, [r0, #16]
    bee0:	1ac0      	subs	r0, r0, r3
    bee2:	d110      	bne.n	bf06 <__mcmp+0x2e>
    bee4:	009b      	lsls	r3, r3, #2
    bee6:	3514      	adds	r5, #20
    bee8:	3114      	adds	r1, #20
    beea:	4419      	add	r1, r3
    beec:	442b      	add	r3, r5
    beee:	e001      	b.n	bef4 <__mcmp+0x1c>
    bef0:	429d      	cmp	r5, r3
    bef2:	d208      	bcs.n	bf06 <__mcmp+0x2e>
    bef4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
    bef8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
    befc:	4294      	cmp	r4, r2
    befe:	d0f7      	beq.n	bef0 <__mcmp+0x18>
    bf00:	d203      	bcs.n	bf0a <__mcmp+0x32>
    bf02:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    bf06:	bc30      	pop	{r4, r5}
    bf08:	4770      	bx	lr
    bf0a:	2001      	movs	r0, #1
    bf0c:	bc30      	pop	{r4, r5}
    bf0e:	4770      	bx	lr

0000bf10 <__mdiff>:
    bf10:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    bf14:	4616      	mov	r6, r2
    bf16:	690b      	ldr	r3, [r1, #16]
    bf18:	6912      	ldr	r2, [r2, #16]
    bf1a:	eba3 0802 	sub.w	r8, r3, r2
    bf1e:	f1b8 0f00 	cmp.w	r8, #0
    bf22:	460d      	mov	r5, r1
    bf24:	d167      	bne.n	bff6 <__mdiff+0xe6>
    bf26:	0092      	lsls	r2, r2, #2
    bf28:	f101 0714 	add.w	r7, r1, #20
    bf2c:	f106 0114 	add.w	r1, r6, #20
    bf30:	18bb      	adds	r3, r7, r2
    bf32:	4411      	add	r1, r2
    bf34:	e001      	b.n	bf3a <__mdiff+0x2a>
    bf36:	429f      	cmp	r7, r3
    bf38:	d261      	bcs.n	bffe <__mdiff+0xee>
    bf3a:	f853 2d04 	ldr.w	r2, [r3, #-4]!
    bf3e:	f851 4d04 	ldr.w	r4, [r1, #-4]!
    bf42:	42a2      	cmp	r2, r4
    bf44:	d0f7      	beq.n	bf36 <__mdiff+0x26>
    bf46:	d350      	bcc.n	bfea <__mdiff+0xda>
    bf48:	6869      	ldr	r1, [r5, #4]
    bf4a:	f7ff fd2f 	bl	b9ac <_Balloc>
    bf4e:	2800      	cmp	r0, #0
    bf50:	d05f      	beq.n	c012 <__mdiff+0x102>
    bf52:	692f      	ldr	r7, [r5, #16]
    bf54:	6933      	ldr	r3, [r6, #16]
    bf56:	f8c0 800c 	str.w	r8, [r0, #12]
    bf5a:	f106 0214 	add.w	r2, r6, #20
    bf5e:	3514      	adds	r5, #20
    bf60:	eb05 0c87 	add.w	ip, r5, r7, lsl #2
    bf64:	eb02 0e83 	add.w	lr, r2, r3, lsl #2
    bf68:	f100 0614 	add.w	r6, r0, #20
    bf6c:	2100      	movs	r1, #0
    bf6e:	e000      	b.n	bf72 <__mdiff+0x62>
    bf70:	4626      	mov	r6, r4
    bf72:	f852 4b04 	ldr.w	r4, [r2], #4
    bf76:	f855 8b04 	ldr.w	r8, [r5], #4
    bf7a:	fa1f f984 	uxth.w	r9, r4
    bf7e:	fa11 f388 	uxtah	r3, r1, r8
    bf82:	0c21      	lsrs	r1, r4, #16
    bf84:	eba3 0309 	sub.w	r3, r3, r9
    bf88:	ebc1 4118 	rsb	r1, r1, r8, lsr #16
    bf8c:	eb01 4123 	add.w	r1, r1, r3, asr #16
    bf90:	4634      	mov	r4, r6
    bf92:	b29b      	uxth	r3, r3
    bf94:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
    bf98:	4596      	cmp	lr, r2
    bf9a:	ea4f 4121 	mov.w	r1, r1, asr #16
    bf9e:	f844 3b04 	str.w	r3, [r4], #4
    bfa2:	46a8      	mov	r8, r5
    bfa4:	d8e4      	bhi.n	bf70 <__mdiff+0x60>
    bfa6:	45ac      	cmp	ip, r5
    bfa8:	d916      	bls.n	bfd8 <__mdiff+0xc8>
    bfaa:	4626      	mov	r6, r4
    bfac:	f858 2b04 	ldr.w	r2, [r8], #4
    bfb0:	fa11 f382 	uxtah	r3, r1, r2
    bfb4:	1419      	asrs	r1, r3, #16
    bfb6:	eb01 4112 	add.w	r1, r1, r2, lsr #16
    bfba:	b29b      	uxth	r3, r3
    bfbc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
    bfc0:	45c4      	cmp	ip, r8
    bfc2:	f846 3b04 	str.w	r3, [r6], #4
    bfc6:	ea4f 4121 	mov.w	r1, r1, asr #16
    bfca:	d8ef      	bhi.n	bfac <__mdiff+0x9c>
    bfcc:	f10c 36ff 	add.w	r6, ip, #4294967295	; 0xffffffff
    bfd0:	1b76      	subs	r6, r6, r5
    bfd2:	f026 0603 	bic.w	r6, r6, #3
    bfd6:	4426      	add	r6, r4
    bfd8:	b923      	cbnz	r3, bfe4 <__mdiff+0xd4>
    bfda:	f856 3d04 	ldr.w	r3, [r6, #-4]!
    bfde:	3f01      	subs	r7, #1
    bfe0:	2b00      	cmp	r3, #0
    bfe2:	d0fa      	beq.n	bfda <__mdiff+0xca>
    bfe4:	6107      	str	r7, [r0, #16]
    bfe6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    bfea:	462b      	mov	r3, r5
    bfec:	f04f 0801 	mov.w	r8, #1
    bff0:	4635      	mov	r5, r6
    bff2:	461e      	mov	r6, r3
    bff4:	e7a8      	b.n	bf48 <__mdiff+0x38>
    bff6:	dbf8      	blt.n	bfea <__mdiff+0xda>
    bff8:	f04f 0800 	mov.w	r8, #0
    bffc:	e7a4      	b.n	bf48 <__mdiff+0x38>
    bffe:	2100      	movs	r1, #0
    c000:	f7ff fcd4 	bl	b9ac <_Balloc>
    c004:	b160      	cbz	r0, c020 <__mdiff+0x110>
    c006:	2201      	movs	r2, #1
    c008:	2300      	movs	r3, #0
    c00a:	e9c0 2304 	strd	r2, r3, [r0, #16]
    c00e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    c012:	4602      	mov	r2, r0
    c014:	4b06      	ldr	r3, [pc, #24]	; (c030 <__mdiff+0x120>)
    c016:	4807      	ldr	r0, [pc, #28]	; (c034 <__mdiff+0x124>)
    c018:	f44f 7110 	mov.w	r1, #576	; 0x240
    c01c:	f001 f8f2 	bl	d204 <__assert_func>
    c020:	4602      	mov	r2, r0
    c022:	4b03      	ldr	r3, [pc, #12]	; (c030 <__mdiff+0x120>)
    c024:	4803      	ldr	r0, [pc, #12]	; (c034 <__mdiff+0x124>)
    c026:	f240 2132 	movw	r1, #562	; 0x232
    c02a:	f001 f8eb 	bl	d204 <__assert_func>
    c02e:	bf00      	nop
    c030:	0000f368 	.word	0x0000f368
    c034:	0000f4d8 	.word	0x0000f4d8

0000c038 <__ulp>:
    c038:	4b0e      	ldr	r3, [pc, #56]	; (c074 <__ulp+0x3c>)
    c03a:	400b      	ands	r3, r1
    c03c:	f1a3 7350 	sub.w	r3, r3, #54525952	; 0x3400000
    c040:	2b00      	cmp	r3, #0
    c042:	dd02      	ble.n	c04a <__ulp+0x12>
    c044:	2000      	movs	r0, #0
    c046:	4619      	mov	r1, r3
    c048:	4770      	bx	lr
    c04a:	425b      	negs	r3, r3
    c04c:	151b      	asrs	r3, r3, #20
    c04e:	2b13      	cmp	r3, #19
    c050:	dc05      	bgt.n	c05e <__ulp+0x26>
    c052:	f44f 2200 	mov.w	r2, #524288	; 0x80000
    c056:	2000      	movs	r0, #0
    c058:	fa42 f103 	asr.w	r1, r2, r3
    c05c:	4770      	bx	lr
    c05e:	3b14      	subs	r3, #20
    c060:	2b1e      	cmp	r3, #30
    c062:	bfda      	itte	le
    c064:	f04f 4200 	movle.w	r2, #2147483648	; 0x80000000
    c068:	fa22 f303 	lsrle.w	r3, r2, r3
    c06c:	2301      	movgt	r3, #1
    c06e:	2100      	movs	r1, #0
    c070:	4618      	mov	r0, r3
    c072:	4770      	bx	lr
    c074:	7ff00000 	.word	0x7ff00000

0000c078 <__b2d>:
    c078:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    c07c:	6906      	ldr	r6, [r0, #16]
    c07e:	f100 0814 	add.w	r8, r0, #20
    c082:	eb08 0686 	add.w	r6, r8, r6, lsl #2
    c086:	f856 7c04 	ldr.w	r7, [r6, #-4]
    c08a:	4638      	mov	r0, r7
    c08c:	f7ff fd66 	bl	bb5c <__hi0bits>
    c090:	f1c0 0320 	rsb	r3, r0, #32
    c094:	280a      	cmp	r0, #10
    c096:	600b      	str	r3, [r1, #0]
    c098:	f1a6 0204 	sub.w	r2, r6, #4
    c09c:	dd2e      	ble.n	c0fc <__b2d+0x84>
    c09e:	4590      	cmp	r8, r2
    c0a0:	f1a0 030b 	sub.w	r3, r0, #11
    c0a4:	d21b      	bcs.n	c0de <__b2d+0x66>
    c0a6:	f856 0c08 	ldr.w	r0, [r6, #-8]
    c0aa:	b313      	cbz	r3, c0f2 <__b2d+0x7a>
    c0ac:	f1c3 0120 	rsb	r1, r3, #32
    c0b0:	fa20 f201 	lsr.w	r2, r0, r1
    c0b4:	409f      	lsls	r7, r3
    c0b6:	4317      	orrs	r7, r2
    c0b8:	f1a6 0208 	sub.w	r2, r6, #8
    c0bc:	f047 557f 	orr.w	r5, r7, #1069547520	; 0x3fc00000
    c0c0:	4590      	cmp	r8, r2
    c0c2:	fa00 f003 	lsl.w	r0, r0, r3
    c0c6:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    c0ca:	d203      	bcs.n	c0d4 <__b2d+0x5c>
    c0cc:	f856 3c0c 	ldr.w	r3, [r6, #-12]
    c0d0:	40cb      	lsrs	r3, r1
    c0d2:	4318      	orrs	r0, r3
    c0d4:	4604      	mov	r4, r0
    c0d6:	4620      	mov	r0, r4
    c0d8:	4629      	mov	r1, r5
    c0da:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    c0de:	b13b      	cbz	r3, c0f0 <__b2d+0x78>
    c0e0:	fa07 f303 	lsl.w	r3, r7, r3
    c0e4:	f043 557f 	orr.w	r5, r3, #1069547520	; 0x3fc00000
    c0e8:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    c0ec:	2000      	movs	r0, #0
    c0ee:	e7f1      	b.n	c0d4 <__b2d+0x5c>
    c0f0:	4618      	mov	r0, r3
    c0f2:	f047 557f 	orr.w	r5, r7, #1069547520	; 0x3fc00000
    c0f6:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    c0fa:	e7eb      	b.n	c0d4 <__b2d+0x5c>
    c0fc:	4590      	cmp	r8, r2
    c0fe:	bf38      	it	cc
    c100:	f856 2c08 	ldrcc.w	r2, [r6, #-8]
    c104:	f1c0 030b 	rsb	r3, r0, #11
    c108:	fa27 f103 	lsr.w	r1, r7, r3
    c10c:	bf38      	it	cc
    c10e:	40da      	lsrcc	r2, r3
    c110:	f100 0315 	add.w	r3, r0, #21
    c114:	f041 557f 	orr.w	r5, r1, #1069547520	; 0x3fc00000
    c118:	bf28      	it	cs
    c11a:	2200      	movcs	r2, #0
    c11c:	fa07 f303 	lsl.w	r3, r7, r3
    c120:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    c124:	ea43 0402 	orr.w	r4, r3, r2
    c128:	4620      	mov	r0, r4
    c12a:	4629      	mov	r1, r5
    c12c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0000c130 <__d2b>:
    c130:	b570      	push	{r4, r5, r6, lr}
    c132:	2101      	movs	r1, #1
    c134:	b082      	sub	sp, #8
    c136:	4616      	mov	r6, r2
    c138:	461c      	mov	r4, r3
    c13a:	f7ff fc37 	bl	b9ac <_Balloc>
    c13e:	4605      	mov	r5, r0
    c140:	2800      	cmp	r0, #0
    c142:	d04b      	beq.n	c1dc <__d2b+0xac>
    c144:	4623      	mov	r3, r4
    c146:	f3c4 540a 	ubfx	r4, r4, #20, #11
    c14a:	f3c3 0313 	ubfx	r3, r3, #0, #20
    c14e:	b10c      	cbz	r4, c154 <__d2b+0x24>
    c150:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    c154:	2e00      	cmp	r6, #0
    c156:	9301      	str	r3, [sp, #4]
    c158:	d022      	beq.n	c1a0 <__d2b+0x70>
    c15a:	4668      	mov	r0, sp
    c15c:	9600      	str	r6, [sp, #0]
    c15e:	f7ff fd1d 	bl	bb9c <__lo0bits>
    c162:	2800      	cmp	r0, #0
    c164:	d036      	beq.n	c1d4 <__d2b+0xa4>
    c166:	e9dd 1300 	ldrd	r1, r3, [sp]
    c16a:	f1c0 0220 	rsb	r2, r0, #32
    c16e:	fa03 f202 	lsl.w	r2, r3, r2
    c172:	430a      	orrs	r2, r1
    c174:	40c3      	lsrs	r3, r0
    c176:	9301      	str	r3, [sp, #4]
    c178:	616a      	str	r2, [r5, #20]
    c17a:	2b00      	cmp	r3, #0
    c17c:	bf14      	ite	ne
    c17e:	2102      	movne	r1, #2
    c180:	2101      	moveq	r1, #1
    c182:	61ab      	str	r3, [r5, #24]
    c184:	6129      	str	r1, [r5, #16]
    c186:	b1ac      	cbz	r4, c1b4 <__d2b+0x84>
    c188:	9b06      	ldr	r3, [sp, #24]
    c18a:	f2a4 4433 	subw	r4, r4, #1075	; 0x433
    c18e:	4404      	add	r4, r0
    c190:	601c      	str	r4, [r3, #0]
    c192:	9b07      	ldr	r3, [sp, #28]
    c194:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
    c198:	6018      	str	r0, [r3, #0]
    c19a:	4628      	mov	r0, r5
    c19c:	b002      	add	sp, #8
    c19e:	bd70      	pop	{r4, r5, r6, pc}
    c1a0:	a801      	add	r0, sp, #4
    c1a2:	f7ff fcfb 	bl	bb9c <__lo0bits>
    c1a6:	9b01      	ldr	r3, [sp, #4]
    c1a8:	616b      	str	r3, [r5, #20]
    c1aa:	2101      	movs	r1, #1
    c1ac:	3020      	adds	r0, #32
    c1ae:	6129      	str	r1, [r5, #16]
    c1b0:	2c00      	cmp	r4, #0
    c1b2:	d1e9      	bne.n	c188 <__d2b+0x58>
    c1b4:	eb05 0381 	add.w	r3, r5, r1, lsl #2
    c1b8:	9a06      	ldr	r2, [sp, #24]
    c1ba:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
    c1be:	6010      	str	r0, [r2, #0]
    c1c0:	6918      	ldr	r0, [r3, #16]
    c1c2:	f7ff fccb 	bl	bb5c <__hi0bits>
    c1c6:	9b07      	ldr	r3, [sp, #28]
    c1c8:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
    c1cc:	6018      	str	r0, [r3, #0]
    c1ce:	4628      	mov	r0, r5
    c1d0:	b002      	add	sp, #8
    c1d2:	bd70      	pop	{r4, r5, r6, pc}
    c1d4:	e9dd 2300 	ldrd	r2, r3, [sp]
    c1d8:	616a      	str	r2, [r5, #20]
    c1da:	e7ce      	b.n	c17a <__d2b+0x4a>
    c1dc:	4602      	mov	r2, r0
    c1de:	4b03      	ldr	r3, [pc, #12]	; (c1ec <__d2b+0xbc>)
    c1e0:	4803      	ldr	r0, [pc, #12]	; (c1f0 <__d2b+0xc0>)
    c1e2:	f240 310a 	movw	r1, #778	; 0x30a
    c1e6:	f001 f80d 	bl	d204 <__assert_func>
    c1ea:	bf00      	nop
    c1ec:	0000f368 	.word	0x0000f368
    c1f0:	0000f4d8 	.word	0x0000f4d8

0000c1f4 <__ratio>:
    c1f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    c1f8:	b083      	sub	sp, #12
    c1fa:	4688      	mov	r8, r1
    c1fc:	4669      	mov	r1, sp
    c1fe:	4681      	mov	r9, r0
    c200:	f7ff ff3a 	bl	c078 <__b2d>
    c204:	4604      	mov	r4, r0
    c206:	460d      	mov	r5, r1
    c208:	4640      	mov	r0, r8
    c20a:	a901      	add	r1, sp, #4
    c20c:	f7ff ff34 	bl	c078 <__b2d>
    c210:	460f      	mov	r7, r1
    c212:	e9dd 1300 	ldrd	r1, r3, [sp]
    c216:	4606      	mov	r6, r0
    c218:	f8d9 2010 	ldr.w	r2, [r9, #16]
    c21c:	f8d8 0010 	ldr.w	r0, [r8, #16]
    c220:	1acb      	subs	r3, r1, r3
    c222:	1a12      	subs	r2, r2, r0
    c224:	eb03 1342 	add.w	r3, r3, r2, lsl #5
    c228:	2b00      	cmp	r3, #0
    c22a:	dd0b      	ble.n	c244 <__ratio+0x50>
    c22c:	eb05 5903 	add.w	r9, r5, r3, lsl #20
    c230:	464d      	mov	r5, r9
    c232:	4632      	mov	r2, r6
    c234:	463b      	mov	r3, r7
    c236:	4620      	mov	r0, r4
    c238:	4629      	mov	r1, r5
    c23a:	f002 fcd1 	bl	ebe0 <__aeabi_ddiv>
    c23e:	b003      	add	sp, #12
    c240:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    c244:	ebc3 3303 	rsb	r3, r3, r3, lsl #12
    c248:	eb07 5103 	add.w	r1, r7, r3, lsl #20
    c24c:	460f      	mov	r7, r1
    c24e:	e7f0      	b.n	c232 <__ratio+0x3e>

0000c250 <_mprec_log10>:
    c250:	2817      	cmp	r0, #23
    c252:	b5d0      	push	{r4, r6, r7, lr}
    c254:	4604      	mov	r4, r0
    c256:	dd0a      	ble.n	c26e <_mprec_log10+0x1e>
    c258:	4908      	ldr	r1, [pc, #32]	; (c27c <_mprec_log10+0x2c>)
    c25a:	4f09      	ldr	r7, [pc, #36]	; (c280 <_mprec_log10+0x30>)
    c25c:	2000      	movs	r0, #0
    c25e:	2600      	movs	r6, #0
    c260:	4632      	mov	r2, r6
    c262:	463b      	mov	r3, r7
    c264:	f002 fb92 	bl	e98c <__aeabi_dmul>
    c268:	3c01      	subs	r4, #1
    c26a:	d1f9      	bne.n	c260 <_mprec_log10+0x10>
    c26c:	bdd0      	pop	{r4, r6, r7, pc}
    c26e:	4b05      	ldr	r3, [pc, #20]	; (c284 <_mprec_log10+0x34>)
    c270:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
    c274:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
    c278:	bdd0      	pop	{r4, r6, r7, pc}
    c27a:	bf00      	nop
    c27c:	3ff00000 	.word	0x3ff00000
    c280:	40240000 	.word	0x40240000
    c284:	0000f3b0 	.word	0x0000f3b0

0000c288 <__copybits>:
    c288:	b470      	push	{r4, r5, r6}
    c28a:	6914      	ldr	r4, [r2, #16]
    c28c:	1e4e      	subs	r6, r1, #1
    c28e:	f102 0314 	add.w	r3, r2, #20
    c292:	1176      	asrs	r6, r6, #5
    c294:	eb03 0184 	add.w	r1, r3, r4, lsl #2
    c298:	3601      	adds	r6, #1
    c29a:	428b      	cmp	r3, r1
    c29c:	eb00 0686 	add.w	r6, r0, r6, lsl #2
    c2a0:	d20c      	bcs.n	c2bc <__copybits+0x34>
    c2a2:	1f04      	subs	r4, r0, #4
    c2a4:	f853 5b04 	ldr.w	r5, [r3], #4
    c2a8:	f844 5f04 	str.w	r5, [r4, #4]!
    c2ac:	4299      	cmp	r1, r3
    c2ae:	d8f9      	bhi.n	c2a4 <__copybits+0x1c>
    c2b0:	1a8b      	subs	r3, r1, r2
    c2b2:	3b15      	subs	r3, #21
    c2b4:	f023 0303 	bic.w	r3, r3, #3
    c2b8:	3304      	adds	r3, #4
    c2ba:	4418      	add	r0, r3
    c2bc:	4286      	cmp	r6, r0
    c2be:	d904      	bls.n	c2ca <__copybits+0x42>
    c2c0:	2300      	movs	r3, #0
    c2c2:	f840 3b04 	str.w	r3, [r0], #4
    c2c6:	4286      	cmp	r6, r0
    c2c8:	d8fb      	bhi.n	c2c2 <__copybits+0x3a>
    c2ca:	bc70      	pop	{r4, r5, r6}
    c2cc:	4770      	bx	lr
    c2ce:	bf00      	nop

0000c2d0 <__any_on>:
    c2d0:	6903      	ldr	r3, [r0, #16]
    c2d2:	114a      	asrs	r2, r1, #5
    c2d4:	4293      	cmp	r3, r2
    c2d6:	b410      	push	{r4}
    c2d8:	f100 0414 	add.w	r4, r0, #20
    c2dc:	da0f      	bge.n	c2fe <__any_on+0x2e>
    c2de:	eb04 0383 	add.w	r3, r4, r3, lsl #2
    c2e2:	429c      	cmp	r4, r3
    c2e4:	d21c      	bcs.n	c320 <__any_on+0x50>
    c2e6:	f853 0c04 	ldr.w	r0, [r3, #-4]
    c2ea:	3b04      	subs	r3, #4
    c2ec:	b118      	cbz	r0, c2f6 <__any_on+0x26>
    c2ee:	e014      	b.n	c31a <__any_on+0x4a>
    c2f0:	f853 2d04 	ldr.w	r2, [r3, #-4]!
    c2f4:	b98a      	cbnz	r2, c31a <__any_on+0x4a>
    c2f6:	429c      	cmp	r4, r3
    c2f8:	d3fa      	bcc.n	c2f0 <__any_on+0x20>
    c2fa:	bc10      	pop	{r4}
    c2fc:	4770      	bx	lr
    c2fe:	eb04 0382 	add.w	r3, r4, r2, lsl #2
    c302:	ddee      	ble.n	c2e2 <__any_on+0x12>
    c304:	f011 011f 	ands.w	r1, r1, #31
    c308:	d0eb      	beq.n	c2e2 <__any_on+0x12>
    c30a:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
    c30e:	fa20 f201 	lsr.w	r2, r0, r1
    c312:	fa02 f101 	lsl.w	r1, r2, r1
    c316:	4288      	cmp	r0, r1
    c318:	d0e3      	beq.n	c2e2 <__any_on+0x12>
    c31a:	2001      	movs	r0, #1
    c31c:	bc10      	pop	{r4}
    c31e:	4770      	bx	lr
    c320:	2000      	movs	r0, #0
    c322:	e7ea      	b.n	c2fa <__any_on+0x2a>

0000c324 <_sbrk_r>:
    c324:	b538      	push	{r3, r4, r5, lr}
    c326:	4c07      	ldr	r4, [pc, #28]	; (c344 <_sbrk_r+0x20>)
    c328:	2300      	movs	r3, #0
    c32a:	4605      	mov	r5, r0
    c32c:	4608      	mov	r0, r1
    c32e:	6023      	str	r3, [r4, #0]
    c330:	f002 ffb6 	bl	f2a0 <_sbrk>
    c334:	1c43      	adds	r3, r0, #1
    c336:	d000      	beq.n	c33a <_sbrk_r+0x16>
    c338:	bd38      	pop	{r3, r4, r5, pc}
    c33a:	6823      	ldr	r3, [r4, #0]
    c33c:	2b00      	cmp	r3, #0
    c33e:	d0fb      	beq.n	c338 <_sbrk_r+0x14>
    c340:	602b      	str	r3, [r5, #0]
    c342:	bd38      	pop	{r3, r4, r5, pc}
    c344:	000200a4 	.word	0x000200a4

0000c348 <__sread>:
    c348:	b510      	push	{r4, lr}
    c34a:	460c      	mov	r4, r1
    c34c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    c350:	f001 fb28 	bl	d9a4 <_read_r>
    c354:	2800      	cmp	r0, #0
    c356:	db03      	blt.n	c360 <__sread+0x18>
    c358:	6d23      	ldr	r3, [r4, #80]	; 0x50
    c35a:	4403      	add	r3, r0
    c35c:	6523      	str	r3, [r4, #80]	; 0x50
    c35e:	bd10      	pop	{r4, pc}
    c360:	89a3      	ldrh	r3, [r4, #12]
    c362:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
    c366:	81a3      	strh	r3, [r4, #12]
    c368:	bd10      	pop	{r4, pc}
    c36a:	bf00      	nop

0000c36c <__seofread>:
    c36c:	2000      	movs	r0, #0
    c36e:	4770      	bx	lr

0000c370 <__swrite>:
    c370:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    c374:	4616      	mov	r6, r2
    c376:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
    c37a:	461f      	mov	r7, r3
    c37c:	05d3      	lsls	r3, r2, #23
    c37e:	460c      	mov	r4, r1
    c380:	4605      	mov	r5, r0
    c382:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    c386:	d409      	bmi.n	c39c <__swrite+0x2c>
    c388:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
    c38c:	81a2      	strh	r2, [r4, #12]
    c38e:	463b      	mov	r3, r7
    c390:	4632      	mov	r2, r6
    c392:	4628      	mov	r0, r5
    c394:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    c398:	f000 bf1e 	b.w	d1d8 <_write_r>
    c39c:	2200      	movs	r2, #0
    c39e:	2302      	movs	r3, #2
    c3a0:	f001 fa62 	bl	d868 <_lseek_r>
    c3a4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    c3a8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    c3ac:	e7ec      	b.n	c388 <__swrite+0x18>
    c3ae:	bf00      	nop

0000c3b0 <__sseek>:
    c3b0:	b510      	push	{r4, lr}
    c3b2:	460c      	mov	r4, r1
    c3b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    c3b8:	f001 fa56 	bl	d868 <_lseek_r>
    c3bc:	89a3      	ldrh	r3, [r4, #12]
    c3be:	1c42      	adds	r2, r0, #1
    c3c0:	bf0e      	itee	eq
    c3c2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
    c3c6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
    c3ca:	6520      	strne	r0, [r4, #80]	; 0x50
    c3cc:	81a3      	strh	r3, [r4, #12]
    c3ce:	bd10      	pop	{r4, pc}

0000c3d0 <__sclose>:
    c3d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    c3d4:	f000 bf6a 	b.w	d2ac <_close_r>
	...

0000c400 <strlen>:
    c400:	f890 f000 	pld	[r0]
    c404:	e96d 4502 	strd	r4, r5, [sp, #-8]!
    c408:	f020 0107 	bic.w	r1, r0, #7
    c40c:	f06f 0c00 	mvn.w	ip, #0
    c410:	f010 0407 	ands.w	r4, r0, #7
    c414:	f891 f020 	pld	[r1, #32]
    c418:	f040 8049 	bne.w	c4ae <strlen+0xae>
    c41c:	f04f 0400 	mov.w	r4, #0
    c420:	f06f 0007 	mvn.w	r0, #7
    c424:	e9d1 2300 	ldrd	r2, r3, [r1]
    c428:	f891 f040 	pld	[r1, #64]	; 0x40
    c42c:	f100 0008 	add.w	r0, r0, #8
    c430:	fa82 f24c 	uadd8	r2, r2, ip
    c434:	faa4 f28c 	sel	r2, r4, ip
    c438:	fa83 f34c 	uadd8	r3, r3, ip
    c43c:	faa2 f38c 	sel	r3, r2, ip
    c440:	bb4b      	cbnz	r3, c496 <strlen+0x96>
    c442:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
    c446:	fa82 f24c 	uadd8	r2, r2, ip
    c44a:	f100 0008 	add.w	r0, r0, #8
    c44e:	faa4 f28c 	sel	r2, r4, ip
    c452:	fa83 f34c 	uadd8	r3, r3, ip
    c456:	faa2 f38c 	sel	r3, r2, ip
    c45a:	b9e3      	cbnz	r3, c496 <strlen+0x96>
    c45c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
    c460:	fa82 f24c 	uadd8	r2, r2, ip
    c464:	f100 0008 	add.w	r0, r0, #8
    c468:	faa4 f28c 	sel	r2, r4, ip
    c46c:	fa83 f34c 	uadd8	r3, r3, ip
    c470:	faa2 f38c 	sel	r3, r2, ip
    c474:	b97b      	cbnz	r3, c496 <strlen+0x96>
    c476:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
    c47a:	f101 0120 	add.w	r1, r1, #32
    c47e:	fa82 f24c 	uadd8	r2, r2, ip
    c482:	f100 0008 	add.w	r0, r0, #8
    c486:	faa4 f28c 	sel	r2, r4, ip
    c48a:	fa83 f34c 	uadd8	r3, r3, ip
    c48e:	faa2 f38c 	sel	r3, r2, ip
    c492:	2b00      	cmp	r3, #0
    c494:	d0c6      	beq.n	c424 <strlen+0x24>
    c496:	2a00      	cmp	r2, #0
    c498:	bf04      	itt	eq
    c49a:	3004      	addeq	r0, #4
    c49c:	461a      	moveq	r2, r3
    c49e:	ba12      	rev	r2, r2
    c4a0:	fab2 f282 	clz	r2, r2
    c4a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
    c4a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
    c4ac:	4770      	bx	lr
    c4ae:	e9d1 2300 	ldrd	r2, r3, [r1]
    c4b2:	f004 0503 	and.w	r5, r4, #3
    c4b6:	f1c4 0000 	rsb	r0, r4, #0
    c4ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
    c4be:	f014 0f04 	tst.w	r4, #4
    c4c2:	f891 f040 	pld	[r1, #64]	; 0x40
    c4c6:	fa0c f505 	lsl.w	r5, ip, r5
    c4ca:	ea62 0205 	orn	r2, r2, r5
    c4ce:	bf1c      	itt	ne
    c4d0:	ea63 0305 	ornne	r3, r3, r5
    c4d4:	4662      	movne	r2, ip
    c4d6:	f04f 0400 	mov.w	r4, #0
    c4da:	e7a9      	b.n	c430 <strlen+0x30>

0000c4dc <__sprint_r.part.0>:
    c4dc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c4e0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
    c4e2:	049c      	lsls	r4, r3, #18
    c4e4:	4693      	mov	fp, r2
    c4e6:	d52d      	bpl.n	c544 <__sprint_r.part.0+0x68>
    c4e8:	6893      	ldr	r3, [r2, #8]
    c4ea:	6812      	ldr	r2, [r2, #0]
    c4ec:	b343      	cbz	r3, c540 <__sprint_r.part.0+0x64>
    c4ee:	460e      	mov	r6, r1
    c4f0:	4607      	mov	r7, r0
    c4f2:	f102 0908 	add.w	r9, r2, #8
    c4f6:	e959 5a02 	ldrd	r5, sl, [r9, #-8]
    c4fa:	ea5f 089a 	movs.w	r8, sl, lsr #2
    c4fe:	d015      	beq.n	c52c <__sprint_r.part.0+0x50>
    c500:	3d04      	subs	r5, #4
    c502:	2400      	movs	r4, #0
    c504:	e001      	b.n	c50a <__sprint_r.part.0+0x2e>
    c506:	45a0      	cmp	r8, r4
    c508:	d00e      	beq.n	c528 <__sprint_r.part.0+0x4c>
    c50a:	4632      	mov	r2, r6
    c50c:	f855 1f04 	ldr.w	r1, [r5, #4]!
    c510:	4638      	mov	r0, r7
    c512:	f000 ff9f 	bl	d454 <_fputwc_r>
    c516:	1c43      	adds	r3, r0, #1
    c518:	f104 0401 	add.w	r4, r4, #1
    c51c:	d1f3      	bne.n	c506 <__sprint_r.part.0+0x2a>
    c51e:	2300      	movs	r3, #0
    c520:	e9cb 3301 	strd	r3, r3, [fp, #4]
    c524:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c528:	f8db 3008 	ldr.w	r3, [fp, #8]
    c52c:	f02a 0a03 	bic.w	sl, sl, #3
    c530:	eba3 030a 	sub.w	r3, r3, sl
    c534:	f8cb 3008 	str.w	r3, [fp, #8]
    c538:	f109 0908 	add.w	r9, r9, #8
    c53c:	2b00      	cmp	r3, #0
    c53e:	d1da      	bne.n	c4f6 <__sprint_r.part.0+0x1a>
    c540:	2000      	movs	r0, #0
    c542:	e7ec      	b.n	c51e <__sprint_r.part.0+0x42>
    c544:	f000 ffcc 	bl	d4e0 <__sfvwrite_r>
    c548:	2300      	movs	r3, #0
    c54a:	e9cb 3301 	strd	r3, r3, [fp, #4]
    c54e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c552:	bf00      	nop

0000c554 <__sprint_r>:
    c554:	6893      	ldr	r3, [r2, #8]
    c556:	b103      	cbz	r3, c55a <__sprint_r+0x6>
    c558:	e7c0      	b.n	c4dc <__sprint_r.part.0>
    c55a:	b410      	push	{r4}
    c55c:	4618      	mov	r0, r3
    c55e:	6053      	str	r3, [r2, #4]
    c560:	bc10      	pop	{r4}
    c562:	4770      	bx	lr

0000c564 <_vfiprintf_r>:
    c564:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    c568:	b0ab      	sub	sp, #172	; 0xac
    c56a:	461c      	mov	r4, r3
    c56c:	468a      	mov	sl, r1
    c56e:	4690      	mov	r8, r2
    c570:	e9cd 3004 	strd	r3, r0, [sp, #16]
    c574:	b118      	cbz	r0, c57e <_vfiprintf_r+0x1a>
    c576:	6b83      	ldr	r3, [r0, #56]	; 0x38
    c578:	2b00      	cmp	r3, #0
    c57a:	f000 8300 	beq.w	cb7e <_vfiprintf_r+0x61a>
    c57e:	f9ba 100c 	ldrsh.w	r1, [sl, #12]
    c582:	b28a      	uxth	r2, r1
    c584:	0490      	lsls	r0, r2, #18
    c586:	d40a      	bmi.n	c59e <_vfiprintf_r+0x3a>
    c588:	f8da 3064 	ldr.w	r3, [sl, #100]	; 0x64
    c58c:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
    c590:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    c594:	f8aa 200c 	strh.w	r2, [sl, #12]
    c598:	f8ca 3064 	str.w	r3, [sl, #100]	; 0x64
    c59c:	b292      	uxth	r2, r2
    c59e:	0711      	lsls	r1, r2, #28
    c5a0:	f140 80ca 	bpl.w	c738 <_vfiprintf_r+0x1d4>
    c5a4:	f8da 3010 	ldr.w	r3, [sl, #16]
    c5a8:	2b00      	cmp	r3, #0
    c5aa:	f000 80c5 	beq.w	c738 <_vfiprintf_r+0x1d4>
    c5ae:	f002 021a 	and.w	r2, r2, #26
    c5b2:	2a0a      	cmp	r2, #10
    c5b4:	f000 80ce 	beq.w	c754 <_vfiprintf_r+0x1f0>
    c5b8:	2300      	movs	r3, #0
    c5ba:	9308      	str	r3, [sp, #32]
    c5bc:	e9cd 330e 	strd	r3, r3, [sp, #56]	; 0x38
    c5c0:	9302      	str	r3, [sp, #8]
    c5c2:	ab1a      	add	r3, sp, #104	; 0x68
    c5c4:	930d      	str	r3, [sp, #52]	; 0x34
    c5c6:	469b      	mov	fp, r3
    c5c8:	f898 3000 	ldrb.w	r3, [r8]
    c5cc:	2b00      	cmp	r3, #0
    c5ce:	f000 80df 	beq.w	c790 <_vfiprintf_r+0x22c>
    c5d2:	2b25      	cmp	r3, #37	; 0x25
    c5d4:	f000 851c 	beq.w	d010 <_vfiprintf_r+0xaac>
    c5d8:	4645      	mov	r5, r8
    c5da:	e003      	b.n	c5e4 <_vfiprintf_r+0x80>
    c5dc:	2b25      	cmp	r3, #37	; 0x25
    c5de:	f000 80c6 	beq.w	c76e <_vfiprintf_r+0x20a>
    c5e2:	4625      	mov	r5, r4
    c5e4:	786b      	ldrb	r3, [r5, #1]
    c5e6:	1c6c      	adds	r4, r5, #1
    c5e8:	2b00      	cmp	r3, #0
    c5ea:	d1f7      	bne.n	c5dc <_vfiprintf_r+0x78>
    c5ec:	ebb4 0608 	subs.w	r6, r4, r8
    c5f0:	f000 80ce 	beq.w	c790 <_vfiprintf_r+0x22c>
    c5f4:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
    c5f8:	3301      	adds	r3, #1
    c5fa:	4432      	add	r2, r6
    c5fc:	2b07      	cmp	r3, #7
    c5fe:	f8cb 8000 	str.w	r8, [fp]
    c602:	f8cb 6004 	str.w	r6, [fp, #4]
    c606:	e9cd 320e 	strd	r3, r2, [sp, #56]	; 0x38
    c60a:	f300 80b5 	bgt.w	c778 <_vfiprintf_r+0x214>
    c60e:	f10b 0b08 	add.w	fp, fp, #8
    c612:	9a02      	ldr	r2, [sp, #8]
    c614:	786b      	ldrb	r3, [r5, #1]
    c616:	4432      	add	r2, r6
    c618:	9202      	str	r2, [sp, #8]
    c61a:	2b00      	cmp	r3, #0
    c61c:	f000 80b8 	beq.w	c790 <_vfiprintf_r+0x22c>
    c620:	f04f 0300 	mov.w	r3, #0
    c624:	2100      	movs	r1, #0
    c626:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
    c62a:	7863      	ldrb	r3, [r4, #1]
    c62c:	9103      	str	r1, [sp, #12]
    c62e:	4608      	mov	r0, r1
    c630:	460f      	mov	r7, r1
    c632:	f104 0801 	add.w	r8, r4, #1
    c636:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
    c63a:	f108 0801 	add.w	r8, r8, #1
    c63e:	f1a3 0220 	sub.w	r2, r3, #32
    c642:	2a58      	cmp	r2, #88	; 0x58
    c644:	f200 829e 	bhi.w	cb84 <_vfiprintf_r+0x620>
    c648:	e8df f012 	tbh	[pc, r2, lsl #1]
    c64c:	029c00f9 	.word	0x029c00f9
    c650:	00f4029c 	.word	0x00f4029c
    c654:	029c029c 	.word	0x029c029c
    c658:	029c029c 	.word	0x029c029c
    c65c:	029c029c 	.word	0x029c029c
    c660:	00e400e9 	.word	0x00e400e9
    c664:	00df029c 	.word	0x00df029c
    c668:	029c00c6 	.word	0x029c00c6
    c66c:	00b200c1 	.word	0x00b200c1
    c670:	00b200b2 	.word	0x00b200b2
    c674:	00b200b2 	.word	0x00b200b2
    c678:	00b200b2 	.word	0x00b200b2
    c67c:	00b200b2 	.word	0x00b200b2
    c680:	029c029c 	.word	0x029c029c
    c684:	029c029c 	.word	0x029c029c
    c688:	029c029c 	.word	0x029c029c
    c68c:	029c029c 	.word	0x029c029c
    c690:	029c029c 	.word	0x029c029c
    c694:	029c0228 	.word	0x029c0228
    c698:	029c029c 	.word	0x029c029c
    c69c:	029c029c 	.word	0x029c029c
    c6a0:	029c029c 	.word	0x029c029c
    c6a4:	029c029c 	.word	0x029c029c
    c6a8:	0067029c 	.word	0x0067029c
    c6ac:	029c029c 	.word	0x029c029c
    c6b0:	029c029c 	.word	0x029c029c
    c6b4:	0059029c 	.word	0x0059029c
    c6b8:	029c029c 	.word	0x029c029c
    c6bc:	029c0213 	.word	0x029c0213
    c6c0:	029c029c 	.word	0x029c029c
    c6c4:	029c029c 	.word	0x029c029c
    c6c8:	029c029c 	.word	0x029c029c
    c6cc:	029c029c 	.word	0x029c029c
    c6d0:	0184029c 	.word	0x0184029c
    c6d4:	029c0157 	.word	0x029c0157
    c6d8:	029c029c 	.word	0x029c029c
    c6dc:	01570152 	.word	0x01570152
    c6e0:	029c029c 	.word	0x029c029c
    c6e4:	029c0145 	.word	0x029c0145
    c6e8:	0069026e 	.word	0x0069026e
    c6ec:	0140023f 	.word	0x0140023f
    c6f0:	0120029c 	.word	0x0120029c
    c6f4:	005b029c 	.word	0x005b029c
    c6f8:	029c029c 	.word	0x029c029c
    c6fc:	0101      	.short	0x0101
    c6fe:	f047 0710 	orr.w	r7, r7, #16
    c702:	06ba      	lsls	r2, r7, #26
    c704:	9b04      	ldr	r3, [sp, #16]
    c706:	f140 8227 	bpl.w	cb58 <_vfiprintf_r+0x5f4>
    c70a:	3307      	adds	r3, #7
    c70c:	f023 0307 	bic.w	r3, r3, #7
    c710:	e8f3 4502 	ldrd	r4, r5, [r3], #8
    c714:	9304      	str	r3, [sp, #16]
    c716:	2301      	movs	r3, #1
    c718:	e1e5      	b.n	cae6 <_vfiprintf_r+0x582>
    c71a:	f047 0710 	orr.w	r7, r7, #16
    c71e:	f017 0320 	ands.w	r3, r7, #32
    c722:	f000 8222 	beq.w	cb6a <_vfiprintf_r+0x606>
    c726:	9b04      	ldr	r3, [sp, #16]
    c728:	3307      	adds	r3, #7
    c72a:	f023 0307 	bic.w	r3, r3, #7
    c72e:	e8f3 4502 	ldrd	r4, r5, [r3], #8
    c732:	9304      	str	r3, [sp, #16]
    c734:	2300      	movs	r3, #0
    c736:	e1d6      	b.n	cae6 <_vfiprintf_r+0x582>
    c738:	4651      	mov	r1, sl
    c73a:	9805      	ldr	r0, [sp, #20]
    c73c:	f7fd f8be 	bl	98bc <__swsetup_r>
    c740:	2800      	cmp	r0, #0
    c742:	f040 84f4 	bne.w	d12e <_vfiprintf_r+0xbca>
    c746:	f8ba 200c 	ldrh.w	r2, [sl, #12]
    c74a:	f002 021a 	and.w	r2, r2, #26
    c74e:	2a0a      	cmp	r2, #10
    c750:	f47f af32 	bne.w	c5b8 <_vfiprintf_r+0x54>
    c754:	f9ba 300e 	ldrsh.w	r3, [sl, #14]
    c758:	2b00      	cmp	r3, #0
    c75a:	f6ff af2d 	blt.w	c5b8 <_vfiprintf_r+0x54>
    c75e:	4623      	mov	r3, r4
    c760:	4642      	mov	r2, r8
    c762:	4651      	mov	r1, sl
    c764:	9805      	ldr	r0, [sp, #20]
    c766:	f000 fd01 	bl	d16c <__sbprintf>
    c76a:	9002      	str	r0, [sp, #8]
    c76c:	e01c      	b.n	c7a8 <_vfiprintf_r+0x244>
    c76e:	ebb4 0608 	subs.w	r6, r4, r8
    c772:	f43f af55 	beq.w	c620 <_vfiprintf_r+0xbc>
    c776:	e73d      	b.n	c5f4 <_vfiprintf_r+0x90>
    c778:	2a00      	cmp	r2, #0
    c77a:	f000 840f 	beq.w	cf9c <_vfiprintf_r+0xa38>
    c77e:	aa0d      	add	r2, sp, #52	; 0x34
    c780:	4651      	mov	r1, sl
    c782:	9805      	ldr	r0, [sp, #20]
    c784:	f7ff feaa 	bl	c4dc <__sprint_r.part.0>
    c788:	b948      	cbnz	r0, c79e <_vfiprintf_r+0x23a>
    c78a:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    c78e:	e740      	b.n	c612 <_vfiprintf_r+0xae>
    c790:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    c792:	b123      	cbz	r3, c79e <_vfiprintf_r+0x23a>
    c794:	9805      	ldr	r0, [sp, #20]
    c796:	aa0d      	add	r2, sp, #52	; 0x34
    c798:	4651      	mov	r1, sl
    c79a:	f7ff fe9f 	bl	c4dc <__sprint_r.part.0>
    c79e:	f8ba 300c 	ldrh.w	r3, [sl, #12]
    c7a2:	065b      	lsls	r3, r3, #25
    c7a4:	f100 84c3 	bmi.w	d12e <_vfiprintf_r+0xbca>
    c7a8:	9802      	ldr	r0, [sp, #8]
    c7aa:	b02b      	add	sp, #172	; 0xac
    c7ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    c7b0:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
    c7b4:	2400      	movs	r4, #0
    c7b6:	f818 3b01 	ldrb.w	r3, [r8], #1
    c7ba:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    c7be:	eb02 0444 	add.w	r4, r2, r4, lsl #1
    c7c2:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
    c7c6:	2a09      	cmp	r2, #9
    c7c8:	d9f5      	bls.n	c7b6 <_vfiprintf_r+0x252>
    c7ca:	9403      	str	r4, [sp, #12]
    c7cc:	e737      	b.n	c63e <_vfiprintf_r+0xda>
    c7ce:	f047 0780 	orr.w	r7, r7, #128	; 0x80
    c7d2:	f898 3000 	ldrb.w	r3, [r8]
    c7d6:	e730      	b.n	c63a <_vfiprintf_r+0xd6>
    c7d8:	4644      	mov	r4, r8
    c7da:	f814 3b01 	ldrb.w	r3, [r4], #1
    c7de:	2b2a      	cmp	r3, #42	; 0x2a
    c7e0:	f000 84aa 	beq.w	d138 <_vfiprintf_r+0xbd4>
    c7e4:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
    c7e8:	2a09      	cmp	r2, #9
    c7ea:	46a0      	mov	r8, r4
    c7ec:	f04f 0900 	mov.w	r9, #0
    c7f0:	f63f af25 	bhi.w	c63e <_vfiprintf_r+0xda>
    c7f4:	f818 3b01 	ldrb.w	r3, [r8], #1
    c7f8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
    c7fc:	eb02 0949 	add.w	r9, r2, r9, lsl #1
    c800:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
    c804:	2a09      	cmp	r2, #9
    c806:	d9f5      	bls.n	c7f4 <_vfiprintf_r+0x290>
    c808:	e719      	b.n	c63e <_vfiprintf_r+0xda>
    c80a:	f898 3000 	ldrb.w	r3, [r8]
    c80e:	f047 0704 	orr.w	r7, r7, #4
    c812:	e712      	b.n	c63a <_vfiprintf_r+0xd6>
    c814:	f898 3000 	ldrb.w	r3, [r8]
    c818:	2101      	movs	r1, #1
    c81a:	202b      	movs	r0, #43	; 0x2b
    c81c:	e70d      	b.n	c63a <_vfiprintf_r+0xd6>
    c81e:	9a04      	ldr	r2, [sp, #16]
    c820:	f898 3000 	ldrb.w	r3, [r8]
    c824:	f852 4b04 	ldr.w	r4, [r2], #4
    c828:	9403      	str	r4, [sp, #12]
    c82a:	2c00      	cmp	r4, #0
    c82c:	f2c0 8415 	blt.w	d05a <_vfiprintf_r+0xaf6>
    c830:	9204      	str	r2, [sp, #16]
    c832:	e702      	b.n	c63a <_vfiprintf_r+0xd6>
    c834:	f047 0701 	orr.w	r7, r7, #1
    c838:	f898 3000 	ldrb.w	r3, [r8]
    c83c:	e6fd      	b.n	c63a <_vfiprintf_r+0xd6>
    c83e:	f898 3000 	ldrb.w	r3, [r8]
    c842:	2800      	cmp	r0, #0
    c844:	f47f aef9 	bne.w	c63a <_vfiprintf_r+0xd6>
    c848:	2101      	movs	r1, #1
    c84a:	2020      	movs	r0, #32
    c84c:	e6f5      	b.n	c63a <_vfiprintf_r+0xd6>
    c84e:	2900      	cmp	r1, #0
    c850:	f040 845b 	bne.w	d10a <_vfiprintf_r+0xba6>
    c854:	4abe      	ldr	r2, [pc, #760]	; (cb50 <_vfiprintf_r+0x5ec>)
    c856:	9208      	str	r2, [sp, #32]
    c858:	06b8      	lsls	r0, r7, #26
    c85a:	9a04      	ldr	r2, [sp, #16]
    c85c:	f140 8112 	bpl.w	ca84 <_vfiprintf_r+0x520>
    c860:	3207      	adds	r2, #7
    c862:	f022 0207 	bic.w	r2, r2, #7
    c866:	e8f2 4502 	ldrd	r4, r5, [r2], #8
    c86a:	9204      	str	r2, [sp, #16]
    c86c:	07fe      	lsls	r6, r7, #31
    c86e:	f140 8199 	bpl.w	cba4 <_vfiprintf_r+0x640>
    c872:	ea54 0205 	orrs.w	r2, r4, r5
    c876:	f000 8195 	beq.w	cba4 <_vfiprintf_r+0x640>
    c87a:	2230      	movs	r2, #48	; 0x30
    c87c:	f88d 3031 	strb.w	r3, [sp, #49]	; 0x31
    c880:	f047 0702 	orr.w	r7, r7, #2
    c884:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
    c888:	2302      	movs	r3, #2
    c88a:	e12c      	b.n	cae6 <_vfiprintf_r+0x582>
    c88c:	9c04      	ldr	r4, [sp, #16]
    c88e:	f854 6b04 	ldr.w	r6, [r4], #4
    c892:	f04f 0300 	mov.w	r3, #0
    c896:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
    c89a:	2e00      	cmp	r6, #0
    c89c:	f000 8407 	beq.w	d0ae <_vfiprintf_r+0xb4a>
    c8a0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
    c8a4:	f000 83de 	beq.w	d064 <_vfiprintf_r+0xb00>
    c8a8:	464a      	mov	r2, r9
    c8aa:	2100      	movs	r1, #0
    c8ac:	4630      	mov	r0, r6
    c8ae:	f7fe ff8f 	bl	b7d0 <memchr>
    c8b2:	2800      	cmp	r0, #0
    c8b4:	f000 8419 	beq.w	d0ea <_vfiprintf_r+0xb86>
    c8b8:	1b83      	subs	r3, r0, r6
    c8ba:	9301      	str	r3, [sp, #4]
    c8bc:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
    c8c0:	9404      	str	r4, [sp, #16]
    c8c2:	9700      	str	r7, [sp, #0]
    c8c4:	9306      	str	r3, [sp, #24]
    c8c6:	f04f 0900 	mov.w	r9, #0
    c8ca:	e1b0      	b.n	cc2e <_vfiprintf_r+0x6ca>
    c8cc:	f047 0720 	orr.w	r7, r7, #32
    c8d0:	f898 3000 	ldrb.w	r3, [r8]
    c8d4:	e6b1      	b.n	c63a <_vfiprintf_r+0xd6>
    c8d6:	f898 3000 	ldrb.w	r3, [r8]
    c8da:	2b6c      	cmp	r3, #108	; 0x6c
    c8dc:	bf03      	ittte	eq
    c8de:	f898 3001 	ldrbeq.w	r3, [r8, #1]
    c8e2:	f047 0720 	orreq.w	r7, r7, #32
    c8e6:	f108 0801 	addeq.w	r8, r8, #1
    c8ea:	f047 0710 	orrne.w	r7, r7, #16
    c8ee:	e6a4      	b.n	c63a <_vfiprintf_r+0xd6>
    c8f0:	f047 0740 	orr.w	r7, r7, #64	; 0x40
    c8f4:	f898 3000 	ldrb.w	r3, [r8]
    c8f8:	e69f      	b.n	c63a <_vfiprintf_r+0xd6>
    c8fa:	2900      	cmp	r1, #0
    c8fc:	f040 8401 	bne.w	d102 <_vfiprintf_r+0xb9e>
    c900:	06ba      	lsls	r2, r7, #26
    c902:	9b04      	ldr	r3, [sp, #16]
    c904:	f140 80d3 	bpl.w	caae <_vfiprintf_r+0x54a>
    c908:	3307      	adds	r3, #7
    c90a:	f023 0307 	bic.w	r3, r3, #7
    c90e:	4619      	mov	r1, r3
    c910:	e8f1 2302 	ldrd	r2, r3, [r1], #8
    c914:	9104      	str	r1, [sp, #16]
    c916:	4614      	mov	r4, r2
    c918:	461d      	mov	r5, r3
    c91a:	2a00      	cmp	r2, #0
    c91c:	f173 0300 	sbcs.w	r3, r3, #0
    c920:	f2c0 8349 	blt.w	cfb6 <_vfiprintf_r+0xa52>
    c924:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
    c928:	9306      	str	r3, [sp, #24]
    c92a:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
    c92e:	f000 8314 	beq.w	cf5a <_vfiprintf_r+0x9f6>
    c932:	f027 0380 	bic.w	r3, r7, #128	; 0x80
    c936:	9300      	str	r3, [sp, #0]
    c938:	ea54 0305 	orrs.w	r3, r4, r5
    c93c:	f040 830c 	bne.w	cf58 <_vfiprintf_r+0x9f4>
    c940:	f1b9 0f00 	cmp.w	r9, #0
    c944:	f040 83cf 	bne.w	d0e6 <_vfiprintf_r+0xb82>
    c948:	f04f 0900 	mov.w	r9, #0
    c94c:	f8cd 9004 	str.w	r9, [sp, #4]
    c950:	ae1a      	add	r6, sp, #104	; 0x68
    c952:	e16c      	b.n	cc2e <_vfiprintf_r+0x6ca>
    c954:	9b04      	ldr	r3, [sp, #16]
    c956:	2501      	movs	r5, #1
    c958:	f853 2b04 	ldr.w	r2, [r3], #4
    c95c:	f88d 2040 	strb.w	r2, [sp, #64]	; 0x40
    c960:	f04f 0100 	mov.w	r1, #0
    c964:	f88d 102f 	strb.w	r1, [sp, #47]	; 0x2f
    c968:	9304      	str	r3, [sp, #16]
    c96a:	9501      	str	r5, [sp, #4]
    c96c:	ae10      	add	r6, sp, #64	; 0x40
    c96e:	9700      	str	r7, [sp, #0]
    c970:	f04f 0900 	mov.w	r9, #0
    c974:	9b00      	ldr	r3, [sp, #0]
    c976:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
    c97a:	f013 0302 	ands.w	r3, r3, #2
    c97e:	9306      	str	r3, [sp, #24]
    c980:	9b00      	ldr	r3, [sp, #0]
    c982:	bf18      	it	ne
    c984:	3502      	addne	r5, #2
    c986:	1c50      	adds	r0, r2, #1
    c988:	f013 0384 	ands.w	r3, r3, #132	; 0x84
    c98c:	4601      	mov	r1, r0
    c98e:	9307      	str	r3, [sp, #28]
    c990:	d104      	bne.n	c99c <_vfiprintf_r+0x438>
    c992:	9b03      	ldr	r3, [sp, #12]
    c994:	1b5c      	subs	r4, r3, r5
    c996:	2c00      	cmp	r4, #0
    c998:	f300 8225 	bgt.w	cde6 <_vfiprintf_r+0x882>
    c99c:	f89d 402f 	ldrb.w	r4, [sp, #47]	; 0x2f
    c9a0:	f10b 0008 	add.w	r0, fp, #8
    c9a4:	b17c      	cbz	r4, c9c6 <_vfiprintf_r+0x462>
    c9a6:	f10c 0c01 	add.w	ip, ip, #1
    c9aa:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
    c9ae:	2201      	movs	r2, #1
    c9b0:	2907      	cmp	r1, #7
    c9b2:	e9cd 1c0e 	strd	r1, ip, [sp, #56]	; 0x38
    c9b6:	e9cb 4200 	strd	r4, r2, [fp]
    c9ba:	f300 81f4 	bgt.w	cda6 <_vfiprintf_r+0x842>
    c9be:	460a      	mov	r2, r1
    c9c0:	4683      	mov	fp, r0
    c9c2:	3101      	adds	r1, #1
    c9c4:	3008      	adds	r0, #8
    c9c6:	9b06      	ldr	r3, [sp, #24]
    c9c8:	b1e3      	cbz	r3, ca04 <_vfiprintf_r+0x4a0>
    c9ca:	f10c 0c02 	add.w	ip, ip, #2
    c9ce:	aa0c      	add	r2, sp, #48	; 0x30
    c9d0:	2302      	movs	r3, #2
    c9d2:	2907      	cmp	r1, #7
    c9d4:	e9cd 1c0e 	strd	r1, ip, [sp, #56]	; 0x38
    c9d8:	e9cb 2300 	strd	r2, r3, [fp]
    c9dc:	f340 81fd 	ble.w	cdda <_vfiprintf_r+0x876>
    c9e0:	f1bc 0f00 	cmp.w	ip, #0
    c9e4:	f000 82fd 	beq.w	cfe2 <_vfiprintf_r+0xa7e>
    c9e8:	aa0d      	add	r2, sp, #52	; 0x34
    c9ea:	4651      	mov	r1, sl
    c9ec:	9805      	ldr	r0, [sp, #20]
    c9ee:	f7ff fd75 	bl	c4dc <__sprint_r.part.0>
    c9f2:	2800      	cmp	r0, #0
    c9f4:	f47f aed3 	bne.w	c79e <_vfiprintf_r+0x23a>
    c9f8:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
    c9fc:	a81c      	add	r0, sp, #112	; 0x70
    c9fe:	1c51      	adds	r1, r2, #1
    ca00:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    ca04:	9b07      	ldr	r3, [sp, #28]
    ca06:	2b80      	cmp	r3, #128	; 0x80
    ca08:	f000 811c 	beq.w	cc44 <_vfiprintf_r+0x6e0>
    ca0c:	9b01      	ldr	r3, [sp, #4]
    ca0e:	eba9 0703 	sub.w	r7, r9, r3
    ca12:	2f00      	cmp	r7, #0
    ca14:	f300 8173 	bgt.w	ccfe <_vfiprintf_r+0x79a>
    ca18:	9a01      	ldr	r2, [sp, #4]
    ca1a:	910e      	str	r1, [sp, #56]	; 0x38
    ca1c:	4613      	mov	r3, r2
    ca1e:	4463      	add	r3, ip
    ca20:	2907      	cmp	r1, #7
    ca22:	930f      	str	r3, [sp, #60]	; 0x3c
    ca24:	e9cb 6200 	strd	r6, r2, [fp]
    ca28:	dd0c      	ble.n	ca44 <_vfiprintf_r+0x4e0>
    ca2a:	2b00      	cmp	r3, #0
    ca2c:	f000 8224 	beq.w	ce78 <_vfiprintf_r+0x914>
    ca30:	aa0d      	add	r2, sp, #52	; 0x34
    ca32:	4651      	mov	r1, sl
    ca34:	9805      	ldr	r0, [sp, #20]
    ca36:	f7ff fd51 	bl	c4dc <__sprint_r.part.0>
    ca3a:	2800      	cmp	r0, #0
    ca3c:	f47f aeaf 	bne.w	c79e <_vfiprintf_r+0x23a>
    ca40:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    ca42:	a81a      	add	r0, sp, #104	; 0x68
    ca44:	9a00      	ldr	r2, [sp, #0]
    ca46:	0752      	lsls	r2, r2, #29
    ca48:	d504      	bpl.n	ca54 <_vfiprintf_r+0x4f0>
    ca4a:	9a03      	ldr	r2, [sp, #12]
    ca4c:	1b54      	subs	r4, r2, r5
    ca4e:	2c00      	cmp	r4, #0
    ca50:	f300 821b 	bgt.w	ce8a <_vfiprintf_r+0x926>
    ca54:	e9dd 2102 	ldrd	r2, r1, [sp, #8]
    ca58:	42a9      	cmp	r1, r5
    ca5a:	bfac      	ite	ge
    ca5c:	1852      	addge	r2, r2, r1
    ca5e:	1952      	addlt	r2, r2, r5
    ca60:	9202      	str	r2, [sp, #8]
    ca62:	2b00      	cmp	r3, #0
    ca64:	f040 8191 	bne.w	cd8a <_vfiprintf_r+0x826>
    ca68:	2300      	movs	r3, #0
    ca6a:	930e      	str	r3, [sp, #56]	; 0x38
    ca6c:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    ca70:	e5aa      	b.n	c5c8 <_vfiprintf_r+0x64>
    ca72:	2900      	cmp	r1, #0
    ca74:	f040 8352 	bne.w	d11c <_vfiprintf_r+0xbb8>
    ca78:	4a36      	ldr	r2, [pc, #216]	; (cb54 <_vfiprintf_r+0x5f0>)
    ca7a:	9208      	str	r2, [sp, #32]
    ca7c:	06b8      	lsls	r0, r7, #26
    ca7e:	9a04      	ldr	r2, [sp, #16]
    ca80:	f53f aeee 	bmi.w	c860 <_vfiprintf_r+0x2fc>
    ca84:	f852 4b04 	ldr.w	r4, [r2], #4
    ca88:	9204      	str	r2, [sp, #16]
    ca8a:	06f9      	lsls	r1, r7, #27
    ca8c:	f100 829c 	bmi.w	cfc8 <_vfiprintf_r+0xa64>
    ca90:	067a      	lsls	r2, r7, #25
    ca92:	f140 8299 	bpl.w	cfc8 <_vfiprintf_r+0xa64>
    ca96:	b2a4      	uxth	r4, r4
    ca98:	2500      	movs	r5, #0
    ca9a:	e6e7      	b.n	c86c <_vfiprintf_r+0x308>
    ca9c:	2900      	cmp	r1, #0
    ca9e:	f040 832d 	bne.w	d0fc <_vfiprintf_r+0xb98>
    caa2:	f047 0710 	orr.w	r7, r7, #16
    caa6:	06ba      	lsls	r2, r7, #26
    caa8:	9b04      	ldr	r3, [sp, #16]
    caaa:	f53f af2d 	bmi.w	c908 <_vfiprintf_r+0x3a4>
    caae:	f853 4b04 	ldr.w	r4, [r3], #4
    cab2:	9304      	str	r3, [sp, #16]
    cab4:	06fe      	lsls	r6, r7, #27
    cab6:	f100 8276 	bmi.w	cfa6 <_vfiprintf_r+0xa42>
    caba:	067d      	lsls	r5, r7, #25
    cabc:	f140 8273 	bpl.w	cfa6 <_vfiprintf_r+0xa42>
    cac0:	b224      	sxth	r4, r4
    cac2:	17e5      	asrs	r5, r4, #31
    cac4:	4622      	mov	r2, r4
    cac6:	462b      	mov	r3, r5
    cac8:	e727      	b.n	c91a <_vfiprintf_r+0x3b6>
    caca:	9b04      	ldr	r3, [sp, #16]
    cacc:	f853 4b04 	ldr.w	r4, [r3], #4
    cad0:	9304      	str	r3, [sp, #16]
    cad2:	f647 0230 	movw	r2, #30768	; 0x7830
    cad6:	4b1e      	ldr	r3, [pc, #120]	; (cb50 <_vfiprintf_r+0x5ec>)
    cad8:	9308      	str	r3, [sp, #32]
    cada:	f8ad 2030 	strh.w	r2, [sp, #48]	; 0x30
    cade:	f047 0702 	orr.w	r7, r7, #2
    cae2:	2500      	movs	r5, #0
    cae4:	2302      	movs	r3, #2
    cae6:	f04f 0200 	mov.w	r2, #0
    caea:	f88d 202f 	strb.w	r2, [sp, #47]	; 0x2f
    caee:	2200      	movs	r2, #0
    caf0:	9206      	str	r2, [sp, #24]
    caf2:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
    caf6:	d058      	beq.n	cbaa <_vfiprintf_r+0x646>
    caf8:	f027 0280 	bic.w	r2, r7, #128	; 0x80
    cafc:	9200      	str	r2, [sp, #0]
    cafe:	ea54 0205 	orrs.w	r2, r4, r5
    cb02:	d151      	bne.n	cba8 <_vfiprintf_r+0x644>
    cb04:	f1b9 0f00 	cmp.w	r9, #0
    cb08:	f040 820a 	bne.w	cf20 <_vfiprintf_r+0x9bc>
    cb0c:	2b00      	cmp	r3, #0
    cb0e:	f47f af1b 	bne.w	c948 <_vfiprintf_r+0x3e4>
    cb12:	f017 0301 	ands.w	r3, r7, #1
    cb16:	9301      	str	r3, [sp, #4]
    cb18:	f000 827d 	beq.w	d016 <_vfiprintf_r+0xab2>
    cb1c:	2330      	movs	r3, #48	; 0x30
    cb1e:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
    cb22:	f10d 0667 	add.w	r6, sp, #103	; 0x67
    cb26:	e082      	b.n	cc2e <_vfiprintf_r+0x6ca>
    cb28:	2900      	cmp	r1, #0
    cb2a:	f040 82f2 	bne.w	d112 <_vfiprintf_r+0xbae>
    cb2e:	9a04      	ldr	r2, [sp, #16]
    cb30:	06bc      	lsls	r4, r7, #26
    cb32:	f852 3b04 	ldr.w	r3, [r2], #4
    cb36:	9204      	str	r2, [sp, #16]
    cb38:	f100 8282 	bmi.w	d040 <_vfiprintf_r+0xadc>
    cb3c:	06f8      	lsls	r0, r7, #27
    cb3e:	f100 82aa 	bmi.w	d096 <_vfiprintf_r+0xb32>
    cb42:	0679      	lsls	r1, r7, #25
    cb44:	f140 82a7 	bpl.w	d096 <_vfiprintf_r+0xb32>
    cb48:	9a02      	ldr	r2, [sp, #8]
    cb4a:	801a      	strh	r2, [r3, #0]
    cb4c:	e53c      	b.n	c5c8 <_vfiprintf_r+0x64>
    cb4e:	bf00      	nop
    cb50:	0000f338 	.word	0x0000f338
    cb54:	0000f324 	.word	0x0000f324
    cb58:	f853 4b04 	ldr.w	r4, [r3], #4
    cb5c:	9304      	str	r3, [sp, #16]
    cb5e:	06fe      	lsls	r6, r7, #27
    cb60:	f140 8268 	bpl.w	d034 <_vfiprintf_r+0xad0>
    cb64:	2500      	movs	r5, #0
    cb66:	2301      	movs	r3, #1
    cb68:	e7bd      	b.n	cae6 <_vfiprintf_r+0x582>
    cb6a:	9a04      	ldr	r2, [sp, #16]
    cb6c:	f852 4b04 	ldr.w	r4, [r2], #4
    cb70:	9204      	str	r2, [sp, #16]
    cb72:	f017 0210 	ands.w	r2, r7, #16
    cb76:	f000 8256 	beq.w	d026 <_vfiprintf_r+0xac2>
    cb7a:	2500      	movs	r5, #0
    cb7c:	e7b3      	b.n	cae6 <_vfiprintf_r+0x582>
    cb7e:	f7fe f939 	bl	adf4 <__sinit>
    cb82:	e4fc      	b.n	c57e <_vfiprintf_r+0x1a>
    cb84:	2900      	cmp	r1, #0
    cb86:	f040 82ab 	bne.w	d0e0 <_vfiprintf_r+0xb7c>
    cb8a:	2b00      	cmp	r3, #0
    cb8c:	f43f ae00 	beq.w	c790 <_vfiprintf_r+0x22c>
    cb90:	2501      	movs	r5, #1
    cb92:	f88d 3040 	strb.w	r3, [sp, #64]	; 0x40
    cb96:	f04f 0300 	mov.w	r3, #0
    cb9a:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
    cb9e:	9501      	str	r5, [sp, #4]
    cba0:	ae10      	add	r6, sp, #64	; 0x40
    cba2:	e6e4      	b.n	c96e <_vfiprintf_r+0x40a>
    cba4:	2302      	movs	r3, #2
    cba6:	e79e      	b.n	cae6 <_vfiprintf_r+0x582>
    cba8:	9f00      	ldr	r7, [sp, #0]
    cbaa:	2b01      	cmp	r3, #1
    cbac:	f000 81d5 	beq.w	cf5a <_vfiprintf_r+0x9f6>
    cbb0:	2b02      	cmp	r3, #2
    cbb2:	f000 81bc 	beq.w	cf2e <_vfiprintf_r+0x9ca>
    cbb6:	a91a      	add	r1, sp, #104	; 0x68
    cbb8:	e000      	b.n	cbbc <_vfiprintf_r+0x658>
    cbba:	4631      	mov	r1, r6
    cbbc:	08e2      	lsrs	r2, r4, #3
    cbbe:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
    cbc2:	08e8      	lsrs	r0, r5, #3
    cbc4:	f004 0307 	and.w	r3, r4, #7
    cbc8:	4605      	mov	r5, r0
    cbca:	4614      	mov	r4, r2
    cbcc:	3330      	adds	r3, #48	; 0x30
    cbce:	ea54 0205 	orrs.w	r2, r4, r5
    cbd2:	f801 3c01 	strb.w	r3, [r1, #-1]
    cbd6:	f101 36ff 	add.w	r6, r1, #4294967295	; 0xffffffff
    cbda:	d1ee      	bne.n	cbba <_vfiprintf_r+0x656>
    cbdc:	07f8      	lsls	r0, r7, #31
    cbde:	d522      	bpl.n	cc26 <_vfiprintf_r+0x6c2>
    cbe0:	2b30      	cmp	r3, #48	; 0x30
    cbe2:	d020      	beq.n	cc26 <_vfiprintf_r+0x6c2>
    cbe4:	2330      	movs	r3, #48	; 0x30
    cbe6:	3902      	subs	r1, #2
    cbe8:	f806 3c01 	strb.w	r3, [r6, #-1]
    cbec:	ab1a      	add	r3, sp, #104	; 0x68
    cbee:	1a5b      	subs	r3, r3, r1
    cbf0:	9700      	str	r7, [sp, #0]
    cbf2:	9301      	str	r3, [sp, #4]
    cbf4:	460e      	mov	r6, r1
    cbf6:	e01a      	b.n	cc2e <_vfiprintf_r+0x6ca>
    cbf8:	ae1a      	add	r6, sp, #104	; 0x68
    cbfa:	e001      	b.n	cc00 <_vfiprintf_r+0x69c>
    cbfc:	4604      	mov	r4, r0
    cbfe:	460d      	mov	r5, r1
    cc00:	220a      	movs	r2, #10
    cc02:	2300      	movs	r3, #0
    cc04:	4620      	mov	r0, r4
    cc06:	4629      	mov	r1, r5
    cc08:	f002 f998 	bl	ef3c <__aeabi_uldivmod>
    cc0c:	3230      	adds	r2, #48	; 0x30
    cc0e:	f806 2d01 	strb.w	r2, [r6, #-1]!
    cc12:	2300      	movs	r3, #0
    cc14:	220a      	movs	r2, #10
    cc16:	4620      	mov	r0, r4
    cc18:	4629      	mov	r1, r5
    cc1a:	f002 f98f 	bl	ef3c <__aeabi_uldivmod>
    cc1e:	2d00      	cmp	r5, #0
    cc20:	bf08      	it	eq
    cc22:	2c0a      	cmpeq	r4, #10
    cc24:	d2ea      	bcs.n	cbfc <_vfiprintf_r+0x698>
    cc26:	ab1a      	add	r3, sp, #104	; 0x68
    cc28:	1b9b      	subs	r3, r3, r6
    cc2a:	9700      	str	r7, [sp, #0]
    cc2c:	9301      	str	r3, [sp, #4]
    cc2e:	9b01      	ldr	r3, [sp, #4]
    cc30:	454b      	cmp	r3, r9
    cc32:	bfb8      	it	lt
    cc34:	464b      	movlt	r3, r9
    cc36:	461d      	mov	r5, r3
    cc38:	9b06      	ldr	r3, [sp, #24]
    cc3a:	2b00      	cmp	r3, #0
    cc3c:	f43f ae9a 	beq.w	c974 <_vfiprintf_r+0x410>
    cc40:	3501      	adds	r5, #1
    cc42:	e697      	b.n	c974 <_vfiprintf_r+0x410>
    cc44:	9b03      	ldr	r3, [sp, #12]
    cc46:	1b5f      	subs	r7, r3, r5
    cc48:	2f00      	cmp	r7, #0
    cc4a:	f77f aedf 	ble.w	ca0c <_vfiprintf_r+0x4a8>
    cc4e:	2f10      	cmp	r7, #16
    cc50:	4cbf      	ldr	r4, [pc, #764]	; (cf50 <_vfiprintf_r+0x9ec>)
    cc52:	f340 8269 	ble.w	d128 <_vfiprintf_r+0xbc4>
    cc56:	4663      	mov	r3, ip
    cc58:	46dc      	mov	ip, fp
    cc5a:	46ab      	mov	fp, r5
    cc5c:	4625      	mov	r5, r4
    cc5e:	9c05      	ldr	r4, [sp, #20]
    cc60:	e006      	b.n	cc70 <_vfiprintf_r+0x70c>
    cc62:	1c90      	adds	r0, r2, #2
    cc64:	f10c 0c08 	add.w	ip, ip, #8
    cc68:	460a      	mov	r2, r1
    cc6a:	3f10      	subs	r7, #16
    cc6c:	2f10      	cmp	r7, #16
    cc6e:	dd1e      	ble.n	ccae <_vfiprintf_r+0x74a>
    cc70:	1c51      	adds	r1, r2, #1
    cc72:	3310      	adds	r3, #16
    cc74:	2010      	movs	r0, #16
    cc76:	2907      	cmp	r1, #7
    cc78:	930f      	str	r3, [sp, #60]	; 0x3c
    cc7a:	f8cc 5000 	str.w	r5, [ip]
    cc7e:	f8cc 0004 	str.w	r0, [ip, #4]
    cc82:	910e      	str	r1, [sp, #56]	; 0x38
    cc84:	dded      	ble.n	cc62 <_vfiprintf_r+0x6fe>
    cc86:	aa0d      	add	r2, sp, #52	; 0x34
    cc88:	4651      	mov	r1, sl
    cc8a:	4620      	mov	r0, r4
    cc8c:	2b00      	cmp	r3, #0
    cc8e:	f000 8085 	beq.w	cd9c <_vfiprintf_r+0x838>
    cc92:	f7ff fc23 	bl	c4dc <__sprint_r.part.0>
    cc96:	2800      	cmp	r0, #0
    cc98:	f47f ad81 	bne.w	c79e <_vfiprintf_r+0x23a>
    cc9c:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
    cca0:	3f10      	subs	r7, #16
    cca2:	2f10      	cmp	r7, #16
    cca4:	f102 0001 	add.w	r0, r2, #1
    cca8:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
    ccac:	dce0      	bgt.n	cc70 <_vfiprintf_r+0x70c>
    ccae:	462c      	mov	r4, r5
    ccb0:	465d      	mov	r5, fp
    ccb2:	46e3      	mov	fp, ip
    ccb4:	469c      	mov	ip, r3
    ccb6:	f10b 0308 	add.w	r3, fp, #8
    ccba:	44bc      	add	ip, r7
    ccbc:	2807      	cmp	r0, #7
    ccbe:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    ccc2:	e9cb 4700 	strd	r4, r7, [fp]
    ccc6:	900e      	str	r0, [sp, #56]	; 0x38
    ccc8:	f340 81a7 	ble.w	d01a <_vfiprintf_r+0xab6>
    cccc:	f1bc 0f00 	cmp.w	ip, #0
    ccd0:	f000 81f7 	beq.w	d0c2 <_vfiprintf_r+0xb5e>
    ccd4:	aa0d      	add	r2, sp, #52	; 0x34
    ccd6:	4651      	mov	r1, sl
    ccd8:	9805      	ldr	r0, [sp, #20]
    ccda:	f7ff fbff 	bl	c4dc <__sprint_r.part.0>
    ccde:	2800      	cmp	r0, #0
    cce0:	f47f ad5d 	bne.w	c79e <_vfiprintf_r+0x23a>
    cce4:	9b01      	ldr	r3, [sp, #4]
    cce6:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
    ccea:	eba9 0703 	sub.w	r7, r9, r3
    ccee:	2f00      	cmp	r7, #0
    ccf0:	f102 0101 	add.w	r1, r2, #1
    ccf4:	a81c      	add	r0, sp, #112	; 0x70
    ccf6:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    ccfa:	f77f ae8d 	ble.w	ca18 <_vfiprintf_r+0x4b4>
    ccfe:	2f10      	cmp	r7, #16
    cd00:	4c93      	ldr	r4, [pc, #588]	; (cf50 <_vfiprintf_r+0x9ec>)
    cd02:	f340 81dc 	ble.w	d0be <_vfiprintf_r+0xb5a>
    cd06:	4663      	mov	r3, ip
    cd08:	f04f 0910 	mov.w	r9, #16
    cd0c:	46dc      	mov	ip, fp
    cd0e:	46ab      	mov	fp, r5
    cd10:	4625      	mov	r5, r4
    cd12:	9c05      	ldr	r4, [sp, #20]
    cd14:	e006      	b.n	cd24 <_vfiprintf_r+0x7c0>
    cd16:	1c91      	adds	r1, r2, #2
    cd18:	f10c 0c08 	add.w	ip, ip, #8
    cd1c:	4602      	mov	r2, r0
    cd1e:	3f10      	subs	r7, #16
    cd20:	2f10      	cmp	r7, #16
    cd22:	dd19      	ble.n	cd58 <_vfiprintf_r+0x7f4>
    cd24:	1c50      	adds	r0, r2, #1
    cd26:	3310      	adds	r3, #16
    cd28:	2807      	cmp	r0, #7
    cd2a:	930f      	str	r3, [sp, #60]	; 0x3c
    cd2c:	e9cc 5900 	strd	r5, r9, [ip]
    cd30:	900e      	str	r0, [sp, #56]	; 0x38
    cd32:	ddf0      	ble.n	cd16 <_vfiprintf_r+0x7b2>
    cd34:	aa0d      	add	r2, sp, #52	; 0x34
    cd36:	4651      	mov	r1, sl
    cd38:	4620      	mov	r0, r4
    cd3a:	b30b      	cbz	r3, cd80 <_vfiprintf_r+0x81c>
    cd3c:	f7ff fbce 	bl	c4dc <__sprint_r.part.0>
    cd40:	2800      	cmp	r0, #0
    cd42:	f47f ad2c 	bne.w	c79e <_vfiprintf_r+0x23a>
    cd46:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
    cd4a:	3f10      	subs	r7, #16
    cd4c:	2f10      	cmp	r7, #16
    cd4e:	f102 0101 	add.w	r1, r2, #1
    cd52:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
    cd56:	dce5      	bgt.n	cd24 <_vfiprintf_r+0x7c0>
    cd58:	462c      	mov	r4, r5
    cd5a:	465d      	mov	r5, fp
    cd5c:	46e3      	mov	fp, ip
    cd5e:	469c      	mov	ip, r3
    cd60:	f10b 0308 	add.w	r3, fp, #8
    cd64:	44bc      	add	ip, r7
    cd66:	2907      	cmp	r1, #7
    cd68:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    cd6c:	e9cb 4700 	strd	r4, r7, [fp]
    cd70:	910e      	str	r1, [sp, #56]	; 0x38
    cd72:	f300 8100 	bgt.w	cf76 <_vfiprintf_r+0xa12>
    cd76:	3101      	adds	r1, #1
    cd78:	f103 0008 	add.w	r0, r3, #8
    cd7c:	469b      	mov	fp, r3
    cd7e:	e64b      	b.n	ca18 <_vfiprintf_r+0x4b4>
    cd80:	2101      	movs	r1, #1
    cd82:	461a      	mov	r2, r3
    cd84:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
    cd88:	e7c9      	b.n	cd1e <_vfiprintf_r+0x7ba>
    cd8a:	aa0d      	add	r2, sp, #52	; 0x34
    cd8c:	4651      	mov	r1, sl
    cd8e:	9805      	ldr	r0, [sp, #20]
    cd90:	f7ff fba4 	bl	c4dc <__sprint_r.part.0>
    cd94:	2800      	cmp	r0, #0
    cd96:	f43f ae67 	beq.w	ca68 <_vfiprintf_r+0x504>
    cd9a:	e500      	b.n	c79e <_vfiprintf_r+0x23a>
    cd9c:	2001      	movs	r0, #1
    cd9e:	461a      	mov	r2, r3
    cda0:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
    cda4:	e761      	b.n	cc6a <_vfiprintf_r+0x706>
    cda6:	f1bc 0f00 	cmp.w	ip, #0
    cdaa:	f000 810f 	beq.w	cfcc <_vfiprintf_r+0xa68>
    cdae:	aa0d      	add	r2, sp, #52	; 0x34
    cdb0:	4651      	mov	r1, sl
    cdb2:	9805      	ldr	r0, [sp, #20]
    cdb4:	f7ff fb92 	bl	c4dc <__sprint_r.part.0>
    cdb8:	2800      	cmp	r0, #0
    cdba:	f47f acf0 	bne.w	c79e <_vfiprintf_r+0x23a>
    cdbe:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
    cdc2:	a81c      	add	r0, sp, #112	; 0x70
    cdc4:	1c51      	adds	r1, r2, #1
    cdc6:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    cdca:	e5fc      	b.n	c9c6 <_vfiprintf_r+0x462>
    cdcc:	2302      	movs	r3, #2
    cdce:	aa0c      	add	r2, sp, #48	; 0x30
    cdd0:	e9cd 231a 	strd	r2, r3, [sp, #104]	; 0x68
    cdd4:	469c      	mov	ip, r3
    cdd6:	a81c      	add	r0, sp, #112	; 0x70
    cdd8:	2101      	movs	r1, #1
    cdda:	4683      	mov	fp, r0
    cddc:	460a      	mov	r2, r1
    cdde:	1c51      	adds	r1, r2, #1
    cde0:	f10b 0008 	add.w	r0, fp, #8
    cde4:	e60e      	b.n	ca04 <_vfiprintf_r+0x4a0>
    cde6:	2c10      	cmp	r4, #16
    cde8:	4f5a      	ldr	r7, [pc, #360]	; (cf54 <_vfiprintf_r+0x9f0>)
    cdea:	f340 8195 	ble.w	d118 <_vfiprintf_r+0xbb4>
    cdee:	9609      	str	r6, [sp, #36]	; 0x24
    cdf0:	4659      	mov	r1, fp
    cdf2:	2310      	movs	r3, #16
    cdf4:	46c3      	mov	fp, r8
    cdf6:	4666      	mov	r6, ip
    cdf8:	46a8      	mov	r8, r5
    cdfa:	9d05      	ldr	r5, [sp, #20]
    cdfc:	e007      	b.n	ce0e <_vfiprintf_r+0x8aa>
    cdfe:	f102 0e02 	add.w	lr, r2, #2
    ce02:	3108      	adds	r1, #8
    ce04:	4602      	mov	r2, r0
    ce06:	3c10      	subs	r4, #16
    ce08:	2c10      	cmp	r4, #16
    ce0a:	dd1a      	ble.n	ce42 <_vfiprintf_r+0x8de>
    ce0c:	1c50      	adds	r0, r2, #1
    ce0e:	3610      	adds	r6, #16
    ce10:	2807      	cmp	r0, #7
    ce12:	960f      	str	r6, [sp, #60]	; 0x3c
    ce14:	e9c1 7300 	strd	r7, r3, [r1]
    ce18:	900e      	str	r0, [sp, #56]	; 0x38
    ce1a:	ddf0      	ble.n	cdfe <_vfiprintf_r+0x89a>
    ce1c:	aa0d      	add	r2, sp, #52	; 0x34
    ce1e:	4651      	mov	r1, sl
    ce20:	4628      	mov	r0, r5
    ce22:	b326      	cbz	r6, ce6e <_vfiprintf_r+0x90a>
    ce24:	f7ff fb5a 	bl	c4dc <__sprint_r.part.0>
    ce28:	2800      	cmp	r0, #0
    ce2a:	f47f acb8 	bne.w	c79e <_vfiprintf_r+0x23a>
    ce2e:	e9dd 260e 	ldrd	r2, r6, [sp, #56]	; 0x38
    ce32:	3c10      	subs	r4, #16
    ce34:	2c10      	cmp	r4, #16
    ce36:	f102 0e01 	add.w	lr, r2, #1
    ce3a:	a91a      	add	r1, sp, #104	; 0x68
    ce3c:	f04f 0310 	mov.w	r3, #16
    ce40:	dce4      	bgt.n	ce0c <_vfiprintf_r+0x8a8>
    ce42:	46b4      	mov	ip, r6
    ce44:	9e09      	ldr	r6, [sp, #36]	; 0x24
    ce46:	4645      	mov	r5, r8
    ce48:	46d8      	mov	r8, fp
    ce4a:	468b      	mov	fp, r1
    ce4c:	44a4      	add	ip, r4
    ce4e:	f1be 0f07 	cmp.w	lr, #7
    ce52:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
    ce56:	e9cb 7400 	strd	r7, r4, [fp]
    ce5a:	f8cd e038 	str.w	lr, [sp, #56]	; 0x38
    ce5e:	f300 80c6 	bgt.w	cfee <_vfiprintf_r+0xa8a>
    ce62:	f10b 0b08 	add.w	fp, fp, #8
    ce66:	f10e 0101 	add.w	r1, lr, #1
    ce6a:	4672      	mov	r2, lr
    ce6c:	e596      	b.n	c99c <_vfiprintf_r+0x438>
    ce6e:	4632      	mov	r2, r6
    ce70:	f04f 0e01 	mov.w	lr, #1
    ce74:	a91a      	add	r1, sp, #104	; 0x68
    ce76:	e7c6      	b.n	ce06 <_vfiprintf_r+0x8a2>
    ce78:	9a00      	ldr	r2, [sp, #0]
    ce7a:	930e      	str	r3, [sp, #56]	; 0x38
    ce7c:	0751      	lsls	r1, r2, #29
    ce7e:	d547      	bpl.n	cf10 <_vfiprintf_r+0x9ac>
    ce80:	9a03      	ldr	r2, [sp, #12]
    ce82:	1b54      	subs	r4, r2, r5
    ce84:	2c00      	cmp	r4, #0
    ce86:	dd43      	ble.n	cf10 <_vfiprintf_r+0x9ac>
    ce88:	a81a      	add	r0, sp, #104	; 0x68
    ce8a:	2c10      	cmp	r4, #16
    ce8c:	990e      	ldr	r1, [sp, #56]	; 0x38
    ce8e:	4f31      	ldr	r7, [pc, #196]	; (cf54 <_vfiprintf_r+0x9f0>)
    ce90:	f340 8147 	ble.w	d122 <_vfiprintf_r+0xbbe>
    ce94:	2610      	movs	r6, #16
    ce96:	f8dd 9014 	ldr.w	r9, [sp, #20]
    ce9a:	e006      	b.n	ceaa <_vfiprintf_r+0x946>
    ce9c:	f101 0c02 	add.w	ip, r1, #2
    cea0:	3008      	adds	r0, #8
    cea2:	4611      	mov	r1, r2
    cea4:	3c10      	subs	r4, #16
    cea6:	2c10      	cmp	r4, #16
    cea8:	dd18      	ble.n	cedc <_vfiprintf_r+0x978>
    ceaa:	1c4a      	adds	r2, r1, #1
    ceac:	3310      	adds	r3, #16
    ceae:	2a07      	cmp	r2, #7
    ceb0:	930f      	str	r3, [sp, #60]	; 0x3c
    ceb2:	e9c0 7600 	strd	r7, r6, [r0]
    ceb6:	920e      	str	r2, [sp, #56]	; 0x38
    ceb8:	ddf0      	ble.n	ce9c <_vfiprintf_r+0x938>
    ceba:	aa0d      	add	r2, sp, #52	; 0x34
    cebc:	4651      	mov	r1, sl
    cebe:	4648      	mov	r0, r9
    cec0:	b30b      	cbz	r3, cf06 <_vfiprintf_r+0x9a2>
    cec2:	f7ff fb0b 	bl	c4dc <__sprint_r.part.0>
    cec6:	2800      	cmp	r0, #0
    cec8:	f47f ac69 	bne.w	c79e <_vfiprintf_r+0x23a>
    cecc:	e9dd 130e 	ldrd	r1, r3, [sp, #56]	; 0x38
    ced0:	3c10      	subs	r4, #16
    ced2:	2c10      	cmp	r4, #16
    ced4:	f101 0c01 	add.w	ip, r1, #1
    ced8:	a81a      	add	r0, sp, #104	; 0x68
    ceda:	dce6      	bgt.n	ceaa <_vfiprintf_r+0x946>
    cedc:	4423      	add	r3, r4
    cede:	f1bc 0f07 	cmp.w	ip, #7
    cee2:	930f      	str	r3, [sp, #60]	; 0x3c
    cee4:	e9c0 7400 	strd	r7, r4, [r0]
    cee8:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
    ceec:	f77f adb2 	ble.w	ca54 <_vfiprintf_r+0x4f0>
    cef0:	b173      	cbz	r3, cf10 <_vfiprintf_r+0x9ac>
    cef2:	aa0d      	add	r2, sp, #52	; 0x34
    cef4:	4651      	mov	r1, sl
    cef6:	9805      	ldr	r0, [sp, #20]
    cef8:	f7ff faf0 	bl	c4dc <__sprint_r.part.0>
    cefc:	2800      	cmp	r0, #0
    cefe:	f47f ac4e 	bne.w	c79e <_vfiprintf_r+0x23a>
    cf02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    cf04:	e5a6      	b.n	ca54 <_vfiprintf_r+0x4f0>
    cf06:	f04f 0c01 	mov.w	ip, #1
    cf0a:	4619      	mov	r1, r3
    cf0c:	a81a      	add	r0, sp, #104	; 0x68
    cf0e:	e7c9      	b.n	cea4 <_vfiprintf_r+0x940>
    cf10:	e9dd 3202 	ldrd	r3, r2, [sp, #8]
    cf14:	42aa      	cmp	r2, r5
    cf16:	bfac      	ite	ge
    cf18:	189b      	addge	r3, r3, r2
    cf1a:	195b      	addlt	r3, r3, r5
    cf1c:	9302      	str	r3, [sp, #8]
    cf1e:	e5a3      	b.n	ca68 <_vfiprintf_r+0x504>
    cf20:	2b01      	cmp	r3, #1
    cf22:	f000 80e0 	beq.w	d0e6 <_vfiprintf_r+0xb82>
    cf26:	2b02      	cmp	r3, #2
    cf28:	9f00      	ldr	r7, [sp, #0]
    cf2a:	f47f ae44 	bne.w	cbb6 <_vfiprintf_r+0x652>
    cf2e:	9808      	ldr	r0, [sp, #32]
    cf30:	ae1a      	add	r6, sp, #104	; 0x68
    cf32:	0923      	lsrs	r3, r4, #4
    cf34:	f004 010f 	and.w	r1, r4, #15
    cf38:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
    cf3c:	092a      	lsrs	r2, r5, #4
    cf3e:	461c      	mov	r4, r3
    cf40:	4615      	mov	r5, r2
    cf42:	5c43      	ldrb	r3, [r0, r1]
    cf44:	f806 3d01 	strb.w	r3, [r6, #-1]!
    cf48:	ea54 0305 	orrs.w	r3, r4, r5
    cf4c:	d1f1      	bne.n	cf32 <_vfiprintf_r+0x9ce>
    cf4e:	e66a      	b.n	cc26 <_vfiprintf_r+0x6c2>
    cf50:	0000f51c 	.word	0x0000f51c
    cf54:	0000f50c 	.word	0x0000f50c
    cf58:	9f00      	ldr	r7, [sp, #0]
    cf5a:	2d00      	cmp	r5, #0
    cf5c:	bf08      	it	eq
    cf5e:	2c0a      	cmpeq	r4, #10
    cf60:	f4bf ae4a 	bcs.w	cbf8 <_vfiprintf_r+0x694>
    cf64:	3430      	adds	r4, #48	; 0x30
    cf66:	2301      	movs	r3, #1
    cf68:	f88d 4067 	strb.w	r4, [sp, #103]	; 0x67
    cf6c:	9700      	str	r7, [sp, #0]
    cf6e:	9301      	str	r3, [sp, #4]
    cf70:	f10d 0667 	add.w	r6, sp, #103	; 0x67
    cf74:	e65b      	b.n	cc2e <_vfiprintf_r+0x6ca>
    cf76:	f1bc 0f00 	cmp.w	ip, #0
    cf7a:	f000 8090 	beq.w	d09e <_vfiprintf_r+0xb3a>
    cf7e:	aa0d      	add	r2, sp, #52	; 0x34
    cf80:	4651      	mov	r1, sl
    cf82:	9805      	ldr	r0, [sp, #20]
    cf84:	f7ff faaa 	bl	c4dc <__sprint_r.part.0>
    cf88:	2800      	cmp	r0, #0
    cf8a:	f47f ac08 	bne.w	c79e <_vfiprintf_r+0x23a>
    cf8e:	e9dd 1c0e 	ldrd	r1, ip, [sp, #56]	; 0x38
    cf92:	a81c      	add	r0, sp, #112	; 0x70
    cf94:	3101      	adds	r1, #1
    cf96:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    cf9a:	e53d      	b.n	ca18 <_vfiprintf_r+0x4b4>
    cf9c:	920e      	str	r2, [sp, #56]	; 0x38
    cf9e:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    cfa2:	f7ff bb36 	b.w	c612 <_vfiprintf_r+0xae>
    cfa6:	17e5      	asrs	r5, r4, #31
    cfa8:	4622      	mov	r2, r4
    cfaa:	462b      	mov	r3, r5
    cfac:	2a00      	cmp	r2, #0
    cfae:	f173 0300 	sbcs.w	r3, r3, #0
    cfb2:	f6bf acb7 	bge.w	c924 <_vfiprintf_r+0x3c0>
    cfb6:	232d      	movs	r3, #45	; 0x2d
    cfb8:	4264      	negs	r4, r4
    cfba:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
    cfbe:	9306      	str	r3, [sp, #24]
    cfc0:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
    cfc4:	2301      	movs	r3, #1
    cfc6:	e594      	b.n	caf2 <_vfiprintf_r+0x58e>
    cfc8:	2500      	movs	r5, #0
    cfca:	e44f      	b.n	c86c <_vfiprintf_r+0x308>
    cfcc:	9b06      	ldr	r3, [sp, #24]
    cfce:	2b00      	cmp	r3, #0
    cfd0:	d03d      	beq.n	d04e <_vfiprintf_r+0xaea>
    cfd2:	2302      	movs	r3, #2
    cfd4:	a90c      	add	r1, sp, #48	; 0x30
    cfd6:	e9cd 131a 	strd	r1, r3, [sp, #104]	; 0x68
    cfda:	469c      	mov	ip, r3
    cfdc:	f10d 0b70 	add.w	fp, sp, #112	; 0x70
    cfe0:	e6fd      	b.n	cdde <_vfiprintf_r+0x87a>
    cfe2:	a81c      	add	r0, sp, #112	; 0x70
    cfe4:	2101      	movs	r1, #1
    cfe6:	4662      	mov	r2, ip
    cfe8:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    cfec:	e50a      	b.n	ca04 <_vfiprintf_r+0x4a0>
    cfee:	f1bc 0f00 	cmp.w	ip, #0
    cff2:	d043      	beq.n	d07c <_vfiprintf_r+0xb18>
    cff4:	aa0d      	add	r2, sp, #52	; 0x34
    cff6:	4651      	mov	r1, sl
    cff8:	9805      	ldr	r0, [sp, #20]
    cffa:	f7ff fa6f 	bl	c4dc <__sprint_r.part.0>
    cffe:	2800      	cmp	r0, #0
    d000:	f47f abcd 	bne.w	c79e <_vfiprintf_r+0x23a>
    d004:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
    d008:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    d00c:	1c51      	adds	r1, r2, #1
    d00e:	e4c5      	b.n	c99c <_vfiprintf_r+0x438>
    d010:	4644      	mov	r4, r8
    d012:	f7ff bb05 	b.w	c620 <_vfiprintf_r+0xbc>
    d016:	ae1a      	add	r6, sp, #104	; 0x68
    d018:	e609      	b.n	cc2e <_vfiprintf_r+0x6ca>
    d01a:	1c41      	adds	r1, r0, #1
    d01c:	4602      	mov	r2, r0
    d01e:	469b      	mov	fp, r3
    d020:	f103 0008 	add.w	r0, r3, #8
    d024:	e4f2      	b.n	ca0c <_vfiprintf_r+0x4a8>
    d026:	f017 0340 	ands.w	r3, r7, #64	; 0x40
    d02a:	bf1c      	itt	ne
    d02c:	4613      	movne	r3, r2
    d02e:	b2a4      	uxthne	r4, r4
    d030:	2500      	movs	r5, #0
    d032:	e558      	b.n	cae6 <_vfiprintf_r+0x582>
    d034:	067d      	lsls	r5, r7, #25
    d036:	bf48      	it	mi
    d038:	b2a4      	uxthmi	r4, r4
    d03a:	2500      	movs	r5, #0
    d03c:	2301      	movs	r3, #1
    d03e:	e552      	b.n	cae6 <_vfiprintf_r+0x582>
    d040:	9a02      	ldr	r2, [sp, #8]
    d042:	4610      	mov	r0, r2
    d044:	17d1      	asrs	r1, r2, #31
    d046:	e9c3 0100 	strd	r0, r1, [r3]
    d04a:	f7ff babd 	b.w	c5c8 <_vfiprintf_r+0x64>
    d04e:	4611      	mov	r1, r2
    d050:	a81c      	add	r0, sp, #112	; 0x70
    d052:	4662      	mov	r2, ip
    d054:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    d058:	e4d4      	b.n	ca04 <_vfiprintf_r+0x4a0>
    d05a:	4264      	negs	r4, r4
    d05c:	e9cd 4203 	strd	r4, r2, [sp, #12]
    d060:	f7ff bbd5 	b.w	c80e <_vfiprintf_r+0x2aa>
    d064:	4630      	mov	r0, r6
    d066:	9404      	str	r4, [sp, #16]
    d068:	9700      	str	r7, [sp, #0]
    d06a:	f7ff f9c9 	bl	c400 <strlen>
    d06e:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
    d072:	9001      	str	r0, [sp, #4]
    d074:	9306      	str	r3, [sp, #24]
    d076:	f04f 0900 	mov.w	r9, #0
    d07a:	e5d8      	b.n	cc2e <_vfiprintf_r+0x6ca>
    d07c:	f89d 202f 	ldrb.w	r2, [sp, #47]	; 0x2f
    d080:	bb2a      	cbnz	r2, d0ce <_vfiprintf_r+0xb6a>
    d082:	9b06      	ldr	r3, [sp, #24]
    d084:	2b00      	cmp	r3, #0
    d086:	f47f aea1 	bne.w	cdcc <_vfiprintf_r+0x868>
    d08a:	4662      	mov	r2, ip
    d08c:	a81c      	add	r0, sp, #112	; 0x70
    d08e:	2101      	movs	r1, #1
    d090:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    d094:	e4ba      	b.n	ca0c <_vfiprintf_r+0x4a8>
    d096:	9a02      	ldr	r2, [sp, #8]
    d098:	601a      	str	r2, [r3, #0]
    d09a:	f7ff ba95 	b.w	c5c8 <_vfiprintf_r+0x64>
    d09e:	9b01      	ldr	r3, [sp, #4]
    d0a0:	931b      	str	r3, [sp, #108]	; 0x6c
    d0a2:	2201      	movs	r2, #1
    d0a4:	930f      	str	r3, [sp, #60]	; 0x3c
    d0a6:	961a      	str	r6, [sp, #104]	; 0x68
    d0a8:	920e      	str	r2, [sp, #56]	; 0x38
    d0aa:	a81c      	add	r0, sp, #112	; 0x70
    d0ac:	e4ca      	b.n	ca44 <_vfiprintf_r+0x4e0>
    d0ae:	464d      	mov	r5, r9
    d0b0:	2d06      	cmp	r5, #6
    d0b2:	bf28      	it	cs
    d0b4:	2506      	movcs	r5, #6
    d0b6:	9501      	str	r5, [sp, #4]
    d0b8:	9404      	str	r4, [sp, #16]
    d0ba:	4e25      	ldr	r6, [pc, #148]	; (d150 <_vfiprintf_r+0xbec>)
    d0bc:	e457      	b.n	c96e <_vfiprintf_r+0x40a>
    d0be:	4603      	mov	r3, r0
    d0c0:	e650      	b.n	cd64 <_vfiprintf_r+0x800>
    d0c2:	a81c      	add	r0, sp, #112	; 0x70
    d0c4:	2101      	movs	r1, #1
    d0c6:	4662      	mov	r2, ip
    d0c8:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
    d0cc:	e49e      	b.n	ca0c <_vfiprintf_r+0x4a8>
    d0ce:	2201      	movs	r2, #1
    d0d0:	f10d 002f 	add.w	r0, sp, #47	; 0x2f
    d0d4:	901a      	str	r0, [sp, #104]	; 0x68
    d0d6:	4694      	mov	ip, r2
    d0d8:	921b      	str	r2, [sp, #108]	; 0x6c
    d0da:	4611      	mov	r1, r2
    d0dc:	a81c      	add	r0, sp, #112	; 0x70
    d0de:	e46e      	b.n	c9be <_vfiprintf_r+0x45a>
    d0e0:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d0e4:	e551      	b.n	cb8a <_vfiprintf_r+0x626>
    d0e6:	9f00      	ldr	r7, [sp, #0]
    d0e8:	e73c      	b.n	cf64 <_vfiprintf_r+0xa00>
    d0ea:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
    d0ee:	f8cd 9004 	str.w	r9, [sp, #4]
    d0f2:	9306      	str	r3, [sp, #24]
    d0f4:	9404      	str	r4, [sp, #16]
    d0f6:	9700      	str	r7, [sp, #0]
    d0f8:	4681      	mov	r9, r0
    d0fa:	e598      	b.n	cc2e <_vfiprintf_r+0x6ca>
    d0fc:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d100:	e4cf      	b.n	caa2 <_vfiprintf_r+0x53e>
    d102:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d106:	f7ff bbfb 	b.w	c900 <_vfiprintf_r+0x39c>
    d10a:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d10e:	f7ff bba1 	b.w	c854 <_vfiprintf_r+0x2f0>
    d112:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d116:	e50a      	b.n	cb2e <_vfiprintf_r+0x5ca>
    d118:	4686      	mov	lr, r0
    d11a:	e697      	b.n	ce4c <_vfiprintf_r+0x8e8>
    d11c:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
    d120:	e4aa      	b.n	ca78 <_vfiprintf_r+0x514>
    d122:	f101 0c01 	add.w	ip, r1, #1
    d126:	e6d9      	b.n	cedc <_vfiprintf_r+0x978>
    d128:	4603      	mov	r3, r0
    d12a:	4608      	mov	r0, r1
    d12c:	e5c5      	b.n	ccba <_vfiprintf_r+0x756>
    d12e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    d132:	9302      	str	r3, [sp, #8]
    d134:	f7ff bb38 	b.w	c7a8 <_vfiprintf_r+0x244>
    d138:	9d04      	ldr	r5, [sp, #16]
    d13a:	f898 3001 	ldrb.w	r3, [r8, #1]
    d13e:	f855 2b04 	ldr.w	r2, [r5], #4
    d142:	9504      	str	r5, [sp, #16]
    d144:	46a0      	mov	r8, r4
    d146:	ea42 79e2 	orr.w	r9, r2, r2, asr #31
    d14a:	f7ff ba76 	b.w	c63a <_vfiprintf_r+0xd6>
    d14e:	bf00      	nop
    d150:	0000f34c 	.word	0x0000f34c

0000d154 <vfiprintf>:
    d154:	b410      	push	{r4}
    d156:	4c04      	ldr	r4, [pc, #16]	; (d168 <vfiprintf+0x14>)
    d158:	4613      	mov	r3, r2
    d15a:	460a      	mov	r2, r1
    d15c:	4601      	mov	r1, r0
    d15e:	6820      	ldr	r0, [r4, #0]
    d160:	bc10      	pop	{r4}
    d162:	f7ff b9ff 	b.w	c564 <_vfiprintf_r>
    d166:	bf00      	nop
    d168:	0001f6a0 	.word	0x0001f6a0

0000d16c <__sbprintf>:
    d16c:	b5f0      	push	{r4, r5, r6, r7, lr}
    d16e:	460c      	mov	r4, r1
    d170:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
    d174:	8989      	ldrh	r1, [r1, #12]
    d176:	6e66      	ldr	r6, [r4, #100]	; 0x64
    d178:	89e5      	ldrh	r5, [r4, #14]
    d17a:	9619      	str	r6, [sp, #100]	; 0x64
    d17c:	f021 0102 	bic.w	r1, r1, #2
    d180:	6a66      	ldr	r6, [r4, #36]	; 0x24
    d182:	f8ad 500e 	strh.w	r5, [sp, #14]
    d186:	2500      	movs	r5, #0
    d188:	69e7      	ldr	r7, [r4, #28]
    d18a:	f8ad 100c 	strh.w	r1, [sp, #12]
    d18e:	9609      	str	r6, [sp, #36]	; 0x24
    d190:	9506      	str	r5, [sp, #24]
    d192:	ae1a      	add	r6, sp, #104	; 0x68
    d194:	f44f 6580 	mov.w	r5, #1024	; 0x400
    d198:	4669      	mov	r1, sp
    d19a:	9600      	str	r6, [sp, #0]
    d19c:	9604      	str	r6, [sp, #16]
    d19e:	9502      	str	r5, [sp, #8]
    d1a0:	9505      	str	r5, [sp, #20]
    d1a2:	9707      	str	r7, [sp, #28]
    d1a4:	4606      	mov	r6, r0
    d1a6:	f7ff f9dd 	bl	c564 <_vfiprintf_r>
    d1aa:	1e05      	subs	r5, r0, #0
    d1ac:	db07      	blt.n	d1be <__sbprintf+0x52>
    d1ae:	4630      	mov	r0, r6
    d1b0:	4669      	mov	r1, sp
    d1b2:	f7fd fd19 	bl	abe8 <_fflush_r>
    d1b6:	2800      	cmp	r0, #0
    d1b8:	bf18      	it	ne
    d1ba:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
    d1be:	f8bd 300c 	ldrh.w	r3, [sp, #12]
    d1c2:	065b      	lsls	r3, r3, #25
    d1c4:	d503      	bpl.n	d1ce <__sbprintf+0x62>
    d1c6:	89a3      	ldrh	r3, [r4, #12]
    d1c8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    d1cc:	81a3      	strh	r3, [r4, #12]
    d1ce:	4628      	mov	r0, r5
    d1d0:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
    d1d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    d1d6:	bf00      	nop

0000d1d8 <_write_r>:
    d1d8:	b570      	push	{r4, r5, r6, lr}
    d1da:	460d      	mov	r5, r1
    d1dc:	4c08      	ldr	r4, [pc, #32]	; (d200 <_write_r+0x28>)
    d1de:	4611      	mov	r1, r2
    d1e0:	4606      	mov	r6, r0
    d1e2:	461a      	mov	r2, r3
    d1e4:	4628      	mov	r0, r5
    d1e6:	2300      	movs	r3, #0
    d1e8:	6023      	str	r3, [r4, #0]
    d1ea:	f002 f867 	bl	f2bc <_write>
    d1ee:	1c43      	adds	r3, r0, #1
    d1f0:	d000      	beq.n	d1f4 <_write_r+0x1c>
    d1f2:	bd70      	pop	{r4, r5, r6, pc}
    d1f4:	6823      	ldr	r3, [r4, #0]
    d1f6:	2b00      	cmp	r3, #0
    d1f8:	d0fb      	beq.n	d1f2 <_write_r+0x1a>
    d1fa:	6033      	str	r3, [r6, #0]
    d1fc:	bd70      	pop	{r4, r5, r6, pc}
    d1fe:	bf00      	nop
    d200:	000200a4 	.word	0x000200a4

0000d204 <__assert_func>:
    d204:	b500      	push	{lr}
    d206:	4c0a      	ldr	r4, [pc, #40]	; (d230 <__assert_func+0x2c>)
    d208:	6826      	ldr	r6, [r4, #0]
    d20a:	4605      	mov	r5, r0
    d20c:	b085      	sub	sp, #20
    d20e:	461c      	mov	r4, r3
    d210:	68f0      	ldr	r0, [r6, #12]
    d212:	b152      	cbz	r2, d22a <__assert_func+0x26>
    d214:	4b07      	ldr	r3, [pc, #28]	; (d234 <__assert_func+0x30>)
    d216:	9100      	str	r1, [sp, #0]
    d218:	e9cd 3201 	strd	r3, r2, [sp, #4]
    d21c:	4906      	ldr	r1, [pc, #24]	; (d238 <__assert_func+0x34>)
    d21e:	462b      	mov	r3, r5
    d220:	4622      	mov	r2, r4
    d222:	f000 f8af 	bl	d384 <fiprintf>
    d226:	f000 ffff 	bl	e228 <abort>
    d22a:	4b04      	ldr	r3, [pc, #16]	; (d23c <__assert_func+0x38>)
    d22c:	461a      	mov	r2, r3
    d22e:	e7f2      	b.n	d216 <__assert_func+0x12>
    d230:	0001f6a0 	.word	0x0001f6a0
    d234:	0000f52c 	.word	0x0000f52c
    d238:	0000f53c 	.word	0x0000f53c
    d23c:	0000f538 	.word	0x0000f538

0000d240 <__assert>:
    d240:	b508      	push	{r3, lr}
    d242:	4613      	mov	r3, r2
    d244:	2200      	movs	r2, #0
    d246:	f7ff ffdd 	bl	d204 <__assert_func>
    d24a:	bf00      	nop

0000d24c <_calloc_r>:
    d24c:	b510      	push	{r4, lr}
    d24e:	fb02 f101 	mul.w	r1, r2, r1
    d252:	f7fe f80b 	bl	b26c <_malloc_r>
    d256:	4604      	mov	r4, r0
    d258:	b168      	cbz	r0, d276 <_calloc_r+0x2a>
    d25a:	f850 2c04 	ldr.w	r2, [r0, #-4]
    d25e:	f022 0203 	bic.w	r2, r2, #3
    d262:	3a04      	subs	r2, #4
    d264:	2a24      	cmp	r2, #36	; 0x24
    d266:	d818      	bhi.n	d29a <_calloc_r+0x4e>
    d268:	2a13      	cmp	r2, #19
    d26a:	d806      	bhi.n	d27a <_calloc_r+0x2e>
    d26c:	4602      	mov	r2, r0
    d26e:	2300      	movs	r3, #0
    d270:	e9c2 3300 	strd	r3, r3, [r2]
    d274:	6093      	str	r3, [r2, #8]
    d276:	4620      	mov	r0, r4
    d278:	bd10      	pop	{r4, pc}
    d27a:	2300      	movs	r3, #0
    d27c:	2a1b      	cmp	r2, #27
    d27e:	e9c0 3300 	strd	r3, r3, [r0]
    d282:	d90f      	bls.n	d2a4 <_calloc_r+0x58>
    d284:	2a24      	cmp	r2, #36	; 0x24
    d286:	e9c0 3302 	strd	r3, r3, [r0, #8]
    d28a:	bf12      	itee	ne
    d28c:	f100 0210 	addne.w	r2, r0, #16
    d290:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
    d294:	f100 0218 	addeq.w	r2, r0, #24
    d298:	e7e9      	b.n	d26e <_calloc_r+0x22>
    d29a:	2100      	movs	r1, #0
    d29c:	f7fa ffe2 	bl	8264 <memset>
    d2a0:	4620      	mov	r0, r4
    d2a2:	bd10      	pop	{r4, pc}
    d2a4:	f100 0208 	add.w	r2, r0, #8
    d2a8:	e7e1      	b.n	d26e <_calloc_r+0x22>
    d2aa:	bf00      	nop

0000d2ac <_close_r>:
    d2ac:	b538      	push	{r3, r4, r5, lr}
    d2ae:	4c07      	ldr	r4, [pc, #28]	; (d2cc <_close_r+0x20>)
    d2b0:	2300      	movs	r3, #0
    d2b2:	4605      	mov	r5, r0
    d2b4:	4608      	mov	r0, r1
    d2b6:	6023      	str	r3, [r4, #0]
    d2b8:	f001 ffba 	bl	f230 <_close>
    d2bc:	1c43      	adds	r3, r0, #1
    d2be:	d000      	beq.n	d2c2 <_close_r+0x16>
    d2c0:	bd38      	pop	{r3, r4, r5, pc}
    d2c2:	6823      	ldr	r3, [r4, #0]
    d2c4:	2b00      	cmp	r3, #0
    d2c6:	d0fb      	beq.n	d2c0 <_close_r+0x14>
    d2c8:	602b      	str	r3, [r5, #0]
    d2ca:	bd38      	pop	{r3, r4, r5, pc}
    d2cc:	000200a4 	.word	0x000200a4

0000d2d0 <_fclose_r>:
    d2d0:	b570      	push	{r4, r5, r6, lr}
    d2d2:	b139      	cbz	r1, d2e4 <_fclose_r+0x14>
    d2d4:	4605      	mov	r5, r0
    d2d6:	460c      	mov	r4, r1
    d2d8:	b108      	cbz	r0, d2de <_fclose_r+0xe>
    d2da:	6b83      	ldr	r3, [r0, #56]	; 0x38
    d2dc:	b383      	cbz	r3, d340 <_fclose_r+0x70>
    d2de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d2e2:	b913      	cbnz	r3, d2ea <_fclose_r+0x1a>
    d2e4:	2600      	movs	r6, #0
    d2e6:	4630      	mov	r0, r6
    d2e8:	bd70      	pop	{r4, r5, r6, pc}
    d2ea:	4621      	mov	r1, r4
    d2ec:	4628      	mov	r0, r5
    d2ee:	f7fd fbd5 	bl	aa9c <__sflush_r>
    d2f2:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    d2f4:	4606      	mov	r6, r0
    d2f6:	b133      	cbz	r3, d306 <_fclose_r+0x36>
    d2f8:	69e1      	ldr	r1, [r4, #28]
    d2fa:	4628      	mov	r0, r5
    d2fc:	4798      	blx	r3
    d2fe:	2800      	cmp	r0, #0
    d300:	bfb8      	it	lt
    d302:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
    d306:	89a3      	ldrh	r3, [r4, #12]
    d308:	061b      	lsls	r3, r3, #24
    d30a:	d420      	bmi.n	d34e <_fclose_r+0x7e>
    d30c:	6b21      	ldr	r1, [r4, #48]	; 0x30
    d30e:	b141      	cbz	r1, d322 <_fclose_r+0x52>
    d310:	f104 0340 	add.w	r3, r4, #64	; 0x40
    d314:	4299      	cmp	r1, r3
    d316:	d002      	beq.n	d31e <_fclose_r+0x4e>
    d318:	4628      	mov	r0, r5
    d31a:	f7fd fddb 	bl	aed4 <_free_r>
    d31e:	2300      	movs	r3, #0
    d320:	6323      	str	r3, [r4, #48]	; 0x30
    d322:	6c61      	ldr	r1, [r4, #68]	; 0x44
    d324:	b121      	cbz	r1, d330 <_fclose_r+0x60>
    d326:	4628      	mov	r0, r5
    d328:	f7fd fdd4 	bl	aed4 <_free_r>
    d32c:	2300      	movs	r3, #0
    d32e:	6463      	str	r3, [r4, #68]	; 0x44
    d330:	f7fd fd64 	bl	adfc <__sfp_lock_acquire>
    d334:	2300      	movs	r3, #0
    d336:	81a3      	strh	r3, [r4, #12]
    d338:	f7fd fd62 	bl	ae00 <__sfp_lock_release>
    d33c:	4630      	mov	r0, r6
    d33e:	bd70      	pop	{r4, r5, r6, pc}
    d340:	f7fd fd58 	bl	adf4 <__sinit>
    d344:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d348:	2b00      	cmp	r3, #0
    d34a:	d0cb      	beq.n	d2e4 <_fclose_r+0x14>
    d34c:	e7cd      	b.n	d2ea <_fclose_r+0x1a>
    d34e:	6921      	ldr	r1, [r4, #16]
    d350:	4628      	mov	r0, r5
    d352:	f7fd fdbf 	bl	aed4 <_free_r>
    d356:	e7d9      	b.n	d30c <_fclose_r+0x3c>

0000d358 <fclose>:
    d358:	4b02      	ldr	r3, [pc, #8]	; (d364 <fclose+0xc>)
    d35a:	4601      	mov	r1, r0
    d35c:	6818      	ldr	r0, [r3, #0]
    d35e:	f7ff bfb7 	b.w	d2d0 <_fclose_r>
    d362:	bf00      	nop
    d364:	0001f6a0 	.word	0x0001f6a0

0000d368 <_fiprintf_r>:
    d368:	b40c      	push	{r2, r3}
    d36a:	b500      	push	{lr}
    d36c:	b083      	sub	sp, #12
    d36e:	ab04      	add	r3, sp, #16
    d370:	f853 2b04 	ldr.w	r2, [r3], #4
    d374:	9301      	str	r3, [sp, #4]
    d376:	f7ff f8f5 	bl	c564 <_vfiprintf_r>
    d37a:	b003      	add	sp, #12
    d37c:	f85d eb04 	ldr.w	lr, [sp], #4
    d380:	b002      	add	sp, #8
    d382:	4770      	bx	lr

0000d384 <fiprintf>:
    d384:	b40e      	push	{r1, r2, r3}
    d386:	b510      	push	{r4, lr}
    d388:	b083      	sub	sp, #12
    d38a:	ab05      	add	r3, sp, #20
    d38c:	4c06      	ldr	r4, [pc, #24]	; (d3a8 <fiprintf+0x24>)
    d38e:	f853 2b04 	ldr.w	r2, [r3], #4
    d392:	9301      	str	r3, [sp, #4]
    d394:	4601      	mov	r1, r0
    d396:	6820      	ldr	r0, [r4, #0]
    d398:	f7ff f8e4 	bl	c564 <_vfiprintf_r>
    d39c:	b003      	add	sp, #12
    d39e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    d3a2:	b003      	add	sp, #12
    d3a4:	4770      	bx	lr
    d3a6:	bf00      	nop
    d3a8:	0001f6a0 	.word	0x0001f6a0

0000d3ac <__fputwc>:
    d3ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    d3b0:	b082      	sub	sp, #8
    d3b2:	4680      	mov	r8, r0
    d3b4:	4689      	mov	r9, r1
    d3b6:	4614      	mov	r4, r2
    d3b8:	f000 fa48 	bl	d84c <__locale_mb_cur_max>
    d3bc:	2801      	cmp	r0, #1
    d3be:	d103      	bne.n	d3c8 <__fputwc+0x1c>
    d3c0:	f109 33ff 	add.w	r3, r9, #4294967295	; 0xffffffff
    d3c4:	2bfe      	cmp	r3, #254	; 0xfe
    d3c6:	d936      	bls.n	d436 <__fputwc+0x8a>
    d3c8:	464a      	mov	r2, r9
    d3ca:	f104 035c 	add.w	r3, r4, #92	; 0x5c
    d3ce:	a901      	add	r1, sp, #4
    d3d0:	4640      	mov	r0, r8
    d3d2:	f000 fed3 	bl	e17c <_wcrtomb_r>
    d3d6:	1c42      	adds	r2, r0, #1
    d3d8:	4606      	mov	r6, r0
    d3da:	d032      	beq.n	d442 <__fputwc+0x96>
    d3dc:	b330      	cbz	r0, d42c <__fputwc+0x80>
    d3de:	f89d c004 	ldrb.w	ip, [sp, #4]
    d3e2:	2500      	movs	r5, #0
    d3e4:	f10d 0a04 	add.w	sl, sp, #4
    d3e8:	e009      	b.n	d3fe <__fputwc+0x52>
    d3ea:	6823      	ldr	r3, [r4, #0]
    d3ec:	1c5a      	adds	r2, r3, #1
    d3ee:	6022      	str	r2, [r4, #0]
    d3f0:	f883 c000 	strb.w	ip, [r3]
    d3f4:	3501      	adds	r5, #1
    d3f6:	42b5      	cmp	r5, r6
    d3f8:	d218      	bcs.n	d42c <__fputwc+0x80>
    d3fa:	f815 c00a 	ldrb.w	ip, [r5, sl]
    d3fe:	68a3      	ldr	r3, [r4, #8]
    d400:	3b01      	subs	r3, #1
    d402:	2b00      	cmp	r3, #0
    d404:	60a3      	str	r3, [r4, #8]
    d406:	daf0      	bge.n	d3ea <__fputwc+0x3e>
    d408:	69a7      	ldr	r7, [r4, #24]
    d40a:	42bb      	cmp	r3, r7
    d40c:	4661      	mov	r1, ip
    d40e:	4622      	mov	r2, r4
    d410:	4640      	mov	r0, r8
    d412:	db02      	blt.n	d41a <__fputwc+0x6e>
    d414:	f1bc 0f0a 	cmp.w	ip, #10
    d418:	d1e7      	bne.n	d3ea <__fputwc+0x3e>
    d41a:	f000 fe4f 	bl	e0bc <__swbuf_r>
    d41e:	1c43      	adds	r3, r0, #1
    d420:	d1e8      	bne.n	d3f4 <__fputwc+0x48>
    d422:	4606      	mov	r6, r0
    d424:	4630      	mov	r0, r6
    d426:	b002      	add	sp, #8
    d428:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    d42c:	464e      	mov	r6, r9
    d42e:	4630      	mov	r0, r6
    d430:	b002      	add	sp, #8
    d432:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    d436:	fa5f fc89 	uxtb.w	ip, r9
    d43a:	4606      	mov	r6, r0
    d43c:	f88d c004 	strb.w	ip, [sp, #4]
    d440:	e7cf      	b.n	d3e2 <__fputwc+0x36>
    d442:	89a3      	ldrh	r3, [r4, #12]
    d444:	4630      	mov	r0, r6
    d446:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    d44a:	81a3      	strh	r3, [r4, #12]
    d44c:	b002      	add	sp, #8
    d44e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    d452:	bf00      	nop

0000d454 <_fputwc_r>:
    d454:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
    d458:	f413 5f00 	tst.w	r3, #8192	; 0x2000
    d45c:	d10a      	bne.n	d474 <_fputwc_r+0x20>
    d45e:	b410      	push	{r4}
    d460:	6e54      	ldr	r4, [r2, #100]	; 0x64
    d462:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    d466:	f444 5400 	orr.w	r4, r4, #8192	; 0x2000
    d46a:	6654      	str	r4, [r2, #100]	; 0x64
    d46c:	8193      	strh	r3, [r2, #12]
    d46e:	bc10      	pop	{r4}
    d470:	f7ff bf9c 	b.w	d3ac <__fputwc>
    d474:	f7ff bf9a 	b.w	d3ac <__fputwc>

0000d478 <fputwc>:
    d478:	4b0e      	ldr	r3, [pc, #56]	; (d4b4 <fputwc+0x3c>)
    d47a:	b570      	push	{r4, r5, r6, lr}
    d47c:	681d      	ldr	r5, [r3, #0]
    d47e:	4606      	mov	r6, r0
    d480:	460c      	mov	r4, r1
    d482:	b10d      	cbz	r5, d488 <fputwc+0x10>
    d484:	6bab      	ldr	r3, [r5, #56]	; 0x38
    d486:	b18b      	cbz	r3, d4ac <fputwc+0x34>
    d488:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d48c:	049a      	lsls	r2, r3, #18
    d48e:	d406      	bmi.n	d49e <fputwc+0x26>
    d490:	6e62      	ldr	r2, [r4, #100]	; 0x64
    d492:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    d496:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    d49a:	81a3      	strh	r3, [r4, #12]
    d49c:	6662      	str	r2, [r4, #100]	; 0x64
    d49e:	4622      	mov	r2, r4
    d4a0:	4631      	mov	r1, r6
    d4a2:	4628      	mov	r0, r5
    d4a4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    d4a8:	f7ff bf80 	b.w	d3ac <__fputwc>
    d4ac:	4628      	mov	r0, r5
    d4ae:	f7fd fca1 	bl	adf4 <__sinit>
    d4b2:	e7e9      	b.n	d488 <fputwc+0x10>
    d4b4:	0001f6a0 	.word	0x0001f6a0

0000d4b8 <_fstat_r>:
    d4b8:	b538      	push	{r3, r4, r5, lr}
    d4ba:	460b      	mov	r3, r1
    d4bc:	4c07      	ldr	r4, [pc, #28]	; (d4dc <_fstat_r+0x24>)
    d4be:	4605      	mov	r5, r0
    d4c0:	4611      	mov	r1, r2
    d4c2:	4618      	mov	r0, r3
    d4c4:	2300      	movs	r3, #0
    d4c6:	6023      	str	r3, [r4, #0]
    d4c8:	f001 feba 	bl	f240 <_fstat>
    d4cc:	1c43      	adds	r3, r0, #1
    d4ce:	d000      	beq.n	d4d2 <_fstat_r+0x1a>
    d4d0:	bd38      	pop	{r3, r4, r5, pc}
    d4d2:	6823      	ldr	r3, [r4, #0]
    d4d4:	2b00      	cmp	r3, #0
    d4d6:	d0fb      	beq.n	d4d0 <_fstat_r+0x18>
    d4d8:	602b      	str	r3, [r5, #0]
    d4da:	bd38      	pop	{r3, r4, r5, pc}
    d4dc:	000200a4 	.word	0x000200a4

0000d4e0 <__sfvwrite_r>:
    d4e0:	6893      	ldr	r3, [r2, #8]
    d4e2:	2b00      	cmp	r3, #0
    d4e4:	f000 8102 	beq.w	d6ec <__sfvwrite_r+0x20c>
    d4e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d4ec:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
    d4f0:	b29b      	uxth	r3, r3
    d4f2:	460c      	mov	r4, r1
    d4f4:	0719      	lsls	r1, r3, #28
    d4f6:	b083      	sub	sp, #12
    d4f8:	4682      	mov	sl, r0
    d4fa:	4690      	mov	r8, r2
    d4fc:	d535      	bpl.n	d56a <__sfvwrite_r+0x8a>
    d4fe:	6922      	ldr	r2, [r4, #16]
    d500:	b39a      	cbz	r2, d56a <__sfvwrite_r+0x8a>
    d502:	f013 0202 	ands.w	r2, r3, #2
    d506:	f8d8 6000 	ldr.w	r6, [r8]
    d50a:	d03d      	beq.n	d588 <__sfvwrite_r+0xa8>
    d50c:	2700      	movs	r7, #0
    d50e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
    d512:	f8d4 c01c 	ldr.w	ip, [r4, #28]
    d516:	f8df 92cc 	ldr.w	r9, [pc, #716]	; d7e4 <__sfvwrite_r+0x304>
    d51a:	463d      	mov	r5, r7
    d51c:	454d      	cmp	r5, r9
    d51e:	462b      	mov	r3, r5
    d520:	463a      	mov	r2, r7
    d522:	bf28      	it	cs
    d524:	464b      	movcs	r3, r9
    d526:	4661      	mov	r1, ip
    d528:	4650      	mov	r0, sl
    d52a:	b1d5      	cbz	r5, d562 <__sfvwrite_r+0x82>
    d52c:	47d8      	blx	fp
    d52e:	2800      	cmp	r0, #0
    d530:	f340 80d2 	ble.w	d6d8 <__sfvwrite_r+0x1f8>
    d534:	f8d8 3008 	ldr.w	r3, [r8, #8]
    d538:	1a1b      	subs	r3, r3, r0
    d53a:	4407      	add	r7, r0
    d53c:	1a2d      	subs	r5, r5, r0
    d53e:	f8c8 3008 	str.w	r3, [r8, #8]
    d542:	2b00      	cmp	r3, #0
    d544:	f000 80b7 	beq.w	d6b6 <__sfvwrite_r+0x1d6>
    d548:	f8d4 c01c 	ldr.w	ip, [r4, #28]
    d54c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
    d550:	454d      	cmp	r5, r9
    d552:	462b      	mov	r3, r5
    d554:	463a      	mov	r2, r7
    d556:	bf28      	it	cs
    d558:	464b      	movcs	r3, r9
    d55a:	4661      	mov	r1, ip
    d55c:	4650      	mov	r0, sl
    d55e:	2d00      	cmp	r5, #0
    d560:	d1e4      	bne.n	d52c <__sfvwrite_r+0x4c>
    d562:	e9d6 7500 	ldrd	r7, r5, [r6]
    d566:	3608      	adds	r6, #8
    d568:	e7d8      	b.n	d51c <__sfvwrite_r+0x3c>
    d56a:	4621      	mov	r1, r4
    d56c:	4650      	mov	r0, sl
    d56e:	f7fc f9a5 	bl	98bc <__swsetup_r>
    d572:	2800      	cmp	r0, #0
    d574:	f040 8130 	bne.w	d7d8 <__sfvwrite_r+0x2f8>
    d578:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d57c:	f8d8 6000 	ldr.w	r6, [r8]
    d580:	b29b      	uxth	r3, r3
    d582:	f013 0202 	ands.w	r2, r3, #2
    d586:	d1c1      	bne.n	d50c <__sfvwrite_r+0x2c>
    d588:	f013 0901 	ands.w	r9, r3, #1
    d58c:	f040 80b0 	bne.w	d6f0 <__sfvwrite_r+0x210>
    d590:	68a7      	ldr	r7, [r4, #8]
    d592:	6820      	ldr	r0, [r4, #0]
    d594:	464d      	mov	r5, r9
    d596:	2d00      	cmp	r5, #0
    d598:	d054      	beq.n	d644 <__sfvwrite_r+0x164>
    d59a:	059a      	lsls	r2, r3, #22
    d59c:	f140 80bc 	bpl.w	d718 <__sfvwrite_r+0x238>
    d5a0:	42af      	cmp	r7, r5
    d5a2:	46bb      	mov	fp, r7
    d5a4:	f200 80e7 	bhi.w	d776 <__sfvwrite_r+0x296>
    d5a8:	f413 6f90 	tst.w	r3, #1152	; 0x480
    d5ac:	d02f      	beq.n	d60e <__sfvwrite_r+0x12e>
    d5ae:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
    d5b2:	eb07 0747 	add.w	r7, r7, r7, lsl #1
    d5b6:	eba0 0b01 	sub.w	fp, r0, r1
    d5ba:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
    d5be:	1c68      	adds	r0, r5, #1
    d5c0:	107f      	asrs	r7, r7, #1
    d5c2:	4458      	add	r0, fp
    d5c4:	42b8      	cmp	r0, r7
    d5c6:	463a      	mov	r2, r7
    d5c8:	bf84      	itt	hi
    d5ca:	4607      	movhi	r7, r0
    d5cc:	463a      	movhi	r2, r7
    d5ce:	055b      	lsls	r3, r3, #21
    d5d0:	f140 80e9 	bpl.w	d7a6 <__sfvwrite_r+0x2c6>
    d5d4:	4611      	mov	r1, r2
    d5d6:	4650      	mov	r0, sl
    d5d8:	f7fd fe48 	bl	b26c <_malloc_r>
    d5dc:	2800      	cmp	r0, #0
    d5de:	f000 80f5 	beq.w	d7cc <__sfvwrite_r+0x2ec>
    d5e2:	465a      	mov	r2, fp
    d5e4:	6921      	ldr	r1, [r4, #16]
    d5e6:	9001      	str	r0, [sp, #4]
    d5e8:	f7fe f942 	bl	b870 <memcpy>
    d5ec:	89a2      	ldrh	r2, [r4, #12]
    d5ee:	9b01      	ldr	r3, [sp, #4]
    d5f0:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
    d5f4:	f042 0280 	orr.w	r2, r2, #128	; 0x80
    d5f8:	81a2      	strh	r2, [r4, #12]
    d5fa:	eba7 020b 	sub.w	r2, r7, fp
    d5fe:	eb03 000b 	add.w	r0, r3, fp
    d602:	6167      	str	r7, [r4, #20]
    d604:	6123      	str	r3, [r4, #16]
    d606:	6020      	str	r0, [r4, #0]
    d608:	60a2      	str	r2, [r4, #8]
    d60a:	462f      	mov	r7, r5
    d60c:	46ab      	mov	fp, r5
    d60e:	465a      	mov	r2, fp
    d610:	4649      	mov	r1, r9
    d612:	f000 f95f 	bl	d8d4 <memmove>
    d616:	68a2      	ldr	r2, [r4, #8]
    d618:	6823      	ldr	r3, [r4, #0]
    d61a:	1bd2      	subs	r2, r2, r7
    d61c:	445b      	add	r3, fp
    d61e:	462f      	mov	r7, r5
    d620:	60a2      	str	r2, [r4, #8]
    d622:	6023      	str	r3, [r4, #0]
    d624:	2500      	movs	r5, #0
    d626:	f8d8 3008 	ldr.w	r3, [r8, #8]
    d62a:	1bdb      	subs	r3, r3, r7
    d62c:	44b9      	add	r9, r7
    d62e:	f8c8 3008 	str.w	r3, [r8, #8]
    d632:	2b00      	cmp	r3, #0
    d634:	d03f      	beq.n	d6b6 <__sfvwrite_r+0x1d6>
    d636:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d63a:	68a7      	ldr	r7, [r4, #8]
    d63c:	6820      	ldr	r0, [r4, #0]
    d63e:	b29b      	uxth	r3, r3
    d640:	2d00      	cmp	r5, #0
    d642:	d1aa      	bne.n	d59a <__sfvwrite_r+0xba>
    d644:	e9d6 9500 	ldrd	r9, r5, [r6]
    d648:	3608      	adds	r6, #8
    d64a:	e7a4      	b.n	d596 <__sfvwrite_r+0xb6>
    d64c:	f10b 0308 	add.w	r3, fp, #8
    d650:	e953 6702 	ldrd	r6, r7, [r3, #-8]
    d654:	469b      	mov	fp, r3
    d656:	3308      	adds	r3, #8
    d658:	2f00      	cmp	r7, #0
    d65a:	d0f9      	beq.n	d650 <__sfvwrite_r+0x170>
    d65c:	463a      	mov	r2, r7
    d65e:	210a      	movs	r1, #10
    d660:	4630      	mov	r0, r6
    d662:	f7fe f8b5 	bl	b7d0 <memchr>
    d666:	2800      	cmp	r0, #0
    d668:	d053      	beq.n	d712 <__sfvwrite_r+0x232>
    d66a:	3001      	adds	r0, #1
    d66c:	eba0 0906 	sub.w	r9, r0, r6
    d670:	464b      	mov	r3, r9
    d672:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
    d676:	6820      	ldr	r0, [r4, #0]
    d678:	42bb      	cmp	r3, r7
    d67a:	bf28      	it	cs
    d67c:	463b      	movcs	r3, r7
    d67e:	4288      	cmp	r0, r1
    d680:	d903      	bls.n	d68a <__sfvwrite_r+0x1aa>
    d682:	68a5      	ldr	r5, [r4, #8]
    d684:	4415      	add	r5, r2
    d686:	42ab      	cmp	r3, r5
    d688:	dc19      	bgt.n	d6be <__sfvwrite_r+0x1de>
    d68a:	429a      	cmp	r2, r3
    d68c:	dc7d      	bgt.n	d78a <__sfvwrite_r+0x2aa>
    d68e:	4613      	mov	r3, r2
    d690:	6a65      	ldr	r5, [r4, #36]	; 0x24
    d692:	69e1      	ldr	r1, [r4, #28]
    d694:	4632      	mov	r2, r6
    d696:	4650      	mov	r0, sl
    d698:	47a8      	blx	r5
    d69a:	1e05      	subs	r5, r0, #0
    d69c:	dd1c      	ble.n	d6d8 <__sfvwrite_r+0x1f8>
    d69e:	ebb9 0905 	subs.w	r9, r9, r5
    d6a2:	d06b      	beq.n	d77c <__sfvwrite_r+0x29c>
    d6a4:	2001      	movs	r0, #1
    d6a6:	f8d8 3008 	ldr.w	r3, [r8, #8]
    d6aa:	1b5b      	subs	r3, r3, r5
    d6ac:	442e      	add	r6, r5
    d6ae:	1b7f      	subs	r7, r7, r5
    d6b0:	f8c8 3008 	str.w	r3, [r8, #8]
    d6b4:	bb13      	cbnz	r3, d6fc <__sfvwrite_r+0x21c>
    d6b6:	2000      	movs	r0, #0
    d6b8:	b003      	add	sp, #12
    d6ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d6be:	4631      	mov	r1, r6
    d6c0:	462a      	mov	r2, r5
    d6c2:	f000 f907 	bl	d8d4 <memmove>
    d6c6:	6823      	ldr	r3, [r4, #0]
    d6c8:	442b      	add	r3, r5
    d6ca:	6023      	str	r3, [r4, #0]
    d6cc:	4621      	mov	r1, r4
    d6ce:	4650      	mov	r0, sl
    d6d0:	f7fd fa8a 	bl	abe8 <_fflush_r>
    d6d4:	2800      	cmp	r0, #0
    d6d6:	d0e2      	beq.n	d69e <__sfvwrite_r+0x1be>
    d6d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d6dc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    d6e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    d6e4:	81a3      	strh	r3, [r4, #12]
    d6e6:	b003      	add	sp, #12
    d6e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    d6ec:	2000      	movs	r0, #0
    d6ee:	4770      	bx	lr
    d6f0:	4633      	mov	r3, r6
    d6f2:	4691      	mov	r9, r2
    d6f4:	4610      	mov	r0, r2
    d6f6:	4617      	mov	r7, r2
    d6f8:	464e      	mov	r6, r9
    d6fa:	469b      	mov	fp, r3
    d6fc:	2f00      	cmp	r7, #0
    d6fe:	d0a5      	beq.n	d64c <__sfvwrite_r+0x16c>
    d700:	2800      	cmp	r0, #0
    d702:	d1b5      	bne.n	d670 <__sfvwrite_r+0x190>
    d704:	463a      	mov	r2, r7
    d706:	210a      	movs	r1, #10
    d708:	4630      	mov	r0, r6
    d70a:	f7fe f861 	bl	b7d0 <memchr>
    d70e:	2800      	cmp	r0, #0
    d710:	d1ab      	bne.n	d66a <__sfvwrite_r+0x18a>
    d712:	1c7b      	adds	r3, r7, #1
    d714:	4699      	mov	r9, r3
    d716:	e7ac      	b.n	d672 <__sfvwrite_r+0x192>
    d718:	6923      	ldr	r3, [r4, #16]
    d71a:	4283      	cmp	r3, r0
    d71c:	d315      	bcc.n	d74a <__sfvwrite_r+0x26a>
    d71e:	6961      	ldr	r1, [r4, #20]
    d720:	42a9      	cmp	r1, r5
    d722:	d812      	bhi.n	d74a <__sfvwrite_r+0x26a>
    d724:	4b2e      	ldr	r3, [pc, #184]	; (d7e0 <__sfvwrite_r+0x300>)
    d726:	6a67      	ldr	r7, [r4, #36]	; 0x24
    d728:	429d      	cmp	r5, r3
    d72a:	bf94      	ite	ls
    d72c:	462b      	movls	r3, r5
    d72e:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
    d732:	464a      	mov	r2, r9
    d734:	fb93 f3f1 	sdiv	r3, r3, r1
    d738:	4650      	mov	r0, sl
    d73a:	fb01 f303 	mul.w	r3, r1, r3
    d73e:	69e1      	ldr	r1, [r4, #28]
    d740:	47b8      	blx	r7
    d742:	1e07      	subs	r7, r0, #0
    d744:	ddc8      	ble.n	d6d8 <__sfvwrite_r+0x1f8>
    d746:	1bed      	subs	r5, r5, r7
    d748:	e76d      	b.n	d626 <__sfvwrite_r+0x146>
    d74a:	42af      	cmp	r7, r5
    d74c:	bf28      	it	cs
    d74e:	462f      	movcs	r7, r5
    d750:	463a      	mov	r2, r7
    d752:	4649      	mov	r1, r9
    d754:	f000 f8be 	bl	d8d4 <memmove>
    d758:	68a3      	ldr	r3, [r4, #8]
    d75a:	6822      	ldr	r2, [r4, #0]
    d75c:	1bdb      	subs	r3, r3, r7
    d75e:	443a      	add	r2, r7
    d760:	60a3      	str	r3, [r4, #8]
    d762:	6022      	str	r2, [r4, #0]
    d764:	2b00      	cmp	r3, #0
    d766:	d1ee      	bne.n	d746 <__sfvwrite_r+0x266>
    d768:	4621      	mov	r1, r4
    d76a:	4650      	mov	r0, sl
    d76c:	f7fd fa3c 	bl	abe8 <_fflush_r>
    d770:	2800      	cmp	r0, #0
    d772:	d0e8      	beq.n	d746 <__sfvwrite_r+0x266>
    d774:	e7b0      	b.n	d6d8 <__sfvwrite_r+0x1f8>
    d776:	462f      	mov	r7, r5
    d778:	46ab      	mov	fp, r5
    d77a:	e748      	b.n	d60e <__sfvwrite_r+0x12e>
    d77c:	4621      	mov	r1, r4
    d77e:	4650      	mov	r0, sl
    d780:	f7fd fa32 	bl	abe8 <_fflush_r>
    d784:	2800      	cmp	r0, #0
    d786:	d08e      	beq.n	d6a6 <__sfvwrite_r+0x1c6>
    d788:	e7a6      	b.n	d6d8 <__sfvwrite_r+0x1f8>
    d78a:	461a      	mov	r2, r3
    d78c:	4631      	mov	r1, r6
    d78e:	9301      	str	r3, [sp, #4]
    d790:	f000 f8a0 	bl	d8d4 <memmove>
    d794:	9b01      	ldr	r3, [sp, #4]
    d796:	68a1      	ldr	r1, [r4, #8]
    d798:	6822      	ldr	r2, [r4, #0]
    d79a:	1ac9      	subs	r1, r1, r3
    d79c:	441a      	add	r2, r3
    d79e:	60a1      	str	r1, [r4, #8]
    d7a0:	6022      	str	r2, [r4, #0]
    d7a2:	461d      	mov	r5, r3
    d7a4:	e77b      	b.n	d69e <__sfvwrite_r+0x1be>
    d7a6:	4650      	mov	r0, sl
    d7a8:	f000 f912 	bl	d9d0 <_realloc_r>
    d7ac:	4603      	mov	r3, r0
    d7ae:	2800      	cmp	r0, #0
    d7b0:	f47f af23 	bne.w	d5fa <__sfvwrite_r+0x11a>
    d7b4:	6921      	ldr	r1, [r4, #16]
    d7b6:	4650      	mov	r0, sl
    d7b8:	f7fd fb8c 	bl	aed4 <_free_r>
    d7bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d7c0:	220c      	movs	r2, #12
    d7c2:	f023 0380 	bic.w	r3, r3, #128	; 0x80
    d7c6:	f8ca 2000 	str.w	r2, [sl]
    d7ca:	e787      	b.n	d6dc <__sfvwrite_r+0x1fc>
    d7cc:	230c      	movs	r3, #12
    d7ce:	f8ca 3000 	str.w	r3, [sl]
    d7d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    d7d6:	e781      	b.n	d6dc <__sfvwrite_r+0x1fc>
    d7d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    d7dc:	e76c      	b.n	d6b8 <__sfvwrite_r+0x1d8>
    d7de:	bf00      	nop
    d7e0:	7ffffffe 	.word	0x7ffffffe
    d7e4:	7ffffc00 	.word	0x7ffffc00

0000d7e8 <_isatty_r>:
    d7e8:	b538      	push	{r3, r4, r5, lr}
    d7ea:	4c07      	ldr	r4, [pc, #28]	; (d808 <_isatty_r+0x20>)
    d7ec:	2300      	movs	r3, #0
    d7ee:	4605      	mov	r5, r0
    d7f0:	4608      	mov	r0, r1
    d7f2:	6023      	str	r3, [r4, #0]
    d7f4:	f001 fd34 	bl	f260 <_isatty>
    d7f8:	1c43      	adds	r3, r0, #1
    d7fa:	d000      	beq.n	d7fe <_isatty_r+0x16>
    d7fc:	bd38      	pop	{r3, r4, r5, pc}
    d7fe:	6823      	ldr	r3, [r4, #0]
    d800:	2b00      	cmp	r3, #0
    d802:	d0fb      	beq.n	d7fc <_isatty_r+0x14>
    d804:	602b      	str	r3, [r5, #0]
    d806:	bd38      	pop	{r3, r4, r5, pc}
    d808:	000200a4 	.word	0x000200a4

0000d80c <_setlocale_r>:
    d80c:	b142      	cbz	r2, d820 <_setlocale_r+0x14>
    d80e:	b510      	push	{r4, lr}
    d810:	490b      	ldr	r1, [pc, #44]	; (d840 <_setlocale_r+0x34>)
    d812:	4610      	mov	r0, r2
    d814:	4614      	mov	r4, r2
    d816:	f000 fae7 	bl	dde8 <strcmp>
    d81a:	b918      	cbnz	r0, d824 <_setlocale_r+0x18>
    d81c:	4809      	ldr	r0, [pc, #36]	; (d844 <_setlocale_r+0x38>)
    d81e:	bd10      	pop	{r4, pc}
    d820:	4808      	ldr	r0, [pc, #32]	; (d844 <_setlocale_r+0x38>)
    d822:	4770      	bx	lr
    d824:	4907      	ldr	r1, [pc, #28]	; (d844 <_setlocale_r+0x38>)
    d826:	4620      	mov	r0, r4
    d828:	f000 fade 	bl	dde8 <strcmp>
    d82c:	2800      	cmp	r0, #0
    d82e:	d0f5      	beq.n	d81c <_setlocale_r+0x10>
    d830:	4620      	mov	r0, r4
    d832:	4905      	ldr	r1, [pc, #20]	; (d848 <_setlocale_r+0x3c>)
    d834:	f000 fad8 	bl	dde8 <strcmp>
    d838:	2800      	cmp	r0, #0
    d83a:	d0ef      	beq.n	d81c <_setlocale_r+0x10>
    d83c:	2000      	movs	r0, #0
    d83e:	bd10      	pop	{r4, pc}
    d840:	0000f570 	.word	0x0000f570
    d844:	0000f56c 	.word	0x0000f56c
    d848:	0000f538 	.word	0x0000f538

0000d84c <__locale_mb_cur_max>:
    d84c:	4b01      	ldr	r3, [pc, #4]	; (d854 <__locale_mb_cur_max+0x8>)
    d84e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
    d852:	4770      	bx	lr
    d854:	0001fee0 	.word	0x0001fee0

0000d858 <setlocale>:
    d858:	4b02      	ldr	r3, [pc, #8]	; (d864 <setlocale+0xc>)
    d85a:	460a      	mov	r2, r1
    d85c:	4601      	mov	r1, r0
    d85e:	6818      	ldr	r0, [r3, #0]
    d860:	f7ff bfd4 	b.w	d80c <_setlocale_r>
    d864:	0001f6a0 	.word	0x0001f6a0

0000d868 <_lseek_r>:
    d868:	b570      	push	{r4, r5, r6, lr}
    d86a:	460d      	mov	r5, r1
    d86c:	4c08      	ldr	r4, [pc, #32]	; (d890 <_lseek_r+0x28>)
    d86e:	4611      	mov	r1, r2
    d870:	4606      	mov	r6, r0
    d872:	461a      	mov	r2, r3
    d874:	4628      	mov	r0, r5
    d876:	2300      	movs	r3, #0
    d878:	6023      	str	r3, [r4, #0]
    d87a:	f001 fd01 	bl	f280 <_lseek>
    d87e:	1c43      	adds	r3, r0, #1
    d880:	d000      	beq.n	d884 <_lseek_r+0x1c>
    d882:	bd70      	pop	{r4, r5, r6, pc}
    d884:	6823      	ldr	r3, [r4, #0]
    d886:	2b00      	cmp	r3, #0
    d888:	d0fb      	beq.n	d882 <_lseek_r+0x1a>
    d88a:	6033      	str	r3, [r6, #0]
    d88c:	bd70      	pop	{r4, r5, r6, pc}
    d88e:	bf00      	nop
    d890:	000200a4 	.word	0x000200a4

0000d894 <_mbtowc_r>:
    d894:	b410      	push	{r4}
    d896:	4c03      	ldr	r4, [pc, #12]	; (d8a4 <_mbtowc_r+0x10>)
    d898:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
    d89c:	46a4      	mov	ip, r4
    d89e:	bc10      	pop	{r4}
    d8a0:	4760      	bx	ip
    d8a2:	bf00      	nop
    d8a4:	0001fee0 	.word	0x0001fee0

0000d8a8 <__ascii_mbtowc>:
    d8a8:	b082      	sub	sp, #8
    d8aa:	b149      	cbz	r1, d8c0 <__ascii_mbtowc+0x18>
    d8ac:	b15a      	cbz	r2, d8c6 <__ascii_mbtowc+0x1e>
    d8ae:	b16b      	cbz	r3, d8cc <__ascii_mbtowc+0x24>
    d8b0:	7813      	ldrb	r3, [r2, #0]
    d8b2:	600b      	str	r3, [r1, #0]
    d8b4:	7812      	ldrb	r2, [r2, #0]
    d8b6:	1c10      	adds	r0, r2, #0
    d8b8:	bf18      	it	ne
    d8ba:	2001      	movne	r0, #1
    d8bc:	b002      	add	sp, #8
    d8be:	4770      	bx	lr
    d8c0:	a901      	add	r1, sp, #4
    d8c2:	2a00      	cmp	r2, #0
    d8c4:	d1f3      	bne.n	d8ae <__ascii_mbtowc+0x6>
    d8c6:	4610      	mov	r0, r2
    d8c8:	b002      	add	sp, #8
    d8ca:	4770      	bx	lr
    d8cc:	f06f 0001 	mvn.w	r0, #1
    d8d0:	e7f4      	b.n	d8bc <__ascii_mbtowc+0x14>
    d8d2:	bf00      	nop

0000d8d4 <memmove>:
    d8d4:	4288      	cmp	r0, r1
    d8d6:	b4f0      	push	{r4, r5, r6, r7}
    d8d8:	d90d      	bls.n	d8f6 <memmove+0x22>
    d8da:	188b      	adds	r3, r1, r2
    d8dc:	4283      	cmp	r3, r0
    d8de:	d90a      	bls.n	d8f6 <memmove+0x22>
    d8e0:	1884      	adds	r4, r0, r2
    d8e2:	b132      	cbz	r2, d8f2 <memmove+0x1e>
    d8e4:	4622      	mov	r2, r4
    d8e6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
    d8ea:	f802 4d01 	strb.w	r4, [r2, #-1]!
    d8ee:	4299      	cmp	r1, r3
    d8f0:	d1f9      	bne.n	d8e6 <memmove+0x12>
    d8f2:	bcf0      	pop	{r4, r5, r6, r7}
    d8f4:	4770      	bx	lr
    d8f6:	2a0f      	cmp	r2, #15
    d8f8:	d80e      	bhi.n	d918 <memmove+0x44>
    d8fa:	4603      	mov	r3, r0
    d8fc:	1e54      	subs	r4, r2, #1
    d8fe:	2a00      	cmp	r2, #0
    d900:	d0f7      	beq.n	d8f2 <memmove+0x1e>
    d902:	3401      	adds	r4, #1
    d904:	440c      	add	r4, r1
    d906:	3b01      	subs	r3, #1
    d908:	f811 2b01 	ldrb.w	r2, [r1], #1
    d90c:	f803 2f01 	strb.w	r2, [r3, #1]!
    d910:	42a1      	cmp	r1, r4
    d912:	d1f9      	bne.n	d908 <memmove+0x34>
    d914:	bcf0      	pop	{r4, r5, r6, r7}
    d916:	4770      	bx	lr
    d918:	ea40 0301 	orr.w	r3, r0, r1
    d91c:	079b      	lsls	r3, r3, #30
    d91e:	d13b      	bne.n	d998 <memmove+0xc4>
    d920:	f1a2 0710 	sub.w	r7, r2, #16
    d924:	093f      	lsrs	r7, r7, #4
    d926:	f101 0620 	add.w	r6, r1, #32
    d92a:	eb06 1607 	add.w	r6, r6, r7, lsl #4
    d92e:	f101 0310 	add.w	r3, r1, #16
    d932:	f100 0410 	add.w	r4, r0, #16
    d936:	f853 5c10 	ldr.w	r5, [r3, #-16]
    d93a:	f844 5c10 	str.w	r5, [r4, #-16]
    d93e:	f853 5c0c 	ldr.w	r5, [r3, #-12]
    d942:	f844 5c0c 	str.w	r5, [r4, #-12]
    d946:	f853 5c08 	ldr.w	r5, [r3, #-8]
    d94a:	f844 5c08 	str.w	r5, [r4, #-8]
    d94e:	f853 5c04 	ldr.w	r5, [r3, #-4]
    d952:	f844 5c04 	str.w	r5, [r4, #-4]
    d956:	3310      	adds	r3, #16
    d958:	42b3      	cmp	r3, r6
    d95a:	f104 0410 	add.w	r4, r4, #16
    d95e:	d1ea      	bne.n	d936 <memmove+0x62>
    d960:	1c7b      	adds	r3, r7, #1
    d962:	011b      	lsls	r3, r3, #4
    d964:	f012 0f0c 	tst.w	r2, #12
    d968:	4419      	add	r1, r3
    d96a:	f002 050f 	and.w	r5, r2, #15
    d96e:	4403      	add	r3, r0
    d970:	d015      	beq.n	d99e <memmove+0xca>
    d972:	3d04      	subs	r5, #4
    d974:	08ad      	lsrs	r5, r5, #2
    d976:	eb03 0c85 	add.w	ip, r3, r5, lsl #2
    d97a:	1f1c      	subs	r4, r3, #4
    d97c:	460e      	mov	r6, r1
    d97e:	f856 7b04 	ldr.w	r7, [r6], #4
    d982:	f844 7f04 	str.w	r7, [r4, #4]!
    d986:	4564      	cmp	r4, ip
    d988:	d1f9      	bne.n	d97e <memmove+0xaa>
    d98a:	3501      	adds	r5, #1
    d98c:	00ad      	lsls	r5, r5, #2
    d98e:	442b      	add	r3, r5
    d990:	4429      	add	r1, r5
    d992:	f002 0203 	and.w	r2, r2, #3
    d996:	e7b1      	b.n	d8fc <memmove+0x28>
    d998:	1e54      	subs	r4, r2, #1
    d99a:	4603      	mov	r3, r0
    d99c:	e7b1      	b.n	d902 <memmove+0x2e>
    d99e:	462a      	mov	r2, r5
    d9a0:	e7ac      	b.n	d8fc <memmove+0x28>
    d9a2:	bf00      	nop

0000d9a4 <_read_r>:
    d9a4:	b570      	push	{r4, r5, r6, lr}
    d9a6:	460d      	mov	r5, r1
    d9a8:	4c08      	ldr	r4, [pc, #32]	; (d9cc <_read_r+0x28>)
    d9aa:	4611      	mov	r1, r2
    d9ac:	4606      	mov	r6, r0
    d9ae:	461a      	mov	r2, r3
    d9b0:	4628      	mov	r0, r5
    d9b2:	2300      	movs	r3, #0
    d9b4:	6023      	str	r3, [r4, #0]
    d9b6:	f001 fc6b 	bl	f290 <_read>
    d9ba:	1c43      	adds	r3, r0, #1
    d9bc:	d000      	beq.n	d9c0 <_read_r+0x1c>
    d9be:	bd70      	pop	{r4, r5, r6, pc}
    d9c0:	6823      	ldr	r3, [r4, #0]
    d9c2:	2b00      	cmp	r3, #0
    d9c4:	d0fb      	beq.n	d9be <_read_r+0x1a>
    d9c6:	6033      	str	r3, [r6, #0]
    d9c8:	bd70      	pop	{r4, r5, r6, pc}
    d9ca:	bf00      	nop
    d9cc:	000200a4 	.word	0x000200a4

0000d9d0 <_realloc_r>:
    d9d0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    d9d4:	4617      	mov	r7, r2
    d9d6:	2900      	cmp	r1, #0
    d9d8:	f000 80bb 	beq.w	db52 <_realloc_r+0x182>
    d9dc:	f107 040b 	add.w	r4, r7, #11
    d9e0:	4681      	mov	r9, r0
    d9e2:	460d      	mov	r5, r1
    d9e4:	f7fd ffde 	bl	b9a4 <__malloc_lock>
    d9e8:	2c16      	cmp	r4, #22
    d9ea:	d85e      	bhi.n	daaa <_realloc_r+0xda>
    d9ec:	2410      	movs	r4, #16
    d9ee:	4622      	mov	r2, r4
    d9f0:	42a7      	cmp	r7, r4
    d9f2:	d85f      	bhi.n	dab4 <_realloc_r+0xe4>
    d9f4:	f855 ec04 	ldr.w	lr, [r5, #-4]
    d9f8:	f02e 0603 	bic.w	r6, lr, #3
    d9fc:	f1a5 0808 	sub.w	r8, r5, #8
    da00:	4296      	cmp	r6, r2
    da02:	eb08 0a06 	add.w	sl, r8, r6
    da06:	f280 8081 	bge.w	db0c <_realloc_r+0x13c>
    da0a:	4bcb      	ldr	r3, [pc, #812]	; (dd38 <_realloc_r+0x368>)
    da0c:	f8da 0004 	ldr.w	r0, [sl, #4]
    da10:	6899      	ldr	r1, [r3, #8]
    da12:	4551      	cmp	r1, sl
    da14:	f000 80b5 	beq.w	db82 <_realloc_r+0x1b2>
    da18:	f020 0301 	bic.w	r3, r0, #1
    da1c:	4453      	add	r3, sl
    da1e:	685b      	ldr	r3, [r3, #4]
    da20:	07db      	lsls	r3, r3, #31
    da22:	f100 808a 	bmi.w	db3a <_realloc_r+0x16a>
    da26:	f020 0003 	bic.w	r0, r0, #3
    da2a:	1833      	adds	r3, r6, r0
    da2c:	4293      	cmp	r3, r2
    da2e:	f280 8112 	bge.w	dc56 <_realloc_r+0x286>
    da32:	f01e 0f01 	tst.w	lr, #1
    da36:	d10f      	bne.n	da58 <_realloc_r+0x88>
    da38:	f855 3c08 	ldr.w	r3, [r5, #-8]
    da3c:	eba8 0b03 	sub.w	fp, r8, r3
    da40:	f8db 1004 	ldr.w	r1, [fp, #4]
    da44:	f021 0103 	bic.w	r1, r1, #3
    da48:	4408      	add	r0, r1
    da4a:	1983      	adds	r3, r0, r6
    da4c:	4293      	cmp	r3, r2
    da4e:	f280 8116 	bge.w	dc7e <_realloc_r+0x2ae>
    da52:	1873      	adds	r3, r6, r1
    da54:	4293      	cmp	r3, r2
    da56:	da34      	bge.n	dac2 <_realloc_r+0xf2>
    da58:	4639      	mov	r1, r7
    da5a:	4648      	mov	r0, r9
    da5c:	f7fd fc06 	bl	b26c <_malloc_r>
    da60:	4607      	mov	r7, r0
    da62:	b1e0      	cbz	r0, da9e <_realloc_r+0xce>
    da64:	f855 3c04 	ldr.w	r3, [r5, #-4]
    da68:	f023 0301 	bic.w	r3, r3, #1
    da6c:	4443      	add	r3, r8
    da6e:	f1a0 0208 	sub.w	r2, r0, #8
    da72:	4293      	cmp	r3, r2
    da74:	f000 80f7 	beq.w	dc66 <_realloc_r+0x296>
    da78:	1f32      	subs	r2, r6, #4
    da7a:	2a24      	cmp	r2, #36	; 0x24
    da7c:	f200 80fb 	bhi.w	dc76 <_realloc_r+0x2a6>
    da80:	2a13      	cmp	r2, #19
    da82:	6829      	ldr	r1, [r5, #0]
    da84:	f200 80c9 	bhi.w	dc1a <_realloc_r+0x24a>
    da88:	4603      	mov	r3, r0
    da8a:	462a      	mov	r2, r5
    da8c:	6019      	str	r1, [r3, #0]
    da8e:	6851      	ldr	r1, [r2, #4]
    da90:	6059      	str	r1, [r3, #4]
    da92:	6892      	ldr	r2, [r2, #8]
    da94:	609a      	str	r2, [r3, #8]
    da96:	4629      	mov	r1, r5
    da98:	4648      	mov	r0, r9
    da9a:	f7fd fa1b 	bl	aed4 <_free_r>
    da9e:	4648      	mov	r0, r9
    daa0:	f7fd ff82 	bl	b9a8 <__malloc_unlock>
    daa4:	4638      	mov	r0, r7
    daa6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    daaa:	f024 0407 	bic.w	r4, r4, #7
    daae:	2c00      	cmp	r4, #0
    dab0:	4622      	mov	r2, r4
    dab2:	da9d      	bge.n	d9f0 <_realloc_r+0x20>
    dab4:	230c      	movs	r3, #12
    dab6:	f8c9 3000 	str.w	r3, [r9]
    daba:	2700      	movs	r7, #0
    dabc:	4638      	mov	r0, r7
    dabe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    dac2:	465f      	mov	r7, fp
    dac4:	f8db 100c 	ldr.w	r1, [fp, #12]
    dac8:	f857 0f08 	ldr.w	r0, [r7, #8]!
    dacc:	1f32      	subs	r2, r6, #4
    dace:	2a24      	cmp	r2, #36	; 0x24
    dad0:	60c1      	str	r1, [r0, #12]
    dad2:	eb0b 0a03 	add.w	sl, fp, r3
    dad6:	6088      	str	r0, [r1, #8]
    dad8:	f200 80d9 	bhi.w	dc8e <_realloc_r+0x2be>
    dadc:	2a13      	cmp	r2, #19
    dade:	6829      	ldr	r1, [r5, #0]
    dae0:	f240 80d3 	bls.w	dc8a <_realloc_r+0x2ba>
    dae4:	f8cb 1008 	str.w	r1, [fp, #8]
    dae8:	6869      	ldr	r1, [r5, #4]
    daea:	f8cb 100c 	str.w	r1, [fp, #12]
    daee:	2a1b      	cmp	r2, #27
    daf0:	68a9      	ldr	r1, [r5, #8]
    daf2:	f200 80e0 	bhi.w	dcb6 <_realloc_r+0x2e6>
    daf6:	f10b 0210 	add.w	r2, fp, #16
    dafa:	3508      	adds	r5, #8
    dafc:	6011      	str	r1, [r2, #0]
    dafe:	6869      	ldr	r1, [r5, #4]
    db00:	6051      	str	r1, [r2, #4]
    db02:	68a9      	ldr	r1, [r5, #8]
    db04:	6091      	str	r1, [r2, #8]
    db06:	461e      	mov	r6, r3
    db08:	46d8      	mov	r8, fp
    db0a:	463d      	mov	r5, r7
    db0c:	f8d8 3004 	ldr.w	r3, [r8, #4]
    db10:	1b32      	subs	r2, r6, r4
    db12:	2a0f      	cmp	r2, #15
    db14:	f003 0301 	and.w	r3, r3, #1
    db18:	d820      	bhi.n	db5c <_realloc_r+0x18c>
    db1a:	4333      	orrs	r3, r6
    db1c:	f8c8 3004 	str.w	r3, [r8, #4]
    db20:	f8da 3004 	ldr.w	r3, [sl, #4]
    db24:	f043 0301 	orr.w	r3, r3, #1
    db28:	f8ca 3004 	str.w	r3, [sl, #4]
    db2c:	4648      	mov	r0, r9
    db2e:	462f      	mov	r7, r5
    db30:	f7fd ff3a 	bl	b9a8 <__malloc_unlock>
    db34:	4638      	mov	r0, r7
    db36:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    db3a:	f01e 0f01 	tst.w	lr, #1
    db3e:	d18b      	bne.n	da58 <_realloc_r+0x88>
    db40:	f855 3c08 	ldr.w	r3, [r5, #-8]
    db44:	eba8 0b03 	sub.w	fp, r8, r3
    db48:	f8db 1004 	ldr.w	r1, [fp, #4]
    db4c:	f021 0103 	bic.w	r1, r1, #3
    db50:	e77f      	b.n	da52 <_realloc_r+0x82>
    db52:	4611      	mov	r1, r2
    db54:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    db58:	f7fd bb88 	b.w	b26c <_malloc_r>
    db5c:	eb08 0104 	add.w	r1, r8, r4
    db60:	4323      	orrs	r3, r4
    db62:	f042 0201 	orr.w	r2, r2, #1
    db66:	f8c8 3004 	str.w	r3, [r8, #4]
    db6a:	604a      	str	r2, [r1, #4]
    db6c:	f8da 3004 	ldr.w	r3, [sl, #4]
    db70:	f043 0301 	orr.w	r3, r3, #1
    db74:	3108      	adds	r1, #8
    db76:	f8ca 3004 	str.w	r3, [sl, #4]
    db7a:	4648      	mov	r0, r9
    db7c:	f7fd f9aa 	bl	aed4 <_free_r>
    db80:	e7d4      	b.n	db2c <_realloc_r+0x15c>
    db82:	f020 0003 	bic.w	r0, r0, #3
    db86:	1831      	adds	r1, r6, r0
    db88:	f104 0c10 	add.w	ip, r4, #16
    db8c:	4561      	cmp	r1, ip
    db8e:	da4f      	bge.n	dc30 <_realloc_r+0x260>
    db90:	f01e 0f01 	tst.w	lr, #1
    db94:	f47f af60 	bne.w	da58 <_realloc_r+0x88>
    db98:	f855 1c08 	ldr.w	r1, [r5, #-8]
    db9c:	eba8 0b01 	sub.w	fp, r8, r1
    dba0:	f8db 1004 	ldr.w	r1, [fp, #4]
    dba4:	f021 0103 	bic.w	r1, r1, #3
    dba8:	4408      	add	r0, r1
    dbaa:	eb00 0a06 	add.w	sl, r0, r6
    dbae:	45d4      	cmp	ip, sl
    dbb0:	f73f af4f 	bgt.w	da52 <_realloc_r+0x82>
    dbb4:	465f      	mov	r7, fp
    dbb6:	f8db 100c 	ldr.w	r1, [fp, #12]
    dbba:	f857 0f08 	ldr.w	r0, [r7, #8]!
    dbbe:	1f32      	subs	r2, r6, #4
    dbc0:	2a24      	cmp	r2, #36	; 0x24
    dbc2:	60c1      	str	r1, [r0, #12]
    dbc4:	6088      	str	r0, [r1, #8]
    dbc6:	f200 8099 	bhi.w	dcfc <_realloc_r+0x32c>
    dbca:	2a13      	cmp	r2, #19
    dbcc:	6829      	ldr	r1, [r5, #0]
    dbce:	f240 8093 	bls.w	dcf8 <_realloc_r+0x328>
    dbd2:	f8cb 1008 	str.w	r1, [fp, #8]
    dbd6:	6869      	ldr	r1, [r5, #4]
    dbd8:	f8cb 100c 	str.w	r1, [fp, #12]
    dbdc:	2a1b      	cmp	r2, #27
    dbde:	68a9      	ldr	r1, [r5, #8]
    dbe0:	f200 8092 	bhi.w	dd08 <_realloc_r+0x338>
    dbe4:	f10b 0210 	add.w	r2, fp, #16
    dbe8:	3508      	adds	r5, #8
    dbea:	6011      	str	r1, [r2, #0]
    dbec:	6869      	ldr	r1, [r5, #4]
    dbee:	6051      	str	r1, [r2, #4]
    dbf0:	68a9      	ldr	r1, [r5, #8]
    dbf2:	6091      	str	r1, [r2, #8]
    dbf4:	eb0b 0104 	add.w	r1, fp, r4
    dbf8:	ebaa 0204 	sub.w	r2, sl, r4
    dbfc:	f042 0201 	orr.w	r2, r2, #1
    dc00:	6099      	str	r1, [r3, #8]
    dc02:	604a      	str	r2, [r1, #4]
    dc04:	f8db 3004 	ldr.w	r3, [fp, #4]
    dc08:	f003 0301 	and.w	r3, r3, #1
    dc0c:	431c      	orrs	r4, r3
    dc0e:	4648      	mov	r0, r9
    dc10:	f8cb 4004 	str.w	r4, [fp, #4]
    dc14:	f7fd fec8 	bl	b9a8 <__malloc_unlock>
    dc18:	e750      	b.n	dabc <_realloc_r+0xec>
    dc1a:	6001      	str	r1, [r0, #0]
    dc1c:	686b      	ldr	r3, [r5, #4]
    dc1e:	6043      	str	r3, [r0, #4]
    dc20:	2a1b      	cmp	r2, #27
    dc22:	d83c      	bhi.n	dc9e <_realloc_r+0x2ce>
    dc24:	f105 0208 	add.w	r2, r5, #8
    dc28:	f100 0308 	add.w	r3, r0, #8
    dc2c:	68a9      	ldr	r1, [r5, #8]
    dc2e:	e72d      	b.n	da8c <_realloc_r+0xbc>
    dc30:	eb08 0004 	add.w	r0, r8, r4
    dc34:	1b0a      	subs	r2, r1, r4
    dc36:	f042 0201 	orr.w	r2, r2, #1
    dc3a:	6098      	str	r0, [r3, #8]
    dc3c:	6042      	str	r2, [r0, #4]
    dc3e:	f855 3c04 	ldr.w	r3, [r5, #-4]
    dc42:	f003 0301 	and.w	r3, r3, #1
    dc46:	431c      	orrs	r4, r3
    dc48:	4648      	mov	r0, r9
    dc4a:	f845 4c04 	str.w	r4, [r5, #-4]
    dc4e:	f7fd feab 	bl	b9a8 <__malloc_unlock>
    dc52:	462f      	mov	r7, r5
    dc54:	e732      	b.n	dabc <_realloc_r+0xec>
    dc56:	e9da 1202 	ldrd	r1, r2, [sl, #8]
    dc5a:	461e      	mov	r6, r3
    dc5c:	60ca      	str	r2, [r1, #12]
    dc5e:	eb08 0a03 	add.w	sl, r8, r3
    dc62:	6091      	str	r1, [r2, #8]
    dc64:	e752      	b.n	db0c <_realloc_r+0x13c>
    dc66:	f850 3c04 	ldr.w	r3, [r0, #-4]
    dc6a:	f023 0303 	bic.w	r3, r3, #3
    dc6e:	441e      	add	r6, r3
    dc70:	eb08 0a06 	add.w	sl, r8, r6
    dc74:	e74a      	b.n	db0c <_realloc_r+0x13c>
    dc76:	4629      	mov	r1, r5
    dc78:	f7ff fe2c 	bl	d8d4 <memmove>
    dc7c:	e70b      	b.n	da96 <_realloc_r+0xc6>
    dc7e:	e9da 1202 	ldrd	r1, r2, [sl, #8]
    dc82:	465f      	mov	r7, fp
    dc84:	60ca      	str	r2, [r1, #12]
    dc86:	6091      	str	r1, [r2, #8]
    dc88:	e71c      	b.n	dac4 <_realloc_r+0xf4>
    dc8a:	463a      	mov	r2, r7
    dc8c:	e736      	b.n	dafc <_realloc_r+0x12c>
    dc8e:	4629      	mov	r1, r5
    dc90:	4638      	mov	r0, r7
    dc92:	461e      	mov	r6, r3
    dc94:	46d8      	mov	r8, fp
    dc96:	f7ff fe1d 	bl	d8d4 <memmove>
    dc9a:	463d      	mov	r5, r7
    dc9c:	e736      	b.n	db0c <_realloc_r+0x13c>
    dc9e:	68ab      	ldr	r3, [r5, #8]
    dca0:	6083      	str	r3, [r0, #8]
    dca2:	68eb      	ldr	r3, [r5, #12]
    dca4:	60c3      	str	r3, [r0, #12]
    dca6:	2a24      	cmp	r2, #36	; 0x24
    dca8:	d011      	beq.n	dcce <_realloc_r+0x2fe>
    dcaa:	f105 0210 	add.w	r2, r5, #16
    dcae:	f100 0310 	add.w	r3, r0, #16
    dcb2:	6929      	ldr	r1, [r5, #16]
    dcb4:	e6ea      	b.n	da8c <_realloc_r+0xbc>
    dcb6:	f8cb 1010 	str.w	r1, [fp, #16]
    dcba:	68e9      	ldr	r1, [r5, #12]
    dcbc:	f8cb 1014 	str.w	r1, [fp, #20]
    dcc0:	2a24      	cmp	r2, #36	; 0x24
    dcc2:	d00e      	beq.n	dce2 <_realloc_r+0x312>
    dcc4:	6929      	ldr	r1, [r5, #16]
    dcc6:	f10b 0218 	add.w	r2, fp, #24
    dcca:	3510      	adds	r5, #16
    dccc:	e716      	b.n	dafc <_realloc_r+0x12c>
    dcce:	692b      	ldr	r3, [r5, #16]
    dcd0:	6103      	str	r3, [r0, #16]
    dcd2:	696b      	ldr	r3, [r5, #20]
    dcd4:	6143      	str	r3, [r0, #20]
    dcd6:	69a9      	ldr	r1, [r5, #24]
    dcd8:	f105 0218 	add.w	r2, r5, #24
    dcdc:	f100 0318 	add.w	r3, r0, #24
    dce0:	e6d4      	b.n	da8c <_realloc_r+0xbc>
    dce2:	692a      	ldr	r2, [r5, #16]
    dce4:	f8cb 2018 	str.w	r2, [fp, #24]
    dce8:	696a      	ldr	r2, [r5, #20]
    dcea:	f8cb 201c 	str.w	r2, [fp, #28]
    dcee:	69a9      	ldr	r1, [r5, #24]
    dcf0:	f10b 0220 	add.w	r2, fp, #32
    dcf4:	3518      	adds	r5, #24
    dcf6:	e701      	b.n	dafc <_realloc_r+0x12c>
    dcf8:	463a      	mov	r2, r7
    dcfa:	e776      	b.n	dbea <_realloc_r+0x21a>
    dcfc:	4629      	mov	r1, r5
    dcfe:	4638      	mov	r0, r7
    dd00:	f7ff fde8 	bl	d8d4 <memmove>
    dd04:	4b0c      	ldr	r3, [pc, #48]	; (dd38 <_realloc_r+0x368>)
    dd06:	e775      	b.n	dbf4 <_realloc_r+0x224>
    dd08:	f8cb 1010 	str.w	r1, [fp, #16]
    dd0c:	68e9      	ldr	r1, [r5, #12]
    dd0e:	f8cb 1014 	str.w	r1, [fp, #20]
    dd12:	2a24      	cmp	r2, #36	; 0x24
    dd14:	d004      	beq.n	dd20 <_realloc_r+0x350>
    dd16:	6929      	ldr	r1, [r5, #16]
    dd18:	f10b 0218 	add.w	r2, fp, #24
    dd1c:	3510      	adds	r5, #16
    dd1e:	e764      	b.n	dbea <_realloc_r+0x21a>
    dd20:	692a      	ldr	r2, [r5, #16]
    dd22:	f8cb 2018 	str.w	r2, [fp, #24]
    dd26:	696a      	ldr	r2, [r5, #20]
    dd28:	f8cb 201c 	str.w	r2, [fp, #28]
    dd2c:	69a9      	ldr	r1, [r5, #24]
    dd2e:	f10b 0220 	add.w	r2, fp, #32
    dd32:	3518      	adds	r5, #24
    dd34:	e759      	b.n	dbea <_realloc_r+0x21a>
    dd36:	bf00      	nop
    dd38:	0001fad0 	.word	0x0001fad0

0000dd3c <cleanup_glue>:
    dd3c:	b538      	push	{r3, r4, r5, lr}
    dd3e:	460c      	mov	r4, r1
    dd40:	6809      	ldr	r1, [r1, #0]
    dd42:	4605      	mov	r5, r0
    dd44:	b109      	cbz	r1, dd4a <cleanup_glue+0xe>
    dd46:	f7ff fff9 	bl	dd3c <cleanup_glue>
    dd4a:	4621      	mov	r1, r4
    dd4c:	4628      	mov	r0, r5
    dd4e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    dd52:	f7fd b8bf 	b.w	aed4 <_free_r>
    dd56:	bf00      	nop

0000dd58 <_reclaim_reent>:
    dd58:	4b20      	ldr	r3, [pc, #128]	; (dddc <_reclaim_reent+0x84>)
    dd5a:	681b      	ldr	r3, [r3, #0]
    dd5c:	4283      	cmp	r3, r0
    dd5e:	d03b      	beq.n	ddd8 <_reclaim_reent+0x80>
    dd60:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    dd62:	b570      	push	{r4, r5, r6, lr}
    dd64:	4605      	mov	r5, r0
    dd66:	b18b      	cbz	r3, dd8c <_reclaim_reent+0x34>
    dd68:	2600      	movs	r6, #0
    dd6a:	5999      	ldr	r1, [r3, r6]
    dd6c:	b139      	cbz	r1, dd7e <_reclaim_reent+0x26>
    dd6e:	680c      	ldr	r4, [r1, #0]
    dd70:	4628      	mov	r0, r5
    dd72:	f7fd f8af 	bl	aed4 <_free_r>
    dd76:	4621      	mov	r1, r4
    dd78:	2c00      	cmp	r4, #0
    dd7a:	d1f8      	bne.n	dd6e <_reclaim_reent+0x16>
    dd7c:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    dd7e:	3604      	adds	r6, #4
    dd80:	2e80      	cmp	r6, #128	; 0x80
    dd82:	d1f2      	bne.n	dd6a <_reclaim_reent+0x12>
    dd84:	4619      	mov	r1, r3
    dd86:	4628      	mov	r0, r5
    dd88:	f7fd f8a4 	bl	aed4 <_free_r>
    dd8c:	6c29      	ldr	r1, [r5, #64]	; 0x40
    dd8e:	b111      	cbz	r1, dd96 <_reclaim_reent+0x3e>
    dd90:	4628      	mov	r0, r5
    dd92:	f7fd f89f 	bl	aed4 <_free_r>
    dd96:	f8d5 1148 	ldr.w	r1, [r5, #328]	; 0x148
    dd9a:	b151      	cbz	r1, ddb2 <_reclaim_reent+0x5a>
    dd9c:	f505 76a6 	add.w	r6, r5, #332	; 0x14c
    dda0:	42b1      	cmp	r1, r6
    dda2:	d006      	beq.n	ddb2 <_reclaim_reent+0x5a>
    dda4:	680c      	ldr	r4, [r1, #0]
    dda6:	4628      	mov	r0, r5
    dda8:	f7fd f894 	bl	aed4 <_free_r>
    ddac:	42a6      	cmp	r6, r4
    ddae:	4621      	mov	r1, r4
    ddb0:	d1f8      	bne.n	dda4 <_reclaim_reent+0x4c>
    ddb2:	6d69      	ldr	r1, [r5, #84]	; 0x54
    ddb4:	b111      	cbz	r1, ddbc <_reclaim_reent+0x64>
    ddb6:	4628      	mov	r0, r5
    ddb8:	f7fd f88c 	bl	aed4 <_free_r>
    ddbc:	6bab      	ldr	r3, [r5, #56]	; 0x38
    ddbe:	b153      	cbz	r3, ddd6 <_reclaim_reent+0x7e>
    ddc0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    ddc2:	4628      	mov	r0, r5
    ddc4:	4798      	blx	r3
    ddc6:	f8d5 12e0 	ldr.w	r1, [r5, #736]	; 0x2e0
    ddca:	b121      	cbz	r1, ddd6 <_reclaim_reent+0x7e>
    ddcc:	4628      	mov	r0, r5
    ddce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    ddd2:	f7ff bfb3 	b.w	dd3c <cleanup_glue>
    ddd6:	bd70      	pop	{r4, r5, r6, pc}
    ddd8:	4770      	bx	lr
    ddda:	bf00      	nop
    dddc:	0001f6a0 	.word	0x0001f6a0
    dde0:	eba2 0003 	sub.w	r0, r2, r3
    dde4:	4770      	bx	lr
    dde6:	bf00      	nop

0000dde8 <strcmp>:
    dde8:	7802      	ldrb	r2, [r0, #0]
    ddea:	780b      	ldrb	r3, [r1, #0]
    ddec:	2a01      	cmp	r2, #1
    ddee:	bf28      	it	cs
    ddf0:	429a      	cmpcs	r2, r3
    ddf2:	d1f5      	bne.n	dde0 <_reclaim_reent+0x88>
    ddf4:	e96d 4504 	strd	r4, r5, [sp, #-16]!
    ddf8:	ea40 0401 	orr.w	r4, r0, r1
    ddfc:	e9cd 6702 	strd	r6, r7, [sp, #8]
    de00:	f06f 0c00 	mvn.w	ip, #0
    de04:	ea4f 7244 	mov.w	r2, r4, lsl #29
    de08:	b312      	cbz	r2, de50 <strcmp+0x68>
    de0a:	ea80 0401 	eor.w	r4, r0, r1
    de0e:	f014 0f07 	tst.w	r4, #7
    de12:	d16a      	bne.n	deea <strcmp+0x102>
    de14:	f000 0407 	and.w	r4, r0, #7
    de18:	f020 0007 	bic.w	r0, r0, #7
    de1c:	f004 0503 	and.w	r5, r4, #3
    de20:	f021 0107 	bic.w	r1, r1, #7
    de24:	ea4f 05c5 	mov.w	r5, r5, lsl #3
    de28:	e8f0 2304 	ldrd	r2, r3, [r0], #16
    de2c:	f014 0f04 	tst.w	r4, #4
    de30:	e8f1 6704 	ldrd	r6, r7, [r1], #16
    de34:	fa0c f405 	lsl.w	r4, ip, r5
    de38:	ea62 0204 	orn	r2, r2, r4
    de3c:	ea66 0604 	orn	r6, r6, r4
    de40:	d00a      	beq.n	de58 <strcmp+0x70>
    de42:	ea63 0304 	orn	r3, r3, r4
    de46:	4662      	mov	r2, ip
    de48:	ea67 0704 	orn	r7, r7, r4
    de4c:	4666      	mov	r6, ip
    de4e:	e003      	b.n	de58 <strcmp+0x70>
    de50:	e8f0 2304 	ldrd	r2, r3, [r0], #16
    de54:	e8f1 6704 	ldrd	r6, r7, [r1], #16
    de58:	fa82 f54c 	uadd8	r5, r2, ip
    de5c:	ea82 0406 	eor.w	r4, r2, r6
    de60:	faa4 f48c 	sel	r4, r4, ip
    de64:	bb6c      	cbnz	r4, dec2 <strcmp+0xda>
    de66:	fa83 f54c 	uadd8	r5, r3, ip
    de6a:	ea83 0507 	eor.w	r5, r3, r7
    de6e:	faa5 f58c 	sel	r5, r5, ip
    de72:	b995      	cbnz	r5, de9a <strcmp+0xb2>
    de74:	e950 2302 	ldrd	r2, r3, [r0, #-8]
    de78:	e951 6702 	ldrd	r6, r7, [r1, #-8]
    de7c:	fa82 f54c 	uadd8	r5, r2, ip
    de80:	ea82 0406 	eor.w	r4, r2, r6
    de84:	faa4 f48c 	sel	r4, r4, ip
    de88:	fa83 f54c 	uadd8	r5, r3, ip
    de8c:	ea83 0507 	eor.w	r5, r3, r7
    de90:	faa5 f58c 	sel	r5, r5, ip
    de94:	4325      	orrs	r5, r4
    de96:	d0db      	beq.n	de50 <strcmp+0x68>
    de98:	b99c      	cbnz	r4, dec2 <strcmp+0xda>
    de9a:	ba2d      	rev	r5, r5
    de9c:	fab5 f485 	clz	r4, r5
    dea0:	f024 0407 	bic.w	r4, r4, #7
    dea4:	fa27 f104 	lsr.w	r1, r7, r4
    dea8:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
    deac:	fa23 f304 	lsr.w	r3, r3, r4
    deb0:	f003 00ff 	and.w	r0, r3, #255	; 0xff
    deb4:	f001 01ff 	and.w	r1, r1, #255	; 0xff
    deb8:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    debc:	eba0 0001 	sub.w	r0, r0, r1
    dec0:	4770      	bx	lr
    dec2:	ba24      	rev	r4, r4
    dec4:	fab4 f484 	clz	r4, r4
    dec8:	f024 0407 	bic.w	r4, r4, #7
    decc:	fa26 f104 	lsr.w	r1, r6, r4
    ded0:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
    ded4:	fa22 f204 	lsr.w	r2, r2, r4
    ded8:	f002 00ff 	and.w	r0, r2, #255	; 0xff
    dedc:	f001 01ff 	and.w	r1, r1, #255	; 0xff
    dee0:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    dee4:	eba0 0001 	sub.w	r0, r0, r1
    dee8:	4770      	bx	lr
    deea:	f014 0f03 	tst.w	r4, #3
    deee:	d13c      	bne.n	df6a <strcmp+0x182>
    def0:	f010 0403 	ands.w	r4, r0, #3
    def4:	d128      	bne.n	df48 <strcmp+0x160>
    def6:	f850 2b08 	ldr.w	r2, [r0], #8
    defa:	f851 3b08 	ldr.w	r3, [r1], #8
    defe:	fa82 f54c 	uadd8	r5, r2, ip
    df02:	ea82 0503 	eor.w	r5, r2, r3
    df06:	faa5 f58c 	sel	r5, r5, ip
    df0a:	b95d      	cbnz	r5, df24 <strcmp+0x13c>
    df0c:	f850 2c04 	ldr.w	r2, [r0, #-4]
    df10:	f851 3c04 	ldr.w	r3, [r1, #-4]
    df14:	fa82 f54c 	uadd8	r5, r2, ip
    df18:	ea82 0503 	eor.w	r5, r2, r3
    df1c:	faa5 f58c 	sel	r5, r5, ip
    df20:	2d00      	cmp	r5, #0
    df22:	d0e8      	beq.n	def6 <strcmp+0x10e>
    df24:	ba2d      	rev	r5, r5
    df26:	fab5 f485 	clz	r4, r5
    df2a:	f024 0407 	bic.w	r4, r4, #7
    df2e:	fa23 f104 	lsr.w	r1, r3, r4
    df32:	fa22 f204 	lsr.w	r2, r2, r4
    df36:	f002 00ff 	and.w	r0, r2, #255	; 0xff
    df3a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
    df3e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    df42:	eba0 0001 	sub.w	r0, r0, r1
    df46:	4770      	bx	lr
    df48:	ea4f 04c4 	mov.w	r4, r4, lsl #3
    df4c:	f020 0003 	bic.w	r0, r0, #3
    df50:	f850 2b08 	ldr.w	r2, [r0], #8
    df54:	f021 0103 	bic.w	r1, r1, #3
    df58:	f851 3b08 	ldr.w	r3, [r1], #8
    df5c:	fa0c f404 	lsl.w	r4, ip, r4
    df60:	ea62 0204 	orn	r2, r2, r4
    df64:	ea63 0304 	orn	r3, r3, r4
    df68:	e7c9      	b.n	defe <strcmp+0x116>
    df6a:	f010 0403 	ands.w	r4, r0, #3
    df6e:	d01a      	beq.n	dfa6 <strcmp+0x1be>
    df70:	eba1 0104 	sub.w	r1, r1, r4
    df74:	f020 0003 	bic.w	r0, r0, #3
    df78:	07e4      	lsls	r4, r4, #31
    df7a:	f850 2b04 	ldr.w	r2, [r0], #4
    df7e:	d006      	beq.n	df8e <strcmp+0x1a6>
    df80:	d20f      	bcs.n	dfa2 <strcmp+0x1ba>
    df82:	788b      	ldrb	r3, [r1, #2]
    df84:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
    df88:	1ae4      	subs	r4, r4, r3
    df8a:	d106      	bne.n	df9a <strcmp+0x1b2>
    df8c:	b12b      	cbz	r3, df9a <strcmp+0x1b2>
    df8e:	78cb      	ldrb	r3, [r1, #3]
    df90:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
    df94:	1ae4      	subs	r4, r4, r3
    df96:	d100      	bne.n	df9a <strcmp+0x1b2>
    df98:	b91b      	cbnz	r3, dfa2 <strcmp+0x1ba>
    df9a:	4620      	mov	r0, r4
    df9c:	f85d 4b10 	ldr.w	r4, [sp], #16
    dfa0:	4770      	bx	lr
    dfa2:	f101 0104 	add.w	r1, r1, #4
    dfa6:	f850 2b04 	ldr.w	r2, [r0], #4
    dfaa:	07cc      	lsls	r4, r1, #31
    dfac:	f021 0103 	bic.w	r1, r1, #3
    dfb0:	f851 3b04 	ldr.w	r3, [r1], #4
    dfb4:	d848      	bhi.n	e048 <strcmp+0x260>
    dfb6:	d224      	bcs.n	e002 <strcmp+0x21a>
    dfb8:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
    dfbc:	fa82 f54c 	uadd8	r5, r2, ip
    dfc0:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
    dfc4:	faa5 f58c 	sel	r5, r5, ip
    dfc8:	d10a      	bne.n	dfe0 <strcmp+0x1f8>
    dfca:	b965      	cbnz	r5, dfe6 <strcmp+0x1fe>
    dfcc:	f851 3b04 	ldr.w	r3, [r1], #4
    dfd0:	ea84 0402 	eor.w	r4, r4, r2
    dfd4:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
    dfd8:	d10e      	bne.n	dff8 <strcmp+0x210>
    dfda:	f850 2b04 	ldr.w	r2, [r0], #4
    dfde:	e7eb      	b.n	dfb8 <strcmp+0x1d0>
    dfe0:	ea4f 2313 	mov.w	r3, r3, lsr #8
    dfe4:	e055      	b.n	e092 <strcmp+0x2aa>
    dfe6:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
    dfea:	d14d      	bne.n	e088 <strcmp+0x2a0>
    dfec:	7808      	ldrb	r0, [r1, #0]
    dfee:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    dff2:	f1c0 0000 	rsb	r0, r0, #0
    dff6:	4770      	bx	lr
    dff8:	ea4f 6212 	mov.w	r2, r2, lsr #24
    dffc:	f003 03ff 	and.w	r3, r3, #255	; 0xff
    e000:	e047      	b.n	e092 <strcmp+0x2aa>
    e002:	ea02 441c 	and.w	r4, r2, ip, lsr #16
    e006:	fa82 f54c 	uadd8	r5, r2, ip
    e00a:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
    e00e:	faa5 f58c 	sel	r5, r5, ip
    e012:	d10a      	bne.n	e02a <strcmp+0x242>
    e014:	b965      	cbnz	r5, e030 <strcmp+0x248>
    e016:	f851 3b04 	ldr.w	r3, [r1], #4
    e01a:	ea84 0402 	eor.w	r4, r4, r2
    e01e:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
    e022:	d10c      	bne.n	e03e <strcmp+0x256>
    e024:	f850 2b04 	ldr.w	r2, [r0], #4
    e028:	e7eb      	b.n	e002 <strcmp+0x21a>
    e02a:	ea4f 4313 	mov.w	r3, r3, lsr #16
    e02e:	e030      	b.n	e092 <strcmp+0x2aa>
    e030:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
    e034:	d128      	bne.n	e088 <strcmp+0x2a0>
    e036:	880b      	ldrh	r3, [r1, #0]
    e038:	ea4f 4212 	mov.w	r2, r2, lsr #16
    e03c:	e029      	b.n	e092 <strcmp+0x2aa>
    e03e:	ea4f 4212 	mov.w	r2, r2, lsr #16
    e042:	ea03 431c 	and.w	r3, r3, ip, lsr #16
    e046:	e024      	b.n	e092 <strcmp+0x2aa>
    e048:	f002 04ff 	and.w	r4, r2, #255	; 0xff
    e04c:	fa82 f54c 	uadd8	r5, r2, ip
    e050:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
    e054:	faa5 f58c 	sel	r5, r5, ip
    e058:	d10a      	bne.n	e070 <strcmp+0x288>
    e05a:	b965      	cbnz	r5, e076 <strcmp+0x28e>
    e05c:	f851 3b04 	ldr.w	r3, [r1], #4
    e060:	ea84 0402 	eor.w	r4, r4, r2
    e064:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
    e068:	d109      	bne.n	e07e <strcmp+0x296>
    e06a:	f850 2b04 	ldr.w	r2, [r0], #4
    e06e:	e7eb      	b.n	e048 <strcmp+0x260>
    e070:	ea4f 6313 	mov.w	r3, r3, lsr #24
    e074:	e00d      	b.n	e092 <strcmp+0x2aa>
    e076:	f015 0fff 	tst.w	r5, #255	; 0xff
    e07a:	d105      	bne.n	e088 <strcmp+0x2a0>
    e07c:	680b      	ldr	r3, [r1, #0]
    e07e:	ea4f 2212 	mov.w	r2, r2, lsr #8
    e082:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
    e086:	e004      	b.n	e092 <strcmp+0x2aa>
    e088:	f04f 0000 	mov.w	r0, #0
    e08c:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    e090:	4770      	bx	lr
    e092:	ba12      	rev	r2, r2
    e094:	ba1b      	rev	r3, r3
    e096:	fa82 f44c 	uadd8	r4, r2, ip
    e09a:	ea82 0403 	eor.w	r4, r2, r3
    e09e:	faa4 f58c 	sel	r5, r4, ip
    e0a2:	fab5 f485 	clz	r4, r5
    e0a6:	fa02 f204 	lsl.w	r2, r2, r4
    e0aa:	fa03 f304 	lsl.w	r3, r3, r4
    e0ae:	ea4f 6012 	mov.w	r0, r2, lsr #24
    e0b2:	e8fd 4504 	ldrd	r4, r5, [sp], #16
    e0b6:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
    e0ba:	4770      	bx	lr

0000e0bc <__swbuf_r>:
    e0bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    e0be:	460d      	mov	r5, r1
    e0c0:	4614      	mov	r4, r2
    e0c2:	4606      	mov	r6, r0
    e0c4:	b110      	cbz	r0, e0cc <__swbuf_r+0x10>
    e0c6:	6b83      	ldr	r3, [r0, #56]	; 0x38
    e0c8:	2b00      	cmp	r3, #0
    e0ca:	d043      	beq.n	e154 <__swbuf_r+0x98>
    e0cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    e0d0:	69a3      	ldr	r3, [r4, #24]
    e0d2:	60a3      	str	r3, [r4, #8]
    e0d4:	b291      	uxth	r1, r2
    e0d6:	0708      	lsls	r0, r1, #28
    e0d8:	d51b      	bpl.n	e112 <__swbuf_r+0x56>
    e0da:	6923      	ldr	r3, [r4, #16]
    e0dc:	b1cb      	cbz	r3, e112 <__swbuf_r+0x56>
    e0de:	b2ed      	uxtb	r5, r5
    e0e0:	0489      	lsls	r1, r1, #18
    e0e2:	462f      	mov	r7, r5
    e0e4:	d522      	bpl.n	e12c <__swbuf_r+0x70>
    e0e6:	6822      	ldr	r2, [r4, #0]
    e0e8:	6961      	ldr	r1, [r4, #20]
    e0ea:	1ad3      	subs	r3, r2, r3
    e0ec:	4299      	cmp	r1, r3
    e0ee:	dd29      	ble.n	e144 <__swbuf_r+0x88>
    e0f0:	3301      	adds	r3, #1
    e0f2:	68a1      	ldr	r1, [r4, #8]
    e0f4:	1c50      	adds	r0, r2, #1
    e0f6:	3901      	subs	r1, #1
    e0f8:	60a1      	str	r1, [r4, #8]
    e0fa:	6020      	str	r0, [r4, #0]
    e0fc:	7015      	strb	r5, [r2, #0]
    e0fe:	6962      	ldr	r2, [r4, #20]
    e100:	429a      	cmp	r2, r3
    e102:	d02a      	beq.n	e15a <__swbuf_r+0x9e>
    e104:	89a3      	ldrh	r3, [r4, #12]
    e106:	07db      	lsls	r3, r3, #31
    e108:	d501      	bpl.n	e10e <__swbuf_r+0x52>
    e10a:	2d0a      	cmp	r5, #10
    e10c:	d025      	beq.n	e15a <__swbuf_r+0x9e>
    e10e:	4638      	mov	r0, r7
    e110:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    e112:	4621      	mov	r1, r4
    e114:	4630      	mov	r0, r6
    e116:	f7fb fbd1 	bl	98bc <__swsetup_r>
    e11a:	bb20      	cbnz	r0, e166 <__swbuf_r+0xaa>
    e11c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    e120:	6923      	ldr	r3, [r4, #16]
    e122:	b291      	uxth	r1, r2
    e124:	b2ed      	uxtb	r5, r5
    e126:	0489      	lsls	r1, r1, #18
    e128:	462f      	mov	r7, r5
    e12a:	d4dc      	bmi.n	e0e6 <__swbuf_r+0x2a>
    e12c:	6e61      	ldr	r1, [r4, #100]	; 0x64
    e12e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    e132:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    e136:	81a2      	strh	r2, [r4, #12]
    e138:	6822      	ldr	r2, [r4, #0]
    e13a:	6661      	str	r1, [r4, #100]	; 0x64
    e13c:	6961      	ldr	r1, [r4, #20]
    e13e:	1ad3      	subs	r3, r2, r3
    e140:	4299      	cmp	r1, r3
    e142:	dcd5      	bgt.n	e0f0 <__swbuf_r+0x34>
    e144:	4621      	mov	r1, r4
    e146:	4630      	mov	r0, r6
    e148:	f7fc fd4e 	bl	abe8 <_fflush_r>
    e14c:	b958      	cbnz	r0, e166 <__swbuf_r+0xaa>
    e14e:	6822      	ldr	r2, [r4, #0]
    e150:	2301      	movs	r3, #1
    e152:	e7ce      	b.n	e0f2 <__swbuf_r+0x36>
    e154:	f7fc fe4e 	bl	adf4 <__sinit>
    e158:	e7b8      	b.n	e0cc <__swbuf_r+0x10>
    e15a:	4621      	mov	r1, r4
    e15c:	4630      	mov	r0, r6
    e15e:	f7fc fd43 	bl	abe8 <_fflush_r>
    e162:	2800      	cmp	r0, #0
    e164:	d0d3      	beq.n	e10e <__swbuf_r+0x52>
    e166:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
    e16a:	e7d0      	b.n	e10e <__swbuf_r+0x52>

0000e16c <__swbuf>:
    e16c:	4b02      	ldr	r3, [pc, #8]	; (e178 <__swbuf+0xc>)
    e16e:	460a      	mov	r2, r1
    e170:	4601      	mov	r1, r0
    e172:	6818      	ldr	r0, [r3, #0]
    e174:	f7ff bfa2 	b.w	e0bc <__swbuf_r>
    e178:	0001f6a0 	.word	0x0001f6a0

0000e17c <_wcrtomb_r>:
    e17c:	b5f0      	push	{r4, r5, r6, r7, lr}
    e17e:	4c0b      	ldr	r4, [pc, #44]	; (e1ac <_wcrtomb_r+0x30>)
    e180:	b085      	sub	sp, #20
    e182:	4606      	mov	r6, r0
    e184:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    e188:	461f      	mov	r7, r3
    e18a:	b121      	cbz	r1, e196 <_wcrtomb_r+0x1a>
    e18c:	47a0      	blx	r4
    e18e:	1c43      	adds	r3, r0, #1
    e190:	d006      	beq.n	e1a0 <_wcrtomb_r+0x24>
    e192:	b005      	add	sp, #20
    e194:	bdf0      	pop	{r4, r5, r6, r7, pc}
    e196:	460a      	mov	r2, r1
    e198:	a901      	add	r1, sp, #4
    e19a:	47a0      	blx	r4
    e19c:	1c43      	adds	r3, r0, #1
    e19e:	d1f8      	bne.n	e192 <_wcrtomb_r+0x16>
    e1a0:	2200      	movs	r2, #0
    e1a2:	238a      	movs	r3, #138	; 0x8a
    e1a4:	603a      	str	r2, [r7, #0]
    e1a6:	6033      	str	r3, [r6, #0]
    e1a8:	b005      	add	sp, #20
    e1aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
    e1ac:	0001fee0 	.word	0x0001fee0

0000e1b0 <wcrtomb>:
    e1b0:	b570      	push	{r4, r5, r6, lr}
    e1b2:	4b0f      	ldr	r3, [pc, #60]	; (e1f0 <wcrtomb+0x40>)
    e1b4:	4c0f      	ldr	r4, [pc, #60]	; (e1f4 <wcrtomb+0x44>)
    e1b6:	f8d3 60e0 	ldr.w	r6, [r3, #224]	; 0xe0
    e1ba:	6824      	ldr	r4, [r4, #0]
    e1bc:	b084      	sub	sp, #16
    e1be:	4615      	mov	r5, r2
    e1c0:	b140      	cbz	r0, e1d4 <wcrtomb+0x24>
    e1c2:	460a      	mov	r2, r1
    e1c4:	462b      	mov	r3, r5
    e1c6:	4601      	mov	r1, r0
    e1c8:	4620      	mov	r0, r4
    e1ca:	47b0      	blx	r6
    e1cc:	1c43      	adds	r3, r0, #1
    e1ce:	d008      	beq.n	e1e2 <wcrtomb+0x32>
    e1d0:	b004      	add	sp, #16
    e1d2:	bd70      	pop	{r4, r5, r6, pc}
    e1d4:	4602      	mov	r2, r0
    e1d6:	462b      	mov	r3, r5
    e1d8:	a901      	add	r1, sp, #4
    e1da:	4620      	mov	r0, r4
    e1dc:	47b0      	blx	r6
    e1de:	1c43      	adds	r3, r0, #1
    e1e0:	d1f6      	bne.n	e1d0 <wcrtomb+0x20>
    e1e2:	2200      	movs	r2, #0
    e1e4:	238a      	movs	r3, #138	; 0x8a
    e1e6:	602a      	str	r2, [r5, #0]
    e1e8:	6023      	str	r3, [r4, #0]
    e1ea:	b004      	add	sp, #16
    e1ec:	bd70      	pop	{r4, r5, r6, pc}
    e1ee:	bf00      	nop
    e1f0:	0001fee0 	.word	0x0001fee0
    e1f4:	0001f6a0 	.word	0x0001f6a0

0000e1f8 <_wctomb_r>:
    e1f8:	b410      	push	{r4}
    e1fa:	4c03      	ldr	r4, [pc, #12]	; (e208 <_wctomb_r+0x10>)
    e1fc:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    e200:	46a4      	mov	ip, r4
    e202:	bc10      	pop	{r4}
    e204:	4760      	bx	ip
    e206:	bf00      	nop
    e208:	0001fee0 	.word	0x0001fee0

0000e20c <__ascii_wctomb>:
    e20c:	b149      	cbz	r1, e222 <__ascii_wctomb+0x16>
    e20e:	2aff      	cmp	r2, #255	; 0xff
    e210:	d802      	bhi.n	e218 <__ascii_wctomb+0xc>
    e212:	700a      	strb	r2, [r1, #0]
    e214:	2001      	movs	r0, #1
    e216:	4770      	bx	lr
    e218:	238a      	movs	r3, #138	; 0x8a
    e21a:	6003      	str	r3, [r0, #0]
    e21c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e220:	4770      	bx	lr
    e222:	4608      	mov	r0, r1
    e224:	4770      	bx	lr
    e226:	bf00      	nop

0000e228 <abort>:
    e228:	b508      	push	{r3, lr}
    e22a:	2006      	movs	r0, #6
    e22c:	f000 f890 	bl	e350 <raise>
    e230:	2001      	movs	r0, #1
    e232:	f001 f84b 	bl	f2cc <_exit>
    e236:	bf00      	nop

0000e238 <_init_signal_r.part.0>:
    e238:	b510      	push	{r4, lr}
    e23a:	2180      	movs	r1, #128	; 0x80
    e23c:	4604      	mov	r4, r0
    e23e:	f7fd f815 	bl	b26c <_malloc_r>
    e242:	f8c4 02dc 	str.w	r0, [r4, #732]	; 0x2dc
    e246:	b140      	cbz	r0, e25a <_init_signal_r.part.0+0x22>
    e248:	1f03      	subs	r3, r0, #4
    e24a:	2200      	movs	r2, #0
    e24c:	307c      	adds	r0, #124	; 0x7c
    e24e:	f843 2f04 	str.w	r2, [r3, #4]!
    e252:	4283      	cmp	r3, r0
    e254:	d1fb      	bne.n	e24e <_init_signal_r.part.0+0x16>
    e256:	2000      	movs	r0, #0
    e258:	bd10      	pop	{r4, pc}
    e25a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e25e:	bd10      	pop	{r4, pc}

0000e260 <_init_signal_r>:
    e260:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
    e264:	b10b      	cbz	r3, e26a <_init_signal_r+0xa>
    e266:	2000      	movs	r0, #0
    e268:	4770      	bx	lr
    e26a:	e7e5      	b.n	e238 <_init_signal_r.part.0>

0000e26c <_signal_r>:
    e26c:	291f      	cmp	r1, #31
    e26e:	b570      	push	{r4, r5, r6, lr}
    e270:	4605      	mov	r5, r0
    e272:	d809      	bhi.n	e288 <_signal_r+0x1c>
    e274:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
    e278:	4616      	mov	r6, r2
    e27a:	460c      	mov	r4, r1
    e27c:	b14b      	cbz	r3, e292 <_signal_r+0x26>
    e27e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
    e282:	f843 6024 	str.w	r6, [r3, r4, lsl #2]
    e286:	bd70      	pop	{r4, r5, r6, pc}
    e288:	2216      	movs	r2, #22
    e28a:	6002      	str	r2, [r0, #0]
    e28c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e290:	bd70      	pop	{r4, r5, r6, pc}
    e292:	f7ff ffd1 	bl	e238 <_init_signal_r.part.0>
    e296:	b910      	cbnz	r0, e29e <_signal_r+0x32>
    e298:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
    e29c:	e7ef      	b.n	e27e <_signal_r+0x12>
    e29e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e2a2:	bd70      	pop	{r4, r5, r6, pc}

0000e2a4 <_raise_r>:
    e2a4:	291f      	cmp	r1, #31
    e2a6:	b538      	push	{r3, r4, r5, lr}
    e2a8:	d822      	bhi.n	e2f0 <_raise_r+0x4c>
    e2aa:	f8d0 22dc 	ldr.w	r2, [r0, #732]	; 0x2dc
    e2ae:	4605      	mov	r5, r0
    e2b0:	460c      	mov	r4, r1
    e2b2:	b16a      	cbz	r2, e2d0 <_raise_r+0x2c>
    e2b4:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
    e2b8:	b153      	cbz	r3, e2d0 <_raise_r+0x2c>
    e2ba:	2b01      	cmp	r3, #1
    e2bc:	d016      	beq.n	e2ec <_raise_r+0x48>
    e2be:	1c59      	adds	r1, r3, #1
    e2c0:	d010      	beq.n	e2e4 <_raise_r+0x40>
    e2c2:	2500      	movs	r5, #0
    e2c4:	4620      	mov	r0, r4
    e2c6:	f842 5024 	str.w	r5, [r2, r4, lsl #2]
    e2ca:	4798      	blx	r3
    e2cc:	4628      	mov	r0, r5
    e2ce:	bd38      	pop	{r3, r4, r5, pc}
    e2d0:	4628      	mov	r0, r5
    e2d2:	f000 f873 	bl	e3bc <_getpid_r>
    e2d6:	4622      	mov	r2, r4
    e2d8:	4601      	mov	r1, r0
    e2da:	4628      	mov	r0, r5
    e2dc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    e2e0:	f000 b858 	b.w	e394 <_kill_r>
    e2e4:	2316      	movs	r3, #22
    e2e6:	6003      	str	r3, [r0, #0]
    e2e8:	2001      	movs	r0, #1
    e2ea:	bd38      	pop	{r3, r4, r5, pc}
    e2ec:	2000      	movs	r0, #0
    e2ee:	bd38      	pop	{r3, r4, r5, pc}
    e2f0:	2316      	movs	r3, #22
    e2f2:	6003      	str	r3, [r0, #0]
    e2f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e2f8:	bd38      	pop	{r3, r4, r5, pc}
    e2fa:	bf00      	nop

0000e2fc <__sigtramp_r>:
    e2fc:	291f      	cmp	r1, #31
    e2fe:	d823      	bhi.n	e348 <__sigtramp_r+0x4c>
    e300:	b538      	push	{r3, r4, r5, lr}
    e302:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
    e306:	4605      	mov	r5, r0
    e308:	460c      	mov	r4, r1
    e30a:	b183      	cbz	r3, e32e <__sigtramp_r+0x32>
    e30c:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
    e310:	eb03 0384 	add.w	r3, r3, r4, lsl #2
    e314:	b14a      	cbz	r2, e32a <__sigtramp_r+0x2e>
    e316:	1c51      	adds	r1, r2, #1
    e318:	d011      	beq.n	e33e <__sigtramp_r+0x42>
    e31a:	2a01      	cmp	r2, #1
    e31c:	d00d      	beq.n	e33a <__sigtramp_r+0x3e>
    e31e:	2500      	movs	r5, #0
    e320:	4620      	mov	r0, r4
    e322:	601d      	str	r5, [r3, #0]
    e324:	4790      	blx	r2
    e326:	4628      	mov	r0, r5
    e328:	bd38      	pop	{r3, r4, r5, pc}
    e32a:	2001      	movs	r0, #1
    e32c:	bd38      	pop	{r3, r4, r5, pc}
    e32e:	f7ff ff83 	bl	e238 <_init_signal_r.part.0>
    e332:	b930      	cbnz	r0, e342 <__sigtramp_r+0x46>
    e334:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
    e338:	e7e8      	b.n	e30c <__sigtramp_r+0x10>
    e33a:	2003      	movs	r0, #3
    e33c:	bd38      	pop	{r3, r4, r5, pc}
    e33e:	2002      	movs	r0, #2
    e340:	bd38      	pop	{r3, r4, r5, pc}
    e342:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e346:	bd38      	pop	{r3, r4, r5, pc}
    e348:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    e34c:	4770      	bx	lr
    e34e:	bf00      	nop

0000e350 <raise>:
    e350:	4b02      	ldr	r3, [pc, #8]	; (e35c <raise+0xc>)
    e352:	4601      	mov	r1, r0
    e354:	6818      	ldr	r0, [r3, #0]
    e356:	f7ff bfa5 	b.w	e2a4 <_raise_r>
    e35a:	bf00      	nop
    e35c:	0001f6a0 	.word	0x0001f6a0

0000e360 <signal>:
    e360:	4b02      	ldr	r3, [pc, #8]	; (e36c <signal+0xc>)
    e362:	460a      	mov	r2, r1
    e364:	4601      	mov	r1, r0
    e366:	6818      	ldr	r0, [r3, #0]
    e368:	f7ff bf80 	b.w	e26c <_signal_r>
    e36c:	0001f6a0 	.word	0x0001f6a0

0000e370 <_init_signal>:
    e370:	4b03      	ldr	r3, [pc, #12]	; (e380 <_init_signal+0x10>)
    e372:	6818      	ldr	r0, [r3, #0]
    e374:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
    e378:	b10b      	cbz	r3, e37e <_init_signal+0xe>
    e37a:	2000      	movs	r0, #0
    e37c:	4770      	bx	lr
    e37e:	e75b      	b.n	e238 <_init_signal_r.part.0>
    e380:	0001f6a0 	.word	0x0001f6a0

0000e384 <__sigtramp>:
    e384:	4b02      	ldr	r3, [pc, #8]	; (e390 <__sigtramp+0xc>)
    e386:	4601      	mov	r1, r0
    e388:	6818      	ldr	r0, [r3, #0]
    e38a:	f7ff bfb7 	b.w	e2fc <__sigtramp_r>
    e38e:	bf00      	nop
    e390:	0001f6a0 	.word	0x0001f6a0

0000e394 <_kill_r>:
    e394:	b538      	push	{r3, r4, r5, lr}
    e396:	460b      	mov	r3, r1
    e398:	4c07      	ldr	r4, [pc, #28]	; (e3b8 <_kill_r+0x24>)
    e39a:	4605      	mov	r5, r0
    e39c:	4611      	mov	r1, r2
    e39e:	4618      	mov	r0, r3
    e3a0:	2300      	movs	r3, #0
    e3a2:	6023      	str	r3, [r4, #0]
    e3a4:	f000 ff64 	bl	f270 <_kill>
    e3a8:	1c43      	adds	r3, r0, #1
    e3aa:	d000      	beq.n	e3ae <_kill_r+0x1a>
    e3ac:	bd38      	pop	{r3, r4, r5, pc}
    e3ae:	6823      	ldr	r3, [r4, #0]
    e3b0:	2b00      	cmp	r3, #0
    e3b2:	d0fb      	beq.n	e3ac <_kill_r+0x18>
    e3b4:	602b      	str	r3, [r5, #0]
    e3b6:	bd38      	pop	{r3, r4, r5, pc}
    e3b8:	000200a4 	.word	0x000200a4

0000e3bc <_getpid_r>:
    e3bc:	f000 bf48 	b.w	f250 <_getpid>
    e3c0:	b570      	push	{r4, r5, r6, lr}
    e3c2:	f04f 0cff 	mov.w	ip, #255	; 0xff
    e3c6:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    e3ca:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    e3ce:	bf1d      	ittte	ne
    e3d0:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    e3d4:	ea94 0f0c 	teqne	r4, ip
    e3d8:	ea95 0f0c 	teqne	r5, ip
    e3dc:	f000 f8de 	bleq	e59c <_getpid_r+0x1e0>
    e3e0:	442c      	add	r4, r5
    e3e2:	ea81 0603 	eor.w	r6, r1, r3
    e3e6:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
    e3ea:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
    e3ee:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
    e3f2:	bf18      	it	ne
    e3f4:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
    e3f8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    e3fc:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    e400:	d038      	beq.n	e474 <_getpid_r+0xb8>
    e402:	fba0 ce02 	umull	ip, lr, r0, r2
    e406:	f04f 0500 	mov.w	r5, #0
    e40a:	fbe1 e502 	umlal	lr, r5, r1, r2
    e40e:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
    e412:	fbe0 e503 	umlal	lr, r5, r0, r3
    e416:	f04f 0600 	mov.w	r6, #0
    e41a:	fbe1 5603 	umlal	r5, r6, r1, r3
    e41e:	f09c 0f00 	teq	ip, #0
    e422:	bf18      	it	ne
    e424:	f04e 0e01 	orrne.w	lr, lr, #1
    e428:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
    e42c:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
    e430:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
    e434:	d204      	bcs.n	e440 <_getpid_r+0x84>
    e436:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
    e43a:	416d      	adcs	r5, r5
    e43c:	eb46 0606 	adc.w	r6, r6, r6
    e440:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
    e444:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
    e448:	ea4f 20c5 	mov.w	r0, r5, lsl #11
    e44c:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
    e450:	ea4f 2ece 	mov.w	lr, lr, lsl #11
    e454:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    e458:	bf88      	it	hi
    e45a:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    e45e:	d81e      	bhi.n	e49e <_getpid_r+0xe2>
    e460:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
    e464:	bf08      	it	eq
    e466:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
    e46a:	f150 0000 	adcs.w	r0, r0, #0
    e46e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    e472:	bd70      	pop	{r4, r5, r6, pc}
    e474:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
    e478:	ea46 0101 	orr.w	r1, r6, r1
    e47c:	ea40 0002 	orr.w	r0, r0, r2
    e480:	ea81 0103 	eor.w	r1, r1, r3
    e484:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
    e488:	bfc2      	ittt	gt
    e48a:	ebd4 050c 	rsbsgt	r5, r4, ip
    e48e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    e492:	bd70      	popgt	{r4, r5, r6, pc}
    e494:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    e498:	f04f 0e00 	mov.w	lr, #0
    e49c:	3c01      	subs	r4, #1
    e49e:	f300 80ab 	bgt.w	e5f8 <_getpid_r+0x23c>
    e4a2:	f114 0f36 	cmn.w	r4, #54	; 0x36
    e4a6:	bfde      	ittt	le
    e4a8:	2000      	movle	r0, #0
    e4aa:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
    e4ae:	bd70      	pople	{r4, r5, r6, pc}
    e4b0:	f1c4 0400 	rsb	r4, r4, #0
    e4b4:	3c20      	subs	r4, #32
    e4b6:	da35      	bge.n	e524 <_getpid_r+0x168>
    e4b8:	340c      	adds	r4, #12
    e4ba:	dc1b      	bgt.n	e4f4 <_getpid_r+0x138>
    e4bc:	f104 0414 	add.w	r4, r4, #20
    e4c0:	f1c4 0520 	rsb	r5, r4, #32
    e4c4:	fa00 f305 	lsl.w	r3, r0, r5
    e4c8:	fa20 f004 	lsr.w	r0, r0, r4
    e4cc:	fa01 f205 	lsl.w	r2, r1, r5
    e4d0:	ea40 0002 	orr.w	r0, r0, r2
    e4d4:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
    e4d8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    e4dc:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    e4e0:	fa21 f604 	lsr.w	r6, r1, r4
    e4e4:	eb42 0106 	adc.w	r1, r2, r6
    e4e8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    e4ec:	bf08      	it	eq
    e4ee:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    e4f2:	bd70      	pop	{r4, r5, r6, pc}
    e4f4:	f1c4 040c 	rsb	r4, r4, #12
    e4f8:	f1c4 0520 	rsb	r5, r4, #32
    e4fc:	fa00 f304 	lsl.w	r3, r0, r4
    e500:	fa20 f005 	lsr.w	r0, r0, r5
    e504:	fa01 f204 	lsl.w	r2, r1, r4
    e508:	ea40 0002 	orr.w	r0, r0, r2
    e50c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    e510:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    e514:	f141 0100 	adc.w	r1, r1, #0
    e518:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    e51c:	bf08      	it	eq
    e51e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    e522:	bd70      	pop	{r4, r5, r6, pc}
    e524:	f1c4 0520 	rsb	r5, r4, #32
    e528:	fa00 f205 	lsl.w	r2, r0, r5
    e52c:	ea4e 0e02 	orr.w	lr, lr, r2
    e530:	fa20 f304 	lsr.w	r3, r0, r4
    e534:	fa01 f205 	lsl.w	r2, r1, r5
    e538:	ea43 0302 	orr.w	r3, r3, r2
    e53c:	fa21 f004 	lsr.w	r0, r1, r4
    e540:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    e544:	fa21 f204 	lsr.w	r2, r1, r4
    e548:	ea20 0002 	bic.w	r0, r0, r2
    e54c:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
    e550:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    e554:	bf08      	it	eq
    e556:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    e55a:	bd70      	pop	{r4, r5, r6, pc}
    e55c:	f094 0f00 	teq	r4, #0
    e560:	d10f      	bne.n	e582 <_getpid_r+0x1c6>
    e562:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
    e566:	0040      	lsls	r0, r0, #1
    e568:	eb41 0101 	adc.w	r1, r1, r1
    e56c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    e570:	bf08      	it	eq
    e572:	3c01      	subeq	r4, #1
    e574:	d0f7      	beq.n	e566 <_getpid_r+0x1aa>
    e576:	ea41 0106 	orr.w	r1, r1, r6
    e57a:	f095 0f00 	teq	r5, #0
    e57e:	bf18      	it	ne
    e580:	4770      	bxne	lr
    e582:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
    e586:	0052      	lsls	r2, r2, #1
    e588:	eb43 0303 	adc.w	r3, r3, r3
    e58c:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
    e590:	bf08      	it	eq
    e592:	3d01      	subeq	r5, #1
    e594:	d0f7      	beq.n	e586 <_getpid_r+0x1ca>
    e596:	ea43 0306 	orr.w	r3, r3, r6
    e59a:	4770      	bx	lr
    e59c:	ea94 0f0c 	teq	r4, ip
    e5a0:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    e5a4:	bf18      	it	ne
    e5a6:	ea95 0f0c 	teqne	r5, ip
    e5aa:	d00c      	beq.n	e5c6 <_getpid_r+0x20a>
    e5ac:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    e5b0:	bf18      	it	ne
    e5b2:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    e5b6:	d1d1      	bne.n	e55c <_getpid_r+0x1a0>
    e5b8:	ea81 0103 	eor.w	r1, r1, r3
    e5bc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    e5c0:	f04f 0000 	mov.w	r0, #0
    e5c4:	bd70      	pop	{r4, r5, r6, pc}
    e5c6:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    e5ca:	bf06      	itte	eq
    e5cc:	4610      	moveq	r0, r2
    e5ce:	4619      	moveq	r1, r3
    e5d0:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    e5d4:	d019      	beq.n	e60a <_getpid_r+0x24e>
    e5d6:	ea94 0f0c 	teq	r4, ip
    e5da:	d102      	bne.n	e5e2 <_getpid_r+0x226>
    e5dc:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
    e5e0:	d113      	bne.n	e60a <_getpid_r+0x24e>
    e5e2:	ea95 0f0c 	teq	r5, ip
    e5e6:	d105      	bne.n	e5f4 <_getpid_r+0x238>
    e5e8:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
    e5ec:	bf1c      	itt	ne
    e5ee:	4610      	movne	r0, r2
    e5f0:	4619      	movne	r1, r3
    e5f2:	d10a      	bne.n	e60a <_getpid_r+0x24e>
    e5f4:	ea81 0103 	eor.w	r1, r1, r3
    e5f8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    e5fc:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    e600:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    e604:	f04f 0000 	mov.w	r0, #0
    e608:	bd70      	pop	{r4, r5, r6, pc}
    e60a:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    e60e:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
    e612:	bd70      	pop	{r4, r5, r6, pc}

0000e614 <__aeabi_drsub>:
    e614:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
    e618:	e002      	b.n	e620 <__adddf3>
    e61a:	bf00      	nop

0000e61c <__aeabi_dsub>:
    e61c:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

0000e620 <__adddf3>:
    e620:	b530      	push	{r4, r5, lr}
    e622:	ea4f 0441 	mov.w	r4, r1, lsl #1
    e626:	ea4f 0543 	mov.w	r5, r3, lsl #1
    e62a:	ea94 0f05 	teq	r4, r5
    e62e:	bf08      	it	eq
    e630:	ea90 0f02 	teqeq	r0, r2
    e634:	bf1f      	itttt	ne
    e636:	ea54 0c00 	orrsne.w	ip, r4, r0
    e63a:	ea55 0c02 	orrsne.w	ip, r5, r2
    e63e:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
    e642:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    e646:	f000 80e2 	beq.w	e80e <__adddf3+0x1ee>
    e64a:	ea4f 5454 	mov.w	r4, r4, lsr #21
    e64e:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
    e652:	bfb8      	it	lt
    e654:	426d      	neglt	r5, r5
    e656:	dd0c      	ble.n	e672 <__adddf3+0x52>
    e658:	442c      	add	r4, r5
    e65a:	ea80 0202 	eor.w	r2, r0, r2
    e65e:	ea81 0303 	eor.w	r3, r1, r3
    e662:	ea82 0000 	eor.w	r0, r2, r0
    e666:	ea83 0101 	eor.w	r1, r3, r1
    e66a:	ea80 0202 	eor.w	r2, r0, r2
    e66e:	ea81 0303 	eor.w	r3, r1, r3
    e672:	2d36      	cmp	r5, #54	; 0x36
    e674:	bf88      	it	hi
    e676:	bd30      	pophi	{r4, r5, pc}
    e678:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    e67c:	ea4f 3101 	mov.w	r1, r1, lsl #12
    e680:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
    e684:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
    e688:	d002      	beq.n	e690 <__adddf3+0x70>
    e68a:	4240      	negs	r0, r0
    e68c:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    e690:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
    e694:	ea4f 3303 	mov.w	r3, r3, lsl #12
    e698:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
    e69c:	d002      	beq.n	e6a4 <__adddf3+0x84>
    e69e:	4252      	negs	r2, r2
    e6a0:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
    e6a4:	ea94 0f05 	teq	r4, r5
    e6a8:	f000 80a7 	beq.w	e7fa <__adddf3+0x1da>
    e6ac:	f1a4 0401 	sub.w	r4, r4, #1
    e6b0:	f1d5 0e20 	rsbs	lr, r5, #32
    e6b4:	db0d      	blt.n	e6d2 <__adddf3+0xb2>
    e6b6:	fa02 fc0e 	lsl.w	ip, r2, lr
    e6ba:	fa22 f205 	lsr.w	r2, r2, r5
    e6be:	1880      	adds	r0, r0, r2
    e6c0:	f141 0100 	adc.w	r1, r1, #0
    e6c4:	fa03 f20e 	lsl.w	r2, r3, lr
    e6c8:	1880      	adds	r0, r0, r2
    e6ca:	fa43 f305 	asr.w	r3, r3, r5
    e6ce:	4159      	adcs	r1, r3
    e6d0:	e00e      	b.n	e6f0 <__adddf3+0xd0>
    e6d2:	f1a5 0520 	sub.w	r5, r5, #32
    e6d6:	f10e 0e20 	add.w	lr, lr, #32
    e6da:	2a01      	cmp	r2, #1
    e6dc:	fa03 fc0e 	lsl.w	ip, r3, lr
    e6e0:	bf28      	it	cs
    e6e2:	f04c 0c02 	orrcs.w	ip, ip, #2
    e6e6:	fa43 f305 	asr.w	r3, r3, r5
    e6ea:	18c0      	adds	r0, r0, r3
    e6ec:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
    e6f0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    e6f4:	d507      	bpl.n	e706 <__adddf3+0xe6>
    e6f6:	f04f 0e00 	mov.w	lr, #0
    e6fa:	f1dc 0c00 	rsbs	ip, ip, #0
    e6fe:	eb7e 0000 	sbcs.w	r0, lr, r0
    e702:	eb6e 0101 	sbc.w	r1, lr, r1
    e706:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
    e70a:	d31b      	bcc.n	e744 <__adddf3+0x124>
    e70c:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
    e710:	d30c      	bcc.n	e72c <__adddf3+0x10c>
    e712:	0849      	lsrs	r1, r1, #1
    e714:	ea5f 0030 	movs.w	r0, r0, rrx
    e718:	ea4f 0c3c 	mov.w	ip, ip, rrx
    e71c:	f104 0401 	add.w	r4, r4, #1
    e720:	ea4f 5244 	mov.w	r2, r4, lsl #21
    e724:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
    e728:	f080 809a 	bcs.w	e860 <__adddf3+0x240>
    e72c:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
    e730:	bf08      	it	eq
    e732:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    e736:	f150 0000 	adcs.w	r0, r0, #0
    e73a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    e73e:	ea41 0105 	orr.w	r1, r1, r5
    e742:	bd30      	pop	{r4, r5, pc}
    e744:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
    e748:	4140      	adcs	r0, r0
    e74a:	eb41 0101 	adc.w	r1, r1, r1
    e74e:	3c01      	subs	r4, #1
    e750:	bf28      	it	cs
    e752:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
    e756:	d2e9      	bcs.n	e72c <__adddf3+0x10c>
    e758:	f091 0f00 	teq	r1, #0
    e75c:	bf04      	itt	eq
    e75e:	4601      	moveq	r1, r0
    e760:	2000      	moveq	r0, #0
    e762:	fab1 f381 	clz	r3, r1
    e766:	bf08      	it	eq
    e768:	3320      	addeq	r3, #32
    e76a:	f1a3 030b 	sub.w	r3, r3, #11
    e76e:	f1b3 0220 	subs.w	r2, r3, #32
    e772:	da0c      	bge.n	e78e <__adddf3+0x16e>
    e774:	320c      	adds	r2, #12
    e776:	dd08      	ble.n	e78a <__adddf3+0x16a>
    e778:	f102 0c14 	add.w	ip, r2, #20
    e77c:	f1c2 020c 	rsb	r2, r2, #12
    e780:	fa01 f00c 	lsl.w	r0, r1, ip
    e784:	fa21 f102 	lsr.w	r1, r1, r2
    e788:	e00c      	b.n	e7a4 <__adddf3+0x184>
    e78a:	f102 0214 	add.w	r2, r2, #20
    e78e:	bfd8      	it	le
    e790:	f1c2 0c20 	rsble	ip, r2, #32
    e794:	fa01 f102 	lsl.w	r1, r1, r2
    e798:	fa20 fc0c 	lsr.w	ip, r0, ip
    e79c:	bfdc      	itt	le
    e79e:	ea41 010c 	orrle.w	r1, r1, ip
    e7a2:	4090      	lslle	r0, r2
    e7a4:	1ae4      	subs	r4, r4, r3
    e7a6:	bfa2      	ittt	ge
    e7a8:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
    e7ac:	4329      	orrge	r1, r5
    e7ae:	bd30      	popge	{r4, r5, pc}
    e7b0:	ea6f 0404 	mvn.w	r4, r4
    e7b4:	3c1f      	subs	r4, #31
    e7b6:	da1c      	bge.n	e7f2 <__adddf3+0x1d2>
    e7b8:	340c      	adds	r4, #12
    e7ba:	dc0e      	bgt.n	e7da <__adddf3+0x1ba>
    e7bc:	f104 0414 	add.w	r4, r4, #20
    e7c0:	f1c4 0220 	rsb	r2, r4, #32
    e7c4:	fa20 f004 	lsr.w	r0, r0, r4
    e7c8:	fa01 f302 	lsl.w	r3, r1, r2
    e7cc:	ea40 0003 	orr.w	r0, r0, r3
    e7d0:	fa21 f304 	lsr.w	r3, r1, r4
    e7d4:	ea45 0103 	orr.w	r1, r5, r3
    e7d8:	bd30      	pop	{r4, r5, pc}
    e7da:	f1c4 040c 	rsb	r4, r4, #12
    e7de:	f1c4 0220 	rsb	r2, r4, #32
    e7e2:	fa20 f002 	lsr.w	r0, r0, r2
    e7e6:	fa01 f304 	lsl.w	r3, r1, r4
    e7ea:	ea40 0003 	orr.w	r0, r0, r3
    e7ee:	4629      	mov	r1, r5
    e7f0:	bd30      	pop	{r4, r5, pc}
    e7f2:	fa21 f004 	lsr.w	r0, r1, r4
    e7f6:	4629      	mov	r1, r5
    e7f8:	bd30      	pop	{r4, r5, pc}
    e7fa:	f094 0f00 	teq	r4, #0
    e7fe:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
    e802:	bf06      	itte	eq
    e804:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
    e808:	3401      	addeq	r4, #1
    e80a:	3d01      	subne	r5, #1
    e80c:	e74e      	b.n	e6ac <__adddf3+0x8c>
    e80e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    e812:	bf18      	it	ne
    e814:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    e818:	d029      	beq.n	e86e <__adddf3+0x24e>
    e81a:	ea94 0f05 	teq	r4, r5
    e81e:	bf08      	it	eq
    e820:	ea90 0f02 	teqeq	r0, r2
    e824:	d005      	beq.n	e832 <__adddf3+0x212>
    e826:	ea54 0c00 	orrs.w	ip, r4, r0
    e82a:	bf04      	itt	eq
    e82c:	4619      	moveq	r1, r3
    e82e:	4610      	moveq	r0, r2
    e830:	bd30      	pop	{r4, r5, pc}
    e832:	ea91 0f03 	teq	r1, r3
    e836:	bf1e      	ittt	ne
    e838:	2100      	movne	r1, #0
    e83a:	2000      	movne	r0, #0
    e83c:	bd30      	popne	{r4, r5, pc}
    e83e:	ea5f 5c54 	movs.w	ip, r4, lsr #21
    e842:	d105      	bne.n	e850 <__adddf3+0x230>
    e844:	0040      	lsls	r0, r0, #1
    e846:	4149      	adcs	r1, r1
    e848:	bf28      	it	cs
    e84a:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
    e84e:	bd30      	pop	{r4, r5, pc}
    e850:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
    e854:	bf3c      	itt	cc
    e856:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
    e85a:	bd30      	popcc	{r4, r5, pc}
    e85c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    e860:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
    e864:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    e868:	f04f 0000 	mov.w	r0, #0
    e86c:	bd30      	pop	{r4, r5, pc}
    e86e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    e872:	bf1a      	itte	ne
    e874:	4619      	movne	r1, r3
    e876:	4610      	movne	r0, r2
    e878:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
    e87c:	bf1c      	itt	ne
    e87e:	460b      	movne	r3, r1
    e880:	4602      	movne	r2, r0
    e882:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    e886:	bf06      	itte	eq
    e888:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
    e88c:	ea91 0f03 	teqeq	r1, r3
    e890:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
    e894:	bd30      	pop	{r4, r5, pc}
    e896:	bf00      	nop

0000e898 <__aeabi_ui2d>:
    e898:	f090 0f00 	teq	r0, #0
    e89c:	bf04      	itt	eq
    e89e:	2100      	moveq	r1, #0
    e8a0:	4770      	bxeq	lr
    e8a2:	b530      	push	{r4, r5, lr}
    e8a4:	f44f 6480 	mov.w	r4, #1024	; 0x400
    e8a8:	f104 0432 	add.w	r4, r4, #50	; 0x32
    e8ac:	f04f 0500 	mov.w	r5, #0
    e8b0:	f04f 0100 	mov.w	r1, #0
    e8b4:	e750      	b.n	e758 <__adddf3+0x138>
    e8b6:	bf00      	nop

0000e8b8 <__aeabi_i2d>:
    e8b8:	f090 0f00 	teq	r0, #0
    e8bc:	bf04      	itt	eq
    e8be:	2100      	moveq	r1, #0
    e8c0:	4770      	bxeq	lr
    e8c2:	b530      	push	{r4, r5, lr}
    e8c4:	f44f 6480 	mov.w	r4, #1024	; 0x400
    e8c8:	f104 0432 	add.w	r4, r4, #50	; 0x32
    e8cc:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
    e8d0:	bf48      	it	mi
    e8d2:	4240      	negmi	r0, r0
    e8d4:	f04f 0100 	mov.w	r1, #0
    e8d8:	e73e      	b.n	e758 <__adddf3+0x138>
    e8da:	bf00      	nop

0000e8dc <__aeabi_f2d>:
    e8dc:	0042      	lsls	r2, r0, #1
    e8de:	ea4f 01e2 	mov.w	r1, r2, asr #3
    e8e2:	ea4f 0131 	mov.w	r1, r1, rrx
    e8e6:	ea4f 7002 	mov.w	r0, r2, lsl #28
    e8ea:	bf1f      	itttt	ne
    e8ec:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
    e8f0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
    e8f4:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
    e8f8:	4770      	bxne	lr
    e8fa:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
    e8fe:	bf08      	it	eq
    e900:	4770      	bxeq	lr
    e902:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
    e906:	bf04      	itt	eq
    e908:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
    e90c:	4770      	bxeq	lr
    e90e:	b530      	push	{r4, r5, lr}
    e910:	f44f 7460 	mov.w	r4, #896	; 0x380
    e914:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    e918:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    e91c:	e71c      	b.n	e758 <__adddf3+0x138>
    e91e:	bf00      	nop

0000e920 <__aeabi_ul2d>:
    e920:	ea50 0201 	orrs.w	r2, r0, r1
    e924:	bf08      	it	eq
    e926:	4770      	bxeq	lr
    e928:	b530      	push	{r4, r5, lr}
    e92a:	f04f 0500 	mov.w	r5, #0
    e92e:	e00a      	b.n	e946 <__aeabi_l2d+0x16>

0000e930 <__aeabi_l2d>:
    e930:	ea50 0201 	orrs.w	r2, r0, r1
    e934:	bf08      	it	eq
    e936:	4770      	bxeq	lr
    e938:	b530      	push	{r4, r5, lr}
    e93a:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
    e93e:	d502      	bpl.n	e946 <__aeabi_l2d+0x16>
    e940:	4240      	negs	r0, r0
    e942:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    e946:	f44f 6480 	mov.w	r4, #1024	; 0x400
    e94a:	f104 0432 	add.w	r4, r4, #50	; 0x32
    e94e:	ea5f 5c91 	movs.w	ip, r1, lsr #22
    e952:	f43f aed8 	beq.w	e706 <__adddf3+0xe6>
    e956:	f04f 0203 	mov.w	r2, #3
    e95a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    e95e:	bf18      	it	ne
    e960:	3203      	addne	r2, #3
    e962:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    e966:	bf18      	it	ne
    e968:	3203      	addne	r2, #3
    e96a:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
    e96e:	f1c2 0320 	rsb	r3, r2, #32
    e972:	fa00 fc03 	lsl.w	ip, r0, r3
    e976:	fa20 f002 	lsr.w	r0, r0, r2
    e97a:	fa01 fe03 	lsl.w	lr, r1, r3
    e97e:	ea40 000e 	orr.w	r0, r0, lr
    e982:	fa21 f102 	lsr.w	r1, r1, r2
    e986:	4414      	add	r4, r2
    e988:	e6bd      	b.n	e706 <__adddf3+0xe6>
    e98a:	bf00      	nop

0000e98c <__aeabi_dmul>:
    e98c:	b570      	push	{r4, r5, r6, lr}
    e98e:	f04f 0cff 	mov.w	ip, #255	; 0xff
    e992:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    e996:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    e99a:	bf1d      	ittte	ne
    e99c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    e9a0:	ea94 0f0c 	teqne	r4, ip
    e9a4:	ea95 0f0c 	teqne	r5, ip
    e9a8:	f000 f8de 	bleq	eb68 <__aeabi_dmul+0x1dc>
    e9ac:	442c      	add	r4, r5
    e9ae:	ea81 0603 	eor.w	r6, r1, r3
    e9b2:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
    e9b6:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
    e9ba:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
    e9be:	bf18      	it	ne
    e9c0:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
    e9c4:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    e9c8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    e9cc:	d038      	beq.n	ea40 <__aeabi_dmul+0xb4>
    e9ce:	fba0 ce02 	umull	ip, lr, r0, r2
    e9d2:	f04f 0500 	mov.w	r5, #0
    e9d6:	fbe1 e502 	umlal	lr, r5, r1, r2
    e9da:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
    e9de:	fbe0 e503 	umlal	lr, r5, r0, r3
    e9e2:	f04f 0600 	mov.w	r6, #0
    e9e6:	fbe1 5603 	umlal	r5, r6, r1, r3
    e9ea:	f09c 0f00 	teq	ip, #0
    e9ee:	bf18      	it	ne
    e9f0:	f04e 0e01 	orrne.w	lr, lr, #1
    e9f4:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
    e9f8:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
    e9fc:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
    ea00:	d204      	bcs.n	ea0c <__aeabi_dmul+0x80>
    ea02:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
    ea06:	416d      	adcs	r5, r5
    ea08:	eb46 0606 	adc.w	r6, r6, r6
    ea0c:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
    ea10:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
    ea14:	ea4f 20c5 	mov.w	r0, r5, lsl #11
    ea18:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
    ea1c:	ea4f 2ece 	mov.w	lr, lr, lsl #11
    ea20:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    ea24:	bf88      	it	hi
    ea26:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    ea2a:	d81e      	bhi.n	ea6a <__aeabi_dmul+0xde>
    ea2c:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
    ea30:	bf08      	it	eq
    ea32:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
    ea36:	f150 0000 	adcs.w	r0, r0, #0
    ea3a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    ea3e:	bd70      	pop	{r4, r5, r6, pc}
    ea40:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
    ea44:	ea46 0101 	orr.w	r1, r6, r1
    ea48:	ea40 0002 	orr.w	r0, r0, r2
    ea4c:	ea81 0103 	eor.w	r1, r1, r3
    ea50:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
    ea54:	bfc2      	ittt	gt
    ea56:	ebd4 050c 	rsbsgt	r5, r4, ip
    ea5a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    ea5e:	bd70      	popgt	{r4, r5, r6, pc}
    ea60:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    ea64:	f04f 0e00 	mov.w	lr, #0
    ea68:	3c01      	subs	r4, #1
    ea6a:	f300 80ab 	bgt.w	ebc4 <__aeabi_dmul+0x238>
    ea6e:	f114 0f36 	cmn.w	r4, #54	; 0x36
    ea72:	bfde      	ittt	le
    ea74:	2000      	movle	r0, #0
    ea76:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
    ea7a:	bd70      	pople	{r4, r5, r6, pc}
    ea7c:	f1c4 0400 	rsb	r4, r4, #0
    ea80:	3c20      	subs	r4, #32
    ea82:	da35      	bge.n	eaf0 <__aeabi_dmul+0x164>
    ea84:	340c      	adds	r4, #12
    ea86:	dc1b      	bgt.n	eac0 <__aeabi_dmul+0x134>
    ea88:	f104 0414 	add.w	r4, r4, #20
    ea8c:	f1c4 0520 	rsb	r5, r4, #32
    ea90:	fa00 f305 	lsl.w	r3, r0, r5
    ea94:	fa20 f004 	lsr.w	r0, r0, r4
    ea98:	fa01 f205 	lsl.w	r2, r1, r5
    ea9c:	ea40 0002 	orr.w	r0, r0, r2
    eaa0:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
    eaa4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    eaa8:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    eaac:	fa21 f604 	lsr.w	r6, r1, r4
    eab0:	eb42 0106 	adc.w	r1, r2, r6
    eab4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    eab8:	bf08      	it	eq
    eaba:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    eabe:	bd70      	pop	{r4, r5, r6, pc}
    eac0:	f1c4 040c 	rsb	r4, r4, #12
    eac4:	f1c4 0520 	rsb	r5, r4, #32
    eac8:	fa00 f304 	lsl.w	r3, r0, r4
    eacc:	fa20 f005 	lsr.w	r0, r0, r5
    ead0:	fa01 f204 	lsl.w	r2, r1, r4
    ead4:	ea40 0002 	orr.w	r0, r0, r2
    ead8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    eadc:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    eae0:	f141 0100 	adc.w	r1, r1, #0
    eae4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    eae8:	bf08      	it	eq
    eaea:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    eaee:	bd70      	pop	{r4, r5, r6, pc}
    eaf0:	f1c4 0520 	rsb	r5, r4, #32
    eaf4:	fa00 f205 	lsl.w	r2, r0, r5
    eaf8:	ea4e 0e02 	orr.w	lr, lr, r2
    eafc:	fa20 f304 	lsr.w	r3, r0, r4
    eb00:	fa01 f205 	lsl.w	r2, r1, r5
    eb04:	ea43 0302 	orr.w	r3, r3, r2
    eb08:	fa21 f004 	lsr.w	r0, r1, r4
    eb0c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    eb10:	fa21 f204 	lsr.w	r2, r1, r4
    eb14:	ea20 0002 	bic.w	r0, r0, r2
    eb18:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
    eb1c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    eb20:	bf08      	it	eq
    eb22:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    eb26:	bd70      	pop	{r4, r5, r6, pc}
    eb28:	f094 0f00 	teq	r4, #0
    eb2c:	d10f      	bne.n	eb4e <__aeabi_dmul+0x1c2>
    eb2e:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
    eb32:	0040      	lsls	r0, r0, #1
    eb34:	eb41 0101 	adc.w	r1, r1, r1
    eb38:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    eb3c:	bf08      	it	eq
    eb3e:	3c01      	subeq	r4, #1
    eb40:	d0f7      	beq.n	eb32 <__aeabi_dmul+0x1a6>
    eb42:	ea41 0106 	orr.w	r1, r1, r6
    eb46:	f095 0f00 	teq	r5, #0
    eb4a:	bf18      	it	ne
    eb4c:	4770      	bxne	lr
    eb4e:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
    eb52:	0052      	lsls	r2, r2, #1
    eb54:	eb43 0303 	adc.w	r3, r3, r3
    eb58:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
    eb5c:	bf08      	it	eq
    eb5e:	3d01      	subeq	r5, #1
    eb60:	d0f7      	beq.n	eb52 <__aeabi_dmul+0x1c6>
    eb62:	ea43 0306 	orr.w	r3, r3, r6
    eb66:	4770      	bx	lr
    eb68:	ea94 0f0c 	teq	r4, ip
    eb6c:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    eb70:	bf18      	it	ne
    eb72:	ea95 0f0c 	teqne	r5, ip
    eb76:	d00c      	beq.n	eb92 <__aeabi_dmul+0x206>
    eb78:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    eb7c:	bf18      	it	ne
    eb7e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    eb82:	d1d1      	bne.n	eb28 <__aeabi_dmul+0x19c>
    eb84:	ea81 0103 	eor.w	r1, r1, r3
    eb88:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    eb8c:	f04f 0000 	mov.w	r0, #0
    eb90:	bd70      	pop	{r4, r5, r6, pc}
    eb92:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    eb96:	bf06      	itte	eq
    eb98:	4610      	moveq	r0, r2
    eb9a:	4619      	moveq	r1, r3
    eb9c:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    eba0:	d019      	beq.n	ebd6 <__aeabi_dmul+0x24a>
    eba2:	ea94 0f0c 	teq	r4, ip
    eba6:	d102      	bne.n	ebae <__aeabi_dmul+0x222>
    eba8:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
    ebac:	d113      	bne.n	ebd6 <__aeabi_dmul+0x24a>
    ebae:	ea95 0f0c 	teq	r5, ip
    ebb2:	d105      	bne.n	ebc0 <__aeabi_dmul+0x234>
    ebb4:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
    ebb8:	bf1c      	itt	ne
    ebba:	4610      	movne	r0, r2
    ebbc:	4619      	movne	r1, r3
    ebbe:	d10a      	bne.n	ebd6 <__aeabi_dmul+0x24a>
    ebc0:	ea81 0103 	eor.w	r1, r1, r3
    ebc4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    ebc8:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    ebcc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    ebd0:	f04f 0000 	mov.w	r0, #0
    ebd4:	bd70      	pop	{r4, r5, r6, pc}
    ebd6:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    ebda:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
    ebde:	bd70      	pop	{r4, r5, r6, pc}

0000ebe0 <__aeabi_ddiv>:
    ebe0:	b570      	push	{r4, r5, r6, lr}
    ebe2:	f04f 0cff 	mov.w	ip, #255	; 0xff
    ebe6:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    ebea:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    ebee:	bf1d      	ittte	ne
    ebf0:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    ebf4:	ea94 0f0c 	teqne	r4, ip
    ebf8:	ea95 0f0c 	teqne	r5, ip
    ebfc:	f000 f8a7 	bleq	ed4e <__aeabi_ddiv+0x16e>
    ec00:	eba4 0405 	sub.w	r4, r4, r5
    ec04:	ea81 0e03 	eor.w	lr, r1, r3
    ec08:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    ec0c:	ea4f 3101 	mov.w	r1, r1, lsl #12
    ec10:	f000 8088 	beq.w	ed24 <__aeabi_ddiv+0x144>
    ec14:	ea4f 3303 	mov.w	r3, r3, lsl #12
    ec18:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
    ec1c:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
    ec20:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
    ec24:	ea4f 2202 	mov.w	r2, r2, lsl #8
    ec28:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
    ec2c:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
    ec30:	ea4f 2600 	mov.w	r6, r0, lsl #8
    ec34:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
    ec38:	429d      	cmp	r5, r3
    ec3a:	bf08      	it	eq
    ec3c:	4296      	cmpeq	r6, r2
    ec3e:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
    ec42:	f504 7440 	add.w	r4, r4, #768	; 0x300
    ec46:	d202      	bcs.n	ec4e <__aeabi_ddiv+0x6e>
    ec48:	085b      	lsrs	r3, r3, #1
    ec4a:	ea4f 0232 	mov.w	r2, r2, rrx
    ec4e:	1ab6      	subs	r6, r6, r2
    ec50:	eb65 0503 	sbc.w	r5, r5, r3
    ec54:	085b      	lsrs	r3, r3, #1
    ec56:	ea4f 0232 	mov.w	r2, r2, rrx
    ec5a:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
    ec5e:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
    ec62:	ebb6 0e02 	subs.w	lr, r6, r2
    ec66:	eb75 0e03 	sbcs.w	lr, r5, r3
    ec6a:	bf22      	ittt	cs
    ec6c:	1ab6      	subcs	r6, r6, r2
    ec6e:	4675      	movcs	r5, lr
    ec70:	ea40 000c 	orrcs.w	r0, r0, ip
    ec74:	085b      	lsrs	r3, r3, #1
    ec76:	ea4f 0232 	mov.w	r2, r2, rrx
    ec7a:	ebb6 0e02 	subs.w	lr, r6, r2
    ec7e:	eb75 0e03 	sbcs.w	lr, r5, r3
    ec82:	bf22      	ittt	cs
    ec84:	1ab6      	subcs	r6, r6, r2
    ec86:	4675      	movcs	r5, lr
    ec88:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
    ec8c:	085b      	lsrs	r3, r3, #1
    ec8e:	ea4f 0232 	mov.w	r2, r2, rrx
    ec92:	ebb6 0e02 	subs.w	lr, r6, r2
    ec96:	eb75 0e03 	sbcs.w	lr, r5, r3
    ec9a:	bf22      	ittt	cs
    ec9c:	1ab6      	subcs	r6, r6, r2
    ec9e:	4675      	movcs	r5, lr
    eca0:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
    eca4:	085b      	lsrs	r3, r3, #1
    eca6:	ea4f 0232 	mov.w	r2, r2, rrx
    ecaa:	ebb6 0e02 	subs.w	lr, r6, r2
    ecae:	eb75 0e03 	sbcs.w	lr, r5, r3
    ecb2:	bf22      	ittt	cs
    ecb4:	1ab6      	subcs	r6, r6, r2
    ecb6:	4675      	movcs	r5, lr
    ecb8:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
    ecbc:	ea55 0e06 	orrs.w	lr, r5, r6
    ecc0:	d018      	beq.n	ecf4 <__aeabi_ddiv+0x114>
    ecc2:	ea4f 1505 	mov.w	r5, r5, lsl #4
    ecc6:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
    ecca:	ea4f 1606 	mov.w	r6, r6, lsl #4
    ecce:	ea4f 03c3 	mov.w	r3, r3, lsl #3
    ecd2:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
    ecd6:	ea4f 02c2 	mov.w	r2, r2, lsl #3
    ecda:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
    ecde:	d1c0      	bne.n	ec62 <__aeabi_ddiv+0x82>
    ece0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    ece4:	d10b      	bne.n	ecfe <__aeabi_ddiv+0x11e>
    ece6:	ea41 0100 	orr.w	r1, r1, r0
    ecea:	f04f 0000 	mov.w	r0, #0
    ecee:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
    ecf2:	e7b6      	b.n	ec62 <__aeabi_ddiv+0x82>
    ecf4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    ecf8:	bf04      	itt	eq
    ecfa:	4301      	orreq	r1, r0
    ecfc:	2000      	moveq	r0, #0
    ecfe:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    ed02:	bf88      	it	hi
    ed04:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    ed08:	f63f aeaf 	bhi.w	ea6a <__aeabi_dmul+0xde>
    ed0c:	ebb5 0c03 	subs.w	ip, r5, r3
    ed10:	bf04      	itt	eq
    ed12:	ebb6 0c02 	subseq.w	ip, r6, r2
    ed16:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    ed1a:	f150 0000 	adcs.w	r0, r0, #0
    ed1e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    ed22:	bd70      	pop	{r4, r5, r6, pc}
    ed24:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
    ed28:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
    ed2c:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
    ed30:	bfc2      	ittt	gt
    ed32:	ebd4 050c 	rsbsgt	r5, r4, ip
    ed36:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    ed3a:	bd70      	popgt	{r4, r5, r6, pc}
    ed3c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    ed40:	f04f 0e00 	mov.w	lr, #0
    ed44:	3c01      	subs	r4, #1
    ed46:	e690      	b.n	ea6a <__aeabi_dmul+0xde>
    ed48:	ea45 0e06 	orr.w	lr, r5, r6
    ed4c:	e68d      	b.n	ea6a <__aeabi_dmul+0xde>
    ed4e:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    ed52:	ea94 0f0c 	teq	r4, ip
    ed56:	bf08      	it	eq
    ed58:	ea95 0f0c 	teqeq	r5, ip
    ed5c:	f43f af3b 	beq.w	ebd6 <__aeabi_dmul+0x24a>
    ed60:	ea94 0f0c 	teq	r4, ip
    ed64:	d10a      	bne.n	ed7c <__aeabi_ddiv+0x19c>
    ed66:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    ed6a:	f47f af34 	bne.w	ebd6 <__aeabi_dmul+0x24a>
    ed6e:	ea95 0f0c 	teq	r5, ip
    ed72:	f47f af25 	bne.w	ebc0 <__aeabi_dmul+0x234>
    ed76:	4610      	mov	r0, r2
    ed78:	4619      	mov	r1, r3
    ed7a:	e72c      	b.n	ebd6 <__aeabi_dmul+0x24a>
    ed7c:	ea95 0f0c 	teq	r5, ip
    ed80:	d106      	bne.n	ed90 <__aeabi_ddiv+0x1b0>
    ed82:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    ed86:	f43f aefd 	beq.w	eb84 <__aeabi_dmul+0x1f8>
    ed8a:	4610      	mov	r0, r2
    ed8c:	4619      	mov	r1, r3
    ed8e:	e722      	b.n	ebd6 <__aeabi_dmul+0x24a>
    ed90:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    ed94:	bf18      	it	ne
    ed96:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    ed9a:	f47f aec5 	bne.w	eb28 <__aeabi_dmul+0x19c>
    ed9e:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
    eda2:	f47f af0d 	bne.w	ebc0 <__aeabi_dmul+0x234>
    eda6:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
    edaa:	f47f aeeb 	bne.w	eb84 <__aeabi_dmul+0x1f8>
    edae:	e712      	b.n	ebd6 <__aeabi_dmul+0x24a>

0000edb0 <__gedf2>:
    edb0:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
    edb4:	e006      	b.n	edc4 <__cmpdf2+0x4>
    edb6:	bf00      	nop

0000edb8 <__ledf2>:
    edb8:	f04f 0c01 	mov.w	ip, #1
    edbc:	e002      	b.n	edc4 <__cmpdf2+0x4>
    edbe:	bf00      	nop

0000edc0 <__cmpdf2>:
    edc0:	f04f 0c01 	mov.w	ip, #1
    edc4:	f84d cd04 	str.w	ip, [sp, #-4]!
    edc8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    edcc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    edd0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    edd4:	bf18      	it	ne
    edd6:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
    edda:	d01b      	beq.n	ee14 <__cmpdf2+0x54>
    eddc:	b001      	add	sp, #4
    edde:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
    ede2:	bf0c      	ite	eq
    ede4:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
    ede8:	ea91 0f03 	teqne	r1, r3
    edec:	bf02      	ittt	eq
    edee:	ea90 0f02 	teqeq	r0, r2
    edf2:	2000      	moveq	r0, #0
    edf4:	4770      	bxeq	lr
    edf6:	f110 0f00 	cmn.w	r0, #0
    edfa:	ea91 0f03 	teq	r1, r3
    edfe:	bf58      	it	pl
    ee00:	4299      	cmppl	r1, r3
    ee02:	bf08      	it	eq
    ee04:	4290      	cmpeq	r0, r2
    ee06:	bf2c      	ite	cs
    ee08:	17d8      	asrcs	r0, r3, #31
    ee0a:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
    ee0e:	f040 0001 	orr.w	r0, r0, #1
    ee12:	4770      	bx	lr
    ee14:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    ee18:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    ee1c:	d102      	bne.n	ee24 <__cmpdf2+0x64>
    ee1e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    ee22:	d107      	bne.n	ee34 <__cmpdf2+0x74>
    ee24:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    ee28:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    ee2c:	d1d6      	bne.n	eddc <__cmpdf2+0x1c>
    ee2e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    ee32:	d0d3      	beq.n	eddc <__cmpdf2+0x1c>
    ee34:	f85d 0b04 	ldr.w	r0, [sp], #4
    ee38:	4770      	bx	lr
    ee3a:	bf00      	nop

0000ee3c <__aeabi_cdrcmple>:
    ee3c:	4684      	mov	ip, r0
    ee3e:	4610      	mov	r0, r2
    ee40:	4662      	mov	r2, ip
    ee42:	468c      	mov	ip, r1
    ee44:	4619      	mov	r1, r3
    ee46:	4663      	mov	r3, ip
    ee48:	e000      	b.n	ee4c <__aeabi_cdcmpeq>
    ee4a:	bf00      	nop

0000ee4c <__aeabi_cdcmpeq>:
    ee4c:	b501      	push	{r0, lr}
    ee4e:	f7ff ffb7 	bl	edc0 <__cmpdf2>
    ee52:	2800      	cmp	r0, #0
    ee54:	bf48      	it	mi
    ee56:	f110 0f00 	cmnmi.w	r0, #0
    ee5a:	bd01      	pop	{r0, pc}

0000ee5c <__aeabi_dcmpeq>:
    ee5c:	f84d ed08 	str.w	lr, [sp, #-8]!
    ee60:	f7ff fff4 	bl	ee4c <__aeabi_cdcmpeq>
    ee64:	bf0c      	ite	eq
    ee66:	2001      	moveq	r0, #1
    ee68:	2000      	movne	r0, #0
    ee6a:	f85d fb08 	ldr.w	pc, [sp], #8
    ee6e:	bf00      	nop

0000ee70 <__aeabi_dcmplt>:
    ee70:	f84d ed08 	str.w	lr, [sp, #-8]!
    ee74:	f7ff ffea 	bl	ee4c <__aeabi_cdcmpeq>
    ee78:	bf34      	ite	cc
    ee7a:	2001      	movcc	r0, #1
    ee7c:	2000      	movcs	r0, #0
    ee7e:	f85d fb08 	ldr.w	pc, [sp], #8
    ee82:	bf00      	nop

0000ee84 <__aeabi_dcmple>:
    ee84:	f84d ed08 	str.w	lr, [sp, #-8]!
    ee88:	f7ff ffe0 	bl	ee4c <__aeabi_cdcmpeq>
    ee8c:	bf94      	ite	ls
    ee8e:	2001      	movls	r0, #1
    ee90:	2000      	movhi	r0, #0
    ee92:	f85d fb08 	ldr.w	pc, [sp], #8
    ee96:	bf00      	nop

0000ee98 <__aeabi_dcmpge>:
    ee98:	f84d ed08 	str.w	lr, [sp, #-8]!
    ee9c:	f7ff ffce 	bl	ee3c <__aeabi_cdrcmple>
    eea0:	bf94      	ite	ls
    eea2:	2001      	movls	r0, #1
    eea4:	2000      	movhi	r0, #0
    eea6:	f85d fb08 	ldr.w	pc, [sp], #8
    eeaa:	bf00      	nop

0000eeac <__aeabi_dcmpgt>:
    eeac:	f84d ed08 	str.w	lr, [sp, #-8]!
    eeb0:	f7ff ffc4 	bl	ee3c <__aeabi_cdrcmple>
    eeb4:	bf34      	ite	cc
    eeb6:	2001      	movcc	r0, #1
    eeb8:	2000      	movcs	r0, #0
    eeba:	f85d fb08 	ldr.w	pc, [sp], #8
    eebe:	bf00      	nop

0000eec0 <__aeabi_dcmpun>:
    eec0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    eec4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    eec8:	d102      	bne.n	eed0 <__aeabi_dcmpun+0x10>
    eeca:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    eece:	d10a      	bne.n	eee6 <__aeabi_dcmpun+0x26>
    eed0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    eed4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    eed8:	d102      	bne.n	eee0 <__aeabi_dcmpun+0x20>
    eeda:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    eede:	d102      	bne.n	eee6 <__aeabi_dcmpun+0x26>
    eee0:	f04f 0000 	mov.w	r0, #0
    eee4:	4770      	bx	lr
    eee6:	f04f 0001 	mov.w	r0, #1
    eeea:	4770      	bx	lr

0000eeec <__aeabi_d2iz>:
    eeec:	ea4f 0241 	mov.w	r2, r1, lsl #1
    eef0:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
    eef4:	d215      	bcs.n	ef22 <__aeabi_d2iz+0x36>
    eef6:	d511      	bpl.n	ef1c <__aeabi_d2iz+0x30>
    eef8:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
    eefc:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
    ef00:	d912      	bls.n	ef28 <__aeabi_d2iz+0x3c>
    ef02:	ea4f 23c1 	mov.w	r3, r1, lsl #11
    ef06:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
    ef0a:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
    ef0e:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    ef12:	fa23 f002 	lsr.w	r0, r3, r2
    ef16:	bf18      	it	ne
    ef18:	4240      	negne	r0, r0
    ef1a:	4770      	bx	lr
    ef1c:	f04f 0000 	mov.w	r0, #0
    ef20:	4770      	bx	lr
    ef22:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
    ef26:	d105      	bne.n	ef34 <__aeabi_d2iz+0x48>
    ef28:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
    ef2c:	bf08      	it	eq
    ef2e:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
    ef32:	4770      	bx	lr
    ef34:	f04f 0000 	mov.w	r0, #0
    ef38:	4770      	bx	lr
    ef3a:	bf00      	nop

0000ef3c <__aeabi_uldivmod>:
    ef3c:	b953      	cbnz	r3, ef54 <__aeabi_uldivmod+0x18>
    ef3e:	b94a      	cbnz	r2, ef54 <__aeabi_uldivmod+0x18>
    ef40:	2900      	cmp	r1, #0
    ef42:	bf08      	it	eq
    ef44:	2800      	cmpeq	r0, #0
    ef46:	bf1c      	itt	ne
    ef48:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
    ef4c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
    ef50:	f000 b96c 	b.w	f22c <__aeabi_idiv0>
    ef54:	f1ad 0c08 	sub.w	ip, sp, #8
    ef58:	e96d ce04 	strd	ip, lr, [sp, #-16]!
    ef5c:	f000 f806 	bl	ef6c <__udivmoddi4>
    ef60:	f8dd e004 	ldr.w	lr, [sp, #4]
    ef64:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    ef68:	b004      	add	sp, #16
    ef6a:	4770      	bx	lr

0000ef6c <__udivmoddi4>:
    ef6c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    ef70:	9e08      	ldr	r6, [sp, #32]
    ef72:	460d      	mov	r5, r1
    ef74:	4604      	mov	r4, r0
    ef76:	468e      	mov	lr, r1
    ef78:	2b00      	cmp	r3, #0
    ef7a:	f040 8082 	bne.w	f082 <__udivmoddi4+0x116>
    ef7e:	428a      	cmp	r2, r1
    ef80:	4617      	mov	r7, r2
    ef82:	d946      	bls.n	f012 <__udivmoddi4+0xa6>
    ef84:	fab2 f282 	clz	r2, r2
    ef88:	b14a      	cbz	r2, ef9e <__udivmoddi4+0x32>
    ef8a:	f1c2 0120 	rsb	r1, r2, #32
    ef8e:	fa05 f302 	lsl.w	r3, r5, r2
    ef92:	fa20 f101 	lsr.w	r1, r0, r1
    ef96:	4097      	lsls	r7, r2
    ef98:	ea41 0e03 	orr.w	lr, r1, r3
    ef9c:	4094      	lsls	r4, r2
    ef9e:	ea4f 4817 	mov.w	r8, r7, lsr #16
    efa2:	0c23      	lsrs	r3, r4, #16
    efa4:	fbbe fcf8 	udiv	ip, lr, r8
    efa8:	b2b9      	uxth	r1, r7
    efaa:	fb08 ee1c 	mls	lr, r8, ip, lr
    efae:	ea43 430e 	orr.w	r3, r3, lr, lsl #16
    efb2:	fb0c f001 	mul.w	r0, ip, r1
    efb6:	4298      	cmp	r0, r3
    efb8:	d90a      	bls.n	efd0 <__udivmoddi4+0x64>
    efba:	18fb      	adds	r3, r7, r3
    efbc:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
    efc0:	f080 8116 	bcs.w	f1f0 <__udivmoddi4+0x284>
    efc4:	4298      	cmp	r0, r3
    efc6:	f240 8113 	bls.w	f1f0 <__udivmoddi4+0x284>
    efca:	f1ac 0c02 	sub.w	ip, ip, #2
    efce:	443b      	add	r3, r7
    efd0:	1a1b      	subs	r3, r3, r0
    efd2:	b2a4      	uxth	r4, r4
    efd4:	fbb3 f0f8 	udiv	r0, r3, r8
    efd8:	fb08 3310 	mls	r3, r8, r0, r3
    efdc:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
    efe0:	fb00 f101 	mul.w	r1, r0, r1
    efe4:	42a1      	cmp	r1, r4
    efe6:	d909      	bls.n	effc <__udivmoddi4+0x90>
    efe8:	193c      	adds	r4, r7, r4
    efea:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
    efee:	f080 8101 	bcs.w	f1f4 <__udivmoddi4+0x288>
    eff2:	42a1      	cmp	r1, r4
    eff4:	f240 80fe 	bls.w	f1f4 <__udivmoddi4+0x288>
    eff8:	3802      	subs	r0, #2
    effa:	443c      	add	r4, r7
    effc:	1a64      	subs	r4, r4, r1
    effe:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
    f002:	2100      	movs	r1, #0
    f004:	b11e      	cbz	r6, f00e <__udivmoddi4+0xa2>
    f006:	40d4      	lsrs	r4, r2
    f008:	2300      	movs	r3, #0
    f00a:	e9c6 4300 	strd	r4, r3, [r6]
    f00e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    f012:	b902      	cbnz	r2, f016 <__udivmoddi4+0xaa>
    f014:	deff      	udf	#255	; 0xff
    f016:	fab2 f282 	clz	r2, r2
    f01a:	2a00      	cmp	r2, #0
    f01c:	d14f      	bne.n	f0be <__udivmoddi4+0x152>
    f01e:	1bcb      	subs	r3, r1, r7
    f020:	ea4f 4e17 	mov.w	lr, r7, lsr #16
    f024:	fa1f f887 	uxth.w	r8, r7
    f028:	2101      	movs	r1, #1
    f02a:	fbb3 fcfe 	udiv	ip, r3, lr
    f02e:	0c25      	lsrs	r5, r4, #16
    f030:	fb0e 331c 	mls	r3, lr, ip, r3
    f034:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
    f038:	fb08 f30c 	mul.w	r3, r8, ip
    f03c:	42ab      	cmp	r3, r5
    f03e:	d907      	bls.n	f050 <__udivmoddi4+0xe4>
    f040:	197d      	adds	r5, r7, r5
    f042:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
    f046:	d202      	bcs.n	f04e <__udivmoddi4+0xe2>
    f048:	42ab      	cmp	r3, r5
    f04a:	f200 80e7 	bhi.w	f21c <__udivmoddi4+0x2b0>
    f04e:	4684      	mov	ip, r0
    f050:	1aed      	subs	r5, r5, r3
    f052:	b2a3      	uxth	r3, r4
    f054:	fbb5 f0fe 	udiv	r0, r5, lr
    f058:	fb0e 5510 	mls	r5, lr, r0, r5
    f05c:	ea43 4405 	orr.w	r4, r3, r5, lsl #16
    f060:	fb08 f800 	mul.w	r8, r8, r0
    f064:	45a0      	cmp	r8, r4
    f066:	d907      	bls.n	f078 <__udivmoddi4+0x10c>
    f068:	193c      	adds	r4, r7, r4
    f06a:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
    f06e:	d202      	bcs.n	f076 <__udivmoddi4+0x10a>
    f070:	45a0      	cmp	r8, r4
    f072:	f200 80d7 	bhi.w	f224 <__udivmoddi4+0x2b8>
    f076:	4618      	mov	r0, r3
    f078:	eba4 0408 	sub.w	r4, r4, r8
    f07c:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
    f080:	e7c0      	b.n	f004 <__udivmoddi4+0x98>
    f082:	428b      	cmp	r3, r1
    f084:	d908      	bls.n	f098 <__udivmoddi4+0x12c>
    f086:	2e00      	cmp	r6, #0
    f088:	f000 80af 	beq.w	f1ea <__udivmoddi4+0x27e>
    f08c:	2100      	movs	r1, #0
    f08e:	e9c6 0500 	strd	r0, r5, [r6]
    f092:	4608      	mov	r0, r1
    f094:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    f098:	fab3 f183 	clz	r1, r3
    f09c:	2900      	cmp	r1, #0
    f09e:	d14b      	bne.n	f138 <__udivmoddi4+0x1cc>
    f0a0:	42ab      	cmp	r3, r5
    f0a2:	d302      	bcc.n	f0aa <__udivmoddi4+0x13e>
    f0a4:	4282      	cmp	r2, r0
    f0a6:	f200 80b7 	bhi.w	f218 <__udivmoddi4+0x2ac>
    f0aa:	1a84      	subs	r4, r0, r2
    f0ac:	eb65 0303 	sbc.w	r3, r5, r3
    f0b0:	2001      	movs	r0, #1
    f0b2:	469e      	mov	lr, r3
    f0b4:	2e00      	cmp	r6, #0
    f0b6:	d0aa      	beq.n	f00e <__udivmoddi4+0xa2>
    f0b8:	e9c6 4e00 	strd	r4, lr, [r6]
    f0bc:	e7a7      	b.n	f00e <__udivmoddi4+0xa2>
    f0be:	f1c2 0c20 	rsb	ip, r2, #32
    f0c2:	fa01 f302 	lsl.w	r3, r1, r2
    f0c6:	4097      	lsls	r7, r2
    f0c8:	fa20 f00c 	lsr.w	r0, r0, ip
    f0cc:	ea4f 4e17 	mov.w	lr, r7, lsr #16
    f0d0:	fa21 fc0c 	lsr.w	ip, r1, ip
    f0d4:	4318      	orrs	r0, r3
    f0d6:	fbbc f1fe 	udiv	r1, ip, lr
    f0da:	0c05      	lsrs	r5, r0, #16
    f0dc:	fb0e cc11 	mls	ip, lr, r1, ip
    f0e0:	fa1f f887 	uxth.w	r8, r7
    f0e4:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
    f0e8:	fb01 f308 	mul.w	r3, r1, r8
    f0ec:	42ab      	cmp	r3, r5
    f0ee:	fa04 f402 	lsl.w	r4, r4, r2
    f0f2:	d909      	bls.n	f108 <__udivmoddi4+0x19c>
    f0f4:	197d      	adds	r5, r7, r5
    f0f6:	f101 3cff 	add.w	ip, r1, #4294967295	; 0xffffffff
    f0fa:	f080 808b 	bcs.w	f214 <__udivmoddi4+0x2a8>
    f0fe:	42ab      	cmp	r3, r5
    f100:	f240 8088 	bls.w	f214 <__udivmoddi4+0x2a8>
    f104:	3902      	subs	r1, #2
    f106:	443d      	add	r5, r7
    f108:	1aeb      	subs	r3, r5, r3
    f10a:	b285      	uxth	r5, r0
    f10c:	fbb3 f0fe 	udiv	r0, r3, lr
    f110:	fb0e 3310 	mls	r3, lr, r0, r3
    f114:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
    f118:	fb00 f308 	mul.w	r3, r0, r8
    f11c:	42ab      	cmp	r3, r5
    f11e:	d907      	bls.n	f130 <__udivmoddi4+0x1c4>
    f120:	197d      	adds	r5, r7, r5
    f122:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
    f126:	d271      	bcs.n	f20c <__udivmoddi4+0x2a0>
    f128:	42ab      	cmp	r3, r5
    f12a:	d96f      	bls.n	f20c <__udivmoddi4+0x2a0>
    f12c:	3802      	subs	r0, #2
    f12e:	443d      	add	r5, r7
    f130:	1aeb      	subs	r3, r5, r3
    f132:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
    f136:	e778      	b.n	f02a <__udivmoddi4+0xbe>
    f138:	f1c1 0c20 	rsb	ip, r1, #32
    f13c:	408b      	lsls	r3, r1
    f13e:	fa22 f70c 	lsr.w	r7, r2, ip
    f142:	431f      	orrs	r7, r3
    f144:	fa20 f40c 	lsr.w	r4, r0, ip
    f148:	fa05 f301 	lsl.w	r3, r5, r1
    f14c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
    f150:	fa25 f50c 	lsr.w	r5, r5, ip
    f154:	431c      	orrs	r4, r3
    f156:	0c23      	lsrs	r3, r4, #16
    f158:	fbb5 f9fe 	udiv	r9, r5, lr
    f15c:	fa1f f887 	uxth.w	r8, r7
    f160:	fb0e 5519 	mls	r5, lr, r9, r5
    f164:	ea43 4505 	orr.w	r5, r3, r5, lsl #16
    f168:	fb09 fa08 	mul.w	sl, r9, r8
    f16c:	45aa      	cmp	sl, r5
    f16e:	fa02 f201 	lsl.w	r2, r2, r1
    f172:	fa00 f301 	lsl.w	r3, r0, r1
    f176:	d908      	bls.n	f18a <__udivmoddi4+0x21e>
    f178:	197d      	adds	r5, r7, r5
    f17a:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
    f17e:	d247      	bcs.n	f210 <__udivmoddi4+0x2a4>
    f180:	45aa      	cmp	sl, r5
    f182:	d945      	bls.n	f210 <__udivmoddi4+0x2a4>
    f184:	f1a9 0902 	sub.w	r9, r9, #2
    f188:	443d      	add	r5, r7
    f18a:	eba5 050a 	sub.w	r5, r5, sl
    f18e:	b2a4      	uxth	r4, r4
    f190:	fbb5 f0fe 	udiv	r0, r5, lr
    f194:	fb0e 5510 	mls	r5, lr, r0, r5
    f198:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
    f19c:	fb00 f808 	mul.w	r8, r0, r8
    f1a0:	45a0      	cmp	r8, r4
    f1a2:	d907      	bls.n	f1b4 <__udivmoddi4+0x248>
    f1a4:	193c      	adds	r4, r7, r4
    f1a6:	f100 35ff 	add.w	r5, r0, #4294967295	; 0xffffffff
    f1aa:	d22d      	bcs.n	f208 <__udivmoddi4+0x29c>
    f1ac:	45a0      	cmp	r8, r4
    f1ae:	d92b      	bls.n	f208 <__udivmoddi4+0x29c>
    f1b0:	3802      	subs	r0, #2
    f1b2:	443c      	add	r4, r7
    f1b4:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
    f1b8:	eba4 0408 	sub.w	r4, r4, r8
    f1bc:	fba0 8902 	umull	r8, r9, r0, r2
    f1c0:	454c      	cmp	r4, r9
    f1c2:	46c6      	mov	lr, r8
    f1c4:	464d      	mov	r5, r9
    f1c6:	d319      	bcc.n	f1fc <__udivmoddi4+0x290>
    f1c8:	d016      	beq.n	f1f8 <__udivmoddi4+0x28c>
    f1ca:	b15e      	cbz	r6, f1e4 <__udivmoddi4+0x278>
    f1cc:	ebb3 020e 	subs.w	r2, r3, lr
    f1d0:	eb64 0405 	sbc.w	r4, r4, r5
    f1d4:	fa04 fc0c 	lsl.w	ip, r4, ip
    f1d8:	40ca      	lsrs	r2, r1
    f1da:	ea4c 0202 	orr.w	r2, ip, r2
    f1de:	40cc      	lsrs	r4, r1
    f1e0:	e9c6 2400 	strd	r2, r4, [r6]
    f1e4:	2100      	movs	r1, #0
    f1e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    f1ea:	4631      	mov	r1, r6
    f1ec:	4630      	mov	r0, r6
    f1ee:	e70e      	b.n	f00e <__udivmoddi4+0xa2>
    f1f0:	46ac      	mov	ip, r5
    f1f2:	e6ed      	b.n	efd0 <__udivmoddi4+0x64>
    f1f4:	4618      	mov	r0, r3
    f1f6:	e701      	b.n	effc <__udivmoddi4+0x90>
    f1f8:	4543      	cmp	r3, r8
    f1fa:	d2e6      	bcs.n	f1ca <__udivmoddi4+0x25e>
    f1fc:	ebb8 0e02 	subs.w	lr, r8, r2
    f200:	eb69 0507 	sbc.w	r5, r9, r7
    f204:	3801      	subs	r0, #1
    f206:	e7e0      	b.n	f1ca <__udivmoddi4+0x25e>
    f208:	4628      	mov	r0, r5
    f20a:	e7d3      	b.n	f1b4 <__udivmoddi4+0x248>
    f20c:	4660      	mov	r0, ip
    f20e:	e78f      	b.n	f130 <__udivmoddi4+0x1c4>
    f210:	4681      	mov	r9, r0
    f212:	e7ba      	b.n	f18a <__udivmoddi4+0x21e>
    f214:	4661      	mov	r1, ip
    f216:	e777      	b.n	f108 <__udivmoddi4+0x19c>
    f218:	4608      	mov	r0, r1
    f21a:	e74b      	b.n	f0b4 <__udivmoddi4+0x148>
    f21c:	f1ac 0c02 	sub.w	ip, ip, #2
    f220:	443d      	add	r5, r7
    f222:	e715      	b.n	f050 <__udivmoddi4+0xe4>
    f224:	3802      	subs	r0, #2
    f226:	443c      	add	r4, r7
    f228:	e726      	b.n	f078 <__udivmoddi4+0x10c>
    f22a:	bf00      	nop

0000f22c <__aeabi_idiv0>:
    f22c:	4770      	bx	lr
    f22e:	bf00      	nop

0000f230 <_close>:
    f230:	4b02      	ldr	r3, [pc, #8]	; (f23c <_close+0xc>)
    f232:	2258      	movs	r2, #88	; 0x58
    f234:	601a      	str	r2, [r3, #0]
    f236:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f23a:	4770      	bx	lr
    f23c:	000200a4 	.word	0x000200a4

0000f240 <_fstat>:
    f240:	4b02      	ldr	r3, [pc, #8]	; (f24c <_fstat+0xc>)
    f242:	2258      	movs	r2, #88	; 0x58
    f244:	601a      	str	r2, [r3, #0]
    f246:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f24a:	4770      	bx	lr
    f24c:	000200a4 	.word	0x000200a4

0000f250 <_getpid>:
    f250:	4b02      	ldr	r3, [pc, #8]	; (f25c <_getpid+0xc>)
    f252:	2258      	movs	r2, #88	; 0x58
    f254:	601a      	str	r2, [r3, #0]
    f256:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f25a:	4770      	bx	lr
    f25c:	000200a4 	.word	0x000200a4

0000f260 <_isatty>:
    f260:	4b02      	ldr	r3, [pc, #8]	; (f26c <_isatty+0xc>)
    f262:	2258      	movs	r2, #88	; 0x58
    f264:	601a      	str	r2, [r3, #0]
    f266:	2000      	movs	r0, #0
    f268:	4770      	bx	lr
    f26a:	bf00      	nop
    f26c:	000200a4 	.word	0x000200a4

0000f270 <_kill>:
    f270:	4b02      	ldr	r3, [pc, #8]	; (f27c <_kill+0xc>)
    f272:	2258      	movs	r2, #88	; 0x58
    f274:	601a      	str	r2, [r3, #0]
    f276:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f27a:	4770      	bx	lr
    f27c:	000200a4 	.word	0x000200a4

0000f280 <_lseek>:
    f280:	4b02      	ldr	r3, [pc, #8]	; (f28c <_lseek+0xc>)
    f282:	2258      	movs	r2, #88	; 0x58
    f284:	601a      	str	r2, [r3, #0]
    f286:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f28a:	4770      	bx	lr
    f28c:	000200a4 	.word	0x000200a4

0000f290 <_read>:
    f290:	4b02      	ldr	r3, [pc, #8]	; (f29c <_read+0xc>)
    f292:	2258      	movs	r2, #88	; 0x58
    f294:	601a      	str	r2, [r3, #0]
    f296:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f29a:	4770      	bx	lr
    f29c:	000200a4 	.word	0x000200a4

0000f2a0 <_sbrk>:
    f2a0:	4a04      	ldr	r2, [pc, #16]	; (f2b4 <_sbrk+0x14>)
    f2a2:	4905      	ldr	r1, [pc, #20]	; (f2b8 <_sbrk+0x18>)
    f2a4:	6813      	ldr	r3, [r2, #0]
    f2a6:	2b00      	cmp	r3, #0
    f2a8:	bf08      	it	eq
    f2aa:	460b      	moveq	r3, r1
    f2ac:	4418      	add	r0, r3
    f2ae:	6010      	str	r0, [r2, #0]
    f2b0:	4618      	mov	r0, r3
    f2b2:	4770      	bx	lr
    f2b4:	000200a0 	.word	0x000200a0
    f2b8:	000200a8 	.word	0x000200a8

0000f2bc <_write>:
    f2bc:	4b02      	ldr	r3, [pc, #8]	; (f2c8 <_write+0xc>)
    f2be:	2258      	movs	r2, #88	; 0x58
    f2c0:	601a      	str	r2, [r3, #0]
    f2c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    f2c6:	4770      	bx	lr
    f2c8:	000200a4 	.word	0x000200a4

0000f2cc <_exit>:
    f2cc:	e7fe      	b.n	f2cc <_exit>
    f2ce:	bf00      	nop

Disassembly of section .fini:

0000f2d0 <_fini>:
    f2d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    f2d2:	bf00      	nop
    f2d4:	bcf8      	pop	{r3, r4, r5, r6, r7}
    f2d6:	bc08      	pop	{r3}
    f2d8:	469e      	mov	lr, r3
    f2da:	4770      	bx	lr
