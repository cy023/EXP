
switch.elf:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8002:	bf00      	nop
    8004:	bcf8      	pop	{r3, r4, r5, r6, r7}
    8006:	bc08      	pop	{r3}
    8008:	469e      	mov	lr, r3
    800a:	4770      	bx	lr

Disassembly of section .text:

0000800c <register_fini>:
    800c:	4b02      	ldr	r3, [pc, #8]	; (8018 <register_fini+0xc>)
    800e:	b113      	cbz	r3, 8016 <register_fini+0xa>
    8010:	4802      	ldr	r0, [pc, #8]	; (801c <register_fini+0x10>)
    8012:	f000 b909 	b.w	8228 <atexit>
    8016:	4770      	bx	lr
    8018:	00000000 	.word	0x00000000
    801c:	00008255 	.word	0x00008255

00008020 <deregister_tm_clones>:
    8020:	4803      	ldr	r0, [pc, #12]	; (8030 <deregister_tm_clones+0x10>)
    8022:	4b04      	ldr	r3, [pc, #16]	; (8034 <deregister_tm_clones+0x14>)
    8024:	4283      	cmp	r3, r0
    8026:	d002      	beq.n	802e <deregister_tm_clones+0xe>
    8028:	4b03      	ldr	r3, [pc, #12]	; (8038 <deregister_tm_clones+0x18>)
    802a:	b103      	cbz	r3, 802e <deregister_tm_clones+0xe>
    802c:	4718      	bx	r3
    802e:	4770      	bx	lr
    8030:	000188d8 	.word	0x000188d8
    8034:	000188d8 	.word	0x000188d8
    8038:	00000000 	.word	0x00000000

0000803c <register_tm_clones>:
    803c:	4805      	ldr	r0, [pc, #20]	; (8054 <register_tm_clones+0x18>)
    803e:	4906      	ldr	r1, [pc, #24]	; (8058 <register_tm_clones+0x1c>)
    8040:	1a0b      	subs	r3, r1, r0
    8042:	0fd9      	lsrs	r1, r3, #31
    8044:	eb01 01a3 	add.w	r1, r1, r3, asr #2
    8048:	1049      	asrs	r1, r1, #1
    804a:	d002      	beq.n	8052 <register_tm_clones+0x16>
    804c:	4b03      	ldr	r3, [pc, #12]	; (805c <register_tm_clones+0x20>)
    804e:	b103      	cbz	r3, 8052 <register_tm_clones+0x16>
    8050:	4718      	bx	r3
    8052:	4770      	bx	lr
    8054:	000188d8 	.word	0x000188d8
    8058:	000188d8 	.word	0x000188d8
    805c:	00000000 	.word	0x00000000

00008060 <__do_global_dtors_aux>:
    8060:	b510      	push	{r4, lr}
    8062:	4c06      	ldr	r4, [pc, #24]	; (807c <__do_global_dtors_aux+0x1c>)
    8064:	7823      	ldrb	r3, [r4, #0]
    8066:	b943      	cbnz	r3, 807a <__do_global_dtors_aux+0x1a>
    8068:	f7ff ffda 	bl	8020 <deregister_tm_clones>
    806c:	4b04      	ldr	r3, [pc, #16]	; (8080 <__do_global_dtors_aux+0x20>)
    806e:	b113      	cbz	r3, 8076 <__do_global_dtors_aux+0x16>
    8070:	4804      	ldr	r0, [pc, #16]	; (8084 <__do_global_dtors_aux+0x24>)
    8072:	f3af 8000 	nop.w
    8076:	2301      	movs	r3, #1
    8078:	7023      	strb	r3, [r4, #0]
    807a:	bd10      	pop	{r4, pc}
    807c:	000188d8 	.word	0x000188d8
    8080:	00000000 	.word	0x00000000
    8084:	00008490 	.word	0x00008490

00008088 <frame_dummy>:
    8088:	b508      	push	{r3, lr}
    808a:	4b04      	ldr	r3, [pc, #16]	; (809c <frame_dummy+0x14>)
    808c:	b11b      	cbz	r3, 8096 <frame_dummy+0xe>
    808e:	4904      	ldr	r1, [pc, #16]	; (80a0 <frame_dummy+0x18>)
    8090:	4804      	ldr	r0, [pc, #16]	; (80a4 <frame_dummy+0x1c>)
    8092:	f3af 8000 	nop.w
    8096:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    809a:	e7cf      	b.n	803c <register_tm_clones>
    809c:	00000000 	.word	0x00000000
    80a0:	000188dc 	.word	0x000188dc
    80a4:	00008490 	.word	0x00008490

000080a8 <_stack_init>:
    80a8:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
    80ac:	4770      	bx	lr
    80ae:	bf00      	nop

000080b0 <_mainCRTStartup>:
    80b0:	4b15      	ldr	r3, [pc, #84]	; (8108 <_mainCRTStartup+0x58>)
    80b2:	2b00      	cmp	r3, #0
    80b4:	bf08      	it	eq
    80b6:	4b11      	ldreq	r3, [pc, #68]	; (80fc <_mainCRTStartup+0x4c>)
    80b8:	469d      	mov	sp, r3
    80ba:	f7ff fff5 	bl	80a8 <_stack_init>
    80be:	2100      	movs	r1, #0
    80c0:	468b      	mov	fp, r1
    80c2:	460f      	mov	r7, r1
    80c4:	4811      	ldr	r0, [pc, #68]	; (810c <_mainCRTStartup+0x5c>)
    80c6:	4a12      	ldr	r2, [pc, #72]	; (8110 <_mainCRTStartup+0x60>)
    80c8:	1a12      	subs	r2, r2, r0
    80ca:	f000 f901 	bl	82d0 <memset>
    80ce:	4b0c      	ldr	r3, [pc, #48]	; (8100 <_mainCRTStartup+0x50>)
    80d0:	2b00      	cmp	r3, #0
    80d2:	d000      	beq.n	80d6 <_mainCRTStartup+0x26>
    80d4:	4798      	blx	r3
    80d6:	4b0b      	ldr	r3, [pc, #44]	; (8104 <_mainCRTStartup+0x54>)
    80d8:	2b00      	cmp	r3, #0
    80da:	d000      	beq.n	80de <_mainCRTStartup+0x2e>
    80dc:	4798      	blx	r3
    80de:	2000      	movs	r0, #0
    80e0:	2100      	movs	r1, #0
    80e2:	0004      	movs	r4, r0
    80e4:	000d      	movs	r5, r1
    80e6:	480b      	ldr	r0, [pc, #44]	; (8114 <_mainCRTStartup+0x64>)
    80e8:	f000 f89e 	bl	8228 <atexit>
    80ec:	f000 f8cc 	bl	8288 <__libc_init_array>
    80f0:	0020      	movs	r0, r4
    80f2:	0029      	movs	r1, r5
    80f4:	f000 f88d 	bl	8212 <main>
    80f8:	f000 f89c 	bl	8234 <exit>
    80fc:	00080000 	.word	0x00080000
	...
    810c:	000188d8 	.word	0x000188d8
    8110:	000188f4 	.word	0x000188f4
    8114:	00008255 	.word	0x00008255

00008118 <switch_eg>:
    8118:	b480      	push	{r7}
    811a:	b087      	sub	sp, #28
    811c:	af00      	add	r7, sp, #0
    811e:	60f8      	str	r0, [r7, #12]
    8120:	60b9      	str	r1, [r7, #8]
    8122:	607a      	str	r2, [r7, #4]
    8124:	2301      	movs	r3, #1
    8126:	617b      	str	r3, [r7, #20]
    8128:	68fb      	ldr	r3, [r7, #12]
    812a:	3b01      	subs	r3, #1
    812c:	2b05      	cmp	r3, #5
    812e:	d824      	bhi.n	817a <switch_eg+0x62>
    8130:	a201      	add	r2, pc, #4	; (adr r2, 8138 <switch_eg+0x20>)
    8132:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    8136:	bf00      	nop
    8138:	00008151 	.word	0x00008151
    813c:	0000815d 	.word	0x0000815d
    8140:	00008167 	.word	0x00008167
    8144:	0000817b 	.word	0x0000817b
    8148:	00008171 	.word	0x00008171
    814c:	00008171 	.word	0x00008171
    8150:	68bb      	ldr	r3, [r7, #8]
    8152:	687a      	ldr	r2, [r7, #4]
    8154:	fb02 f303 	mul.w	r3, r2, r3
    8158:	617b      	str	r3, [r7, #20]
    815a:	e010      	b.n	817e <switch_eg+0x66>
    815c:	68ba      	ldr	r2, [r7, #8]
    815e:	687b      	ldr	r3, [r7, #4]
    8160:	fb92 f3f3 	sdiv	r3, r2, r3
    8164:	617b      	str	r3, [r7, #20]
    8166:	697a      	ldr	r2, [r7, #20]
    8168:	687b      	ldr	r3, [r7, #4]
    816a:	4413      	add	r3, r2
    816c:	617b      	str	r3, [r7, #20]
    816e:	e006      	b.n	817e <switch_eg+0x66>
    8170:	697a      	ldr	r2, [r7, #20]
    8172:	687b      	ldr	r3, [r7, #4]
    8174:	1ad3      	subs	r3, r2, r3
    8176:	617b      	str	r3, [r7, #20]
    8178:	e001      	b.n	817e <switch_eg+0x66>
    817a:	2302      	movs	r3, #2
    817c:	617b      	str	r3, [r7, #20]
    817e:	697b      	ldr	r3, [r7, #20]
    8180:	4618      	mov	r0, r3
    8182:	371c      	adds	r7, #28
    8184:	46bd      	mov	sp, r7
    8186:	bc80      	pop	{r7}
    8188:	4770      	bx	lr

0000818a <sparse_switch_eg>:
    818a:	b480      	push	{r7}
    818c:	b087      	sub	sp, #28
    818e:	af00      	add	r7, sp, #0
    8190:	60f8      	str	r0, [r7, #12]
    8192:	60b9      	str	r1, [r7, #8]
    8194:	607a      	str	r2, [r7, #4]
    8196:	2301      	movs	r3, #1
    8198:	617b      	str	r3, [r7, #20]
    819a:	68fb      	ldr	r3, [r7, #12]
    819c:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
    81a0:	d02a      	beq.n	81f8 <sparse_switch_eg+0x6e>
    81a2:	68fb      	ldr	r3, [r7, #12]
    81a4:	f5b3 7f16 	cmp.w	r3, #600	; 0x258
    81a8:	dc2b      	bgt.n	8202 <sparse_switch_eg+0x78>
    81aa:	68fb      	ldr	r3, [r7, #12]
    81ac:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
    81b0:	d022      	beq.n	81f8 <sparse_switch_eg+0x6e>
    81b2:	68fb      	ldr	r3, [r7, #12]
    81b4:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
    81b8:	dc23      	bgt.n	8202 <sparse_switch_eg+0x78>
    81ba:	68fb      	ldr	r3, [r7, #12]
    81bc:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
    81c0:	d015      	beq.n	81ee <sparse_switch_eg+0x64>
    81c2:	68fb      	ldr	r3, [r7, #12]
    81c4:	f5b3 7f96 	cmp.w	r3, #300	; 0x12c
    81c8:	dc1b      	bgt.n	8202 <sparse_switch_eg+0x78>
    81ca:	68fb      	ldr	r3, [r7, #12]
    81cc:	2b64      	cmp	r3, #100	; 0x64
    81ce:	d003      	beq.n	81d8 <sparse_switch_eg+0x4e>
    81d0:	68fb      	ldr	r3, [r7, #12]
    81d2:	2bc8      	cmp	r3, #200	; 0xc8
    81d4:	d006      	beq.n	81e4 <sparse_switch_eg+0x5a>
    81d6:	e014      	b.n	8202 <sparse_switch_eg+0x78>
    81d8:	68bb      	ldr	r3, [r7, #8]
    81da:	687a      	ldr	r2, [r7, #4]
    81dc:	fb02 f303 	mul.w	r3, r2, r3
    81e0:	617b      	str	r3, [r7, #20]
    81e2:	e010      	b.n	8206 <sparse_switch_eg+0x7c>
    81e4:	68ba      	ldr	r2, [r7, #8]
    81e6:	687b      	ldr	r3, [r7, #4]
    81e8:	fb92 f3f3 	sdiv	r3, r2, r3
    81ec:	617b      	str	r3, [r7, #20]
    81ee:	697a      	ldr	r2, [r7, #20]
    81f0:	687b      	ldr	r3, [r7, #4]
    81f2:	4413      	add	r3, r2
    81f4:	617b      	str	r3, [r7, #20]
    81f6:	e006      	b.n	8206 <sparse_switch_eg+0x7c>
    81f8:	697a      	ldr	r2, [r7, #20]
    81fa:	687b      	ldr	r3, [r7, #4]
    81fc:	1ad3      	subs	r3, r2, r3
    81fe:	617b      	str	r3, [r7, #20]
    8200:	e001      	b.n	8206 <sparse_switch_eg+0x7c>
    8202:	2302      	movs	r3, #2
    8204:	617b      	str	r3, [r7, #20]
    8206:	697b      	ldr	r3, [r7, #20]
    8208:	4618      	mov	r0, r3
    820a:	371c      	adds	r7, #28
    820c:	46bd      	mov	sp, r7
    820e:	bc80      	pop	{r7}
    8210:	4770      	bx	lr

00008212 <main>:
    8212:	b480      	push	{r7}
    8214:	b083      	sub	sp, #12
    8216:	af00      	add	r7, sp, #0
    8218:	6078      	str	r0, [r7, #4]
    821a:	6039      	str	r1, [r7, #0]
    821c:	2300      	movs	r3, #0
    821e:	4618      	mov	r0, r3
    8220:	370c      	adds	r7, #12
    8222:	46bd      	mov	sp, r7
    8224:	bc80      	pop	{r7}
    8226:	4770      	bx	lr

00008228 <atexit>:
    8228:	2300      	movs	r3, #0
    822a:	4601      	mov	r1, r0
    822c:	461a      	mov	r2, r3
    822e:	4618      	mov	r0, r3
    8230:	f000 b89e 	b.w	8370 <__register_exitproc>

00008234 <exit>:
    8234:	b508      	push	{r3, lr}
    8236:	2100      	movs	r1, #0
    8238:	4604      	mov	r4, r0
    823a:	f000 f8cd 	bl	83d8 <__call_exitprocs>
    823e:	4b04      	ldr	r3, [pc, #16]	; (8250 <exit+0x1c>)
    8240:	6818      	ldr	r0, [r3, #0]
    8242:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    8244:	b103      	cbz	r3, 8248 <exit+0x14>
    8246:	4798      	blx	r3
    8248:	4620      	mov	r0, r4
    824a:	f000 f913 	bl	8474 <_exit>
    824e:	bf00      	nop
    8250:	00008484 	.word	0x00008484

00008254 <__libc_fini_array>:
    8254:	b538      	push	{r3, r4, r5, lr}
    8256:	4c0a      	ldr	r4, [pc, #40]	; (8280 <__libc_fini_array+0x2c>)
    8258:	4d0a      	ldr	r5, [pc, #40]	; (8284 <__libc_fini_array+0x30>)
    825a:	1b64      	subs	r4, r4, r5
    825c:	10a4      	asrs	r4, r4, #2
    825e:	d00a      	beq.n	8276 <__libc_fini_array+0x22>
    8260:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
    8264:	3b01      	subs	r3, #1
    8266:	eb05 0583 	add.w	r5, r5, r3, lsl #2
    826a:	3c01      	subs	r4, #1
    826c:	f855 3904 	ldr.w	r3, [r5], #-4
    8270:	4798      	blx	r3
    8272:	2c00      	cmp	r4, #0
    8274:	d1f9      	bne.n	826a <__libc_fini_array+0x16>
    8276:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    827a:	f000 b8fd 	b.w	8478 <_fini>
    827e:	bf00      	nop
    8280:	000184a0 	.word	0x000184a0
    8284:	0001849c 	.word	0x0001849c

00008288 <__libc_init_array>:
    8288:	b570      	push	{r4, r5, r6, lr}
    828a:	4e0d      	ldr	r6, [pc, #52]	; (82c0 <__libc_init_array+0x38>)
    828c:	4d0d      	ldr	r5, [pc, #52]	; (82c4 <__libc_init_array+0x3c>)
    828e:	1b76      	subs	r6, r6, r5
    8290:	10b6      	asrs	r6, r6, #2
    8292:	d006      	beq.n	82a2 <__libc_init_array+0x1a>
    8294:	2400      	movs	r4, #0
    8296:	3401      	adds	r4, #1
    8298:	f855 3b04 	ldr.w	r3, [r5], #4
    829c:	4798      	blx	r3
    829e:	42a6      	cmp	r6, r4
    82a0:	d1f9      	bne.n	8296 <__libc_init_array+0xe>
    82a2:	4e09      	ldr	r6, [pc, #36]	; (82c8 <__libc_init_array+0x40>)
    82a4:	4d09      	ldr	r5, [pc, #36]	; (82cc <__libc_init_array+0x44>)
    82a6:	1b76      	subs	r6, r6, r5
    82a8:	f7ff feaa 	bl	8000 <_init>
    82ac:	10b6      	asrs	r6, r6, #2
    82ae:	d006      	beq.n	82be <__libc_init_array+0x36>
    82b0:	2400      	movs	r4, #0
    82b2:	3401      	adds	r4, #1
    82b4:	f855 3b04 	ldr.w	r3, [r5], #4
    82b8:	4798      	blx	r3
    82ba:	42a6      	cmp	r6, r4
    82bc:	d1f9      	bne.n	82b2 <__libc_init_array+0x2a>
    82be:	bd70      	pop	{r4, r5, r6, pc}
    82c0:	00018494 	.word	0x00018494
    82c4:	00018494 	.word	0x00018494
    82c8:	0001849c 	.word	0x0001849c
    82cc:	00018494 	.word	0x00018494

000082d0 <memset>:
    82d0:	b4f0      	push	{r4, r5, r6, r7}
    82d2:	0786      	lsls	r6, r0, #30
    82d4:	d046      	beq.n	8364 <memset+0x94>
    82d6:	1e54      	subs	r4, r2, #1
    82d8:	2a00      	cmp	r2, #0
    82da:	d03c      	beq.n	8356 <memset+0x86>
    82dc:	b2ca      	uxtb	r2, r1
    82de:	4603      	mov	r3, r0
    82e0:	e002      	b.n	82e8 <memset+0x18>
    82e2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
    82e6:	d336      	bcc.n	8356 <memset+0x86>
    82e8:	f803 2b01 	strb.w	r2, [r3], #1
    82ec:	079d      	lsls	r5, r3, #30
    82ee:	d1f8      	bne.n	82e2 <memset+0x12>
    82f0:	2c03      	cmp	r4, #3
    82f2:	d929      	bls.n	8348 <memset+0x78>
    82f4:	b2cd      	uxtb	r5, r1
    82f6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
    82fa:	2c0f      	cmp	r4, #15
    82fc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
    8300:	d933      	bls.n	836a <memset+0x9a>
    8302:	f1a4 0610 	sub.w	r6, r4, #16
    8306:	0936      	lsrs	r6, r6, #4
    8308:	f103 0720 	add.w	r7, r3, #32
    830c:	eb07 1706 	add.w	r7, r7, r6, lsl #4
    8310:	f103 0210 	add.w	r2, r3, #16
    8314:	e942 5504 	strd	r5, r5, [r2, #-16]
    8318:	e942 5502 	strd	r5, r5, [r2, #-8]
    831c:	3210      	adds	r2, #16
    831e:	42ba      	cmp	r2, r7
    8320:	d1f8      	bne.n	8314 <memset+0x44>
    8322:	1c72      	adds	r2, r6, #1
    8324:	f014 0f0c 	tst.w	r4, #12
    8328:	eb03 1202 	add.w	r2, r3, r2, lsl #4
    832c:	f004 060f 	and.w	r6, r4, #15
    8330:	d013      	beq.n	835a <memset+0x8a>
    8332:	1f33      	subs	r3, r6, #4
    8334:	f023 0303 	bic.w	r3, r3, #3
    8338:	3304      	adds	r3, #4
    833a:	4413      	add	r3, r2
    833c:	f842 5b04 	str.w	r5, [r2], #4
    8340:	4293      	cmp	r3, r2
    8342:	d1fb      	bne.n	833c <memset+0x6c>
    8344:	f006 0403 	and.w	r4, r6, #3
    8348:	b12c      	cbz	r4, 8356 <memset+0x86>
    834a:	b2c9      	uxtb	r1, r1
    834c:	441c      	add	r4, r3
    834e:	f803 1b01 	strb.w	r1, [r3], #1
    8352:	429c      	cmp	r4, r3
    8354:	d1fb      	bne.n	834e <memset+0x7e>
    8356:	bcf0      	pop	{r4, r5, r6, r7}
    8358:	4770      	bx	lr
    835a:	4634      	mov	r4, r6
    835c:	4613      	mov	r3, r2
    835e:	2c00      	cmp	r4, #0
    8360:	d1f3      	bne.n	834a <memset+0x7a>
    8362:	e7f8      	b.n	8356 <memset+0x86>
    8364:	4614      	mov	r4, r2
    8366:	4603      	mov	r3, r0
    8368:	e7c2      	b.n	82f0 <memset+0x20>
    836a:	461a      	mov	r2, r3
    836c:	4626      	mov	r6, r4
    836e:	e7e0      	b.n	8332 <memset+0x62>

00008370 <__register_exitproc>:
    8370:	b4f0      	push	{r4, r5, r6, r7}
    8372:	4c18      	ldr	r4, [pc, #96]	; (83d4 <__register_exitproc+0x64>)
    8374:	6825      	ldr	r5, [r4, #0]
    8376:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
    837a:	b314      	cbz	r4, 83c2 <__register_exitproc+0x52>
    837c:	6865      	ldr	r5, [r4, #4]
    837e:	2d1f      	cmp	r5, #31
    8380:	dc24      	bgt.n	83cc <__register_exitproc+0x5c>
    8382:	b938      	cbnz	r0, 8394 <__register_exitproc+0x24>
    8384:	1cab      	adds	r3, r5, #2
    8386:	3501      	adds	r5, #1
    8388:	6065      	str	r5, [r4, #4]
    838a:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
    838e:	2000      	movs	r0, #0
    8390:	bcf0      	pop	{r4, r5, r6, r7}
    8392:	4770      	bx	lr
    8394:	eb04 0685 	add.w	r6, r4, r5, lsl #2
    8398:	2701      	movs	r7, #1
    839a:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
    839e:	fa07 f205 	lsl.w	r2, r7, r5
    83a2:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
    83a6:	2802      	cmp	r0, #2
    83a8:	ea47 0702 	orr.w	r7, r7, r2
    83ac:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
    83b0:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
    83b4:	d1e6      	bne.n	8384 <__register_exitproc+0x14>
    83b6:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
    83ba:	431a      	orrs	r2, r3
    83bc:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
    83c0:	e7e0      	b.n	8384 <__register_exitproc+0x14>
    83c2:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
    83c6:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
    83ca:	e7d7      	b.n	837c <__register_exitproc+0xc>
    83cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    83d0:	e7de      	b.n	8390 <__register_exitproc+0x20>
    83d2:	bf00      	nop
    83d4:	00008484 	.word	0x00008484

000083d8 <__call_exitprocs>:
    83d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    83dc:	4b24      	ldr	r3, [pc, #144]	; (8470 <__call_exitprocs+0x98>)
    83de:	b083      	sub	sp, #12
    83e0:	f8d3 b000 	ldr.w	fp, [r3]
    83e4:	9001      	str	r0, [sp, #4]
    83e6:	468a      	mov	sl, r1
    83e8:	f04f 0800 	mov.w	r8, #0
    83ec:	f8db 6148 	ldr.w	r6, [fp, #328]	; 0x148
    83f0:	b196      	cbz	r6, 8418 <__call_exitprocs+0x40>
    83f2:	6874      	ldr	r4, [r6, #4]
    83f4:	1e65      	subs	r5, r4, #1
    83f6:	d40f      	bmi.n	8418 <__call_exitprocs+0x40>
    83f8:	3401      	adds	r4, #1
    83fa:	eb06 0484 	add.w	r4, r6, r4, lsl #2
    83fe:	2701      	movs	r7, #1
    8400:	f1ba 0f00 	cmp.w	sl, #0
    8404:	d00b      	beq.n	841e <__call_exitprocs+0x46>
    8406:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
    840a:	4553      	cmp	r3, sl
    840c:	d007      	beq.n	841e <__call_exitprocs+0x46>
    840e:	3d01      	subs	r5, #1
    8410:	1c6b      	adds	r3, r5, #1
    8412:	f1a4 0404 	sub.w	r4, r4, #4
    8416:	d1f3      	bne.n	8400 <__call_exitprocs+0x28>
    8418:	b003      	add	sp, #12
    841a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    841e:	6873      	ldr	r3, [r6, #4]
    8420:	6822      	ldr	r2, [r4, #0]
    8422:	3b01      	subs	r3, #1
    8424:	42ab      	cmp	r3, r5
    8426:	bf0c      	ite	eq
    8428:	6075      	streq	r5, [r6, #4]
    842a:	f8c4 8000 	strne.w	r8, [r4]
    842e:	2a00      	cmp	r2, #0
    8430:	d0ed      	beq.n	840e <__call_exitprocs+0x36>
    8432:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
    8436:	f8d6 9004 	ldr.w	r9, [r6, #4]
    843a:	fa07 fc05 	lsl.w	ip, r7, r5
    843e:	ea1c 0f01 	tst.w	ip, r1
    8442:	d108      	bne.n	8456 <__call_exitprocs+0x7e>
    8444:	4790      	blx	r2
    8446:	6872      	ldr	r2, [r6, #4]
    8448:	454a      	cmp	r2, r9
    844a:	d1cf      	bne.n	83ec <__call_exitprocs+0x14>
    844c:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
    8450:	42b3      	cmp	r3, r6
    8452:	d0dc      	beq.n	840e <__call_exitprocs+0x36>
    8454:	e7ca      	b.n	83ec <__call_exitprocs+0x14>
    8456:	f8d6 318c 	ldr.w	r3, [r6, #396]	; 0x18c
    845a:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
    845e:	ea1c 0f03 	tst.w	ip, r3
    8462:	d102      	bne.n	846a <__call_exitprocs+0x92>
    8464:	9801      	ldr	r0, [sp, #4]
    8466:	4790      	blx	r2
    8468:	e7ed      	b.n	8446 <__call_exitprocs+0x6e>
    846a:	4608      	mov	r0, r1
    846c:	4790      	blx	r2
    846e:	e7ea      	b.n	8446 <__call_exitprocs+0x6e>
    8470:	00008484 	.word	0x00008484

00008474 <_exit>:
    8474:	e7fe      	b.n	8474 <_exit>
    8476:	bf00      	nop

Disassembly of section .fini:

00008478 <_fini>:
    8478:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    847a:	bf00      	nop
    847c:	bcf8      	pop	{r3, r4, r5, r6, r7}
    847e:	bc08      	pop	{r3}
    8480:	469e      	mov	lr, r3
    8482:	4770      	bx	lr
