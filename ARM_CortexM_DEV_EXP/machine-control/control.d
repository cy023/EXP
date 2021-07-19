
control.elf:     file format elf32-littlearm


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
    8012:	f000 b8fd 	b.w	8210 <atexit>
    8016:	4770      	bx	lr
    8018:	00000000 	.word	0x00000000
    801c:	0000823d 	.word	0x0000823d

00008020 <deregister_tm_clones>:
    8020:	4803      	ldr	r0, [pc, #12]	; (8030 <deregister_tm_clones+0x10>)
    8022:	4b04      	ldr	r3, [pc, #16]	; (8034 <deregister_tm_clones+0x14>)
    8024:	4283      	cmp	r3, r0
    8026:	d002      	beq.n	802e <deregister_tm_clones+0xe>
    8028:	4b03      	ldr	r3, [pc, #12]	; (8038 <deregister_tm_clones+0x18>)
    802a:	b103      	cbz	r3, 802e <deregister_tm_clones+0xe>
    802c:	4718      	bx	r3
    802e:	4770      	bx	lr
    8030:	000188c0 	.word	0x000188c0
    8034:	000188c0 	.word	0x000188c0
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
    8054:	000188c0 	.word	0x000188c0
    8058:	000188c0 	.word	0x000188c0
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
    807c:	000188c0 	.word	0x000188c0
    8080:	00000000 	.word	0x00000000
    8084:	00008478 	.word	0x00008478

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
    80a0:	000188c4 	.word	0x000188c4
    80a4:	00008478 	.word	0x00008478

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
    80ca:	f000 f8f5 	bl	82b8 <memset>
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
    80e8:	f000 f892 	bl	8210 <atexit>
    80ec:	f000 f8c0 	bl	8270 <__libc_init_array>
    80f0:	0020      	movs	r0, r4
    80f2:	0029      	movs	r1, r5
    80f4:	f000 f881 	bl	81fa <main>
    80f8:	f000 f890 	bl	821c <exit>
    80fc:	00080000 	.word	0x00080000
	...
    810c:	000188c0 	.word	0x000188c0
    8110:	000188dc 	.word	0x000188dc
    8114:	0000823d 	.word	0x0000823d

00008118 <gt>:
    8118:	b480      	push	{r7}
    811a:	b083      	sub	sp, #12
    811c:	af00      	add	r7, sp, #0
    811e:	6078      	str	r0, [r7, #4]
    8120:	6039      	str	r1, [r7, #0]
    8122:	687a      	ldr	r2, [r7, #4]
    8124:	683b      	ldr	r3, [r7, #0]
    8126:	429a      	cmp	r2, r3
    8128:	bfcc      	ite	gt
    812a:	2301      	movgt	r3, #1
    812c:	2300      	movle	r3, #0
    812e:	b2db      	uxtb	r3, r3
    8130:	4618      	mov	r0, r3
    8132:	370c      	adds	r7, #12
    8134:	46bd      	mov	sp, r7
    8136:	bc80      	pop	{r7}
    8138:	4770      	bx	lr

0000813a <zero>:
    813a:	b480      	push	{r7}
    813c:	b083      	sub	sp, #12
    813e:	af00      	add	r7, sp, #0
    8140:	6078      	str	r0, [r7, #4]
    8142:	687b      	ldr	r3, [r7, #4]
    8144:	2b00      	cmp	r3, #0
    8146:	bf0c      	ite	eq
    8148:	2301      	moveq	r3, #1
    814a:	2300      	movne	r3, #0
    814c:	b2db      	uxtb	r3, r3
    814e:	4618      	mov	r0, r3
    8150:	370c      	adds	r7, #12
    8152:	46bd      	mov	sp, r7
    8154:	bc80      	pop	{r7}
    8156:	4770      	bx	lr

00008158 <absdiff>:
    8158:	b480      	push	{r7}
    815a:	b085      	sub	sp, #20
    815c:	af00      	add	r7, sp, #0
    815e:	6078      	str	r0, [r7, #4]
    8160:	6039      	str	r1, [r7, #0]
    8162:	687a      	ldr	r2, [r7, #4]
    8164:	683b      	ldr	r3, [r7, #0]
    8166:	429a      	cmp	r2, r3
    8168:	dd04      	ble.n	8174 <absdiff+0x1c>
    816a:	687a      	ldr	r2, [r7, #4]
    816c:	683b      	ldr	r3, [r7, #0]
    816e:	1ad3      	subs	r3, r2, r3
    8170:	60fb      	str	r3, [r7, #12]
    8172:	e003      	b.n	817c <absdiff+0x24>
    8174:	683a      	ldr	r2, [r7, #0]
    8176:	687b      	ldr	r3, [r7, #4]
    8178:	1ad3      	subs	r3, r2, r3
    817a:	60fb      	str	r3, [r7, #12]
    817c:	68fb      	ldr	r3, [r7, #12]
    817e:	4618      	mov	r0, r3
    8180:	3714      	adds	r7, #20
    8182:	46bd      	mov	sp, r7
    8184:	bc80      	pop	{r7}
    8186:	4770      	bx	lr

00008188 <absdiff_j>:
    8188:	b480      	push	{r7}
    818a:	b085      	sub	sp, #20
    818c:	af00      	add	r7, sp, #0
    818e:	6078      	str	r0, [r7, #4]
    8190:	6039      	str	r1, [r7, #0]
    8192:	687a      	ldr	r2, [r7, #4]
    8194:	683b      	ldr	r3, [r7, #0]
    8196:	429a      	cmp	r2, r3
    8198:	bfd4      	ite	le
    819a:	2301      	movle	r3, #1
    819c:	2300      	movgt	r3, #0
    819e:	b2db      	uxtb	r3, r3
    81a0:	60bb      	str	r3, [r7, #8]
    81a2:	68bb      	ldr	r3, [r7, #8]
    81a4:	2b00      	cmp	r3, #0
    81a6:	d104      	bne.n	81b2 <absdiff_j+0x2a>
    81a8:	687a      	ldr	r2, [r7, #4]
    81aa:	683b      	ldr	r3, [r7, #0]
    81ac:	1ad3      	subs	r3, r2, r3
    81ae:	60fb      	str	r3, [r7, #12]
    81b0:	e004      	b.n	81bc <absdiff_j+0x34>
    81b2:	bf00      	nop
    81b4:	683a      	ldr	r2, [r7, #0]
    81b6:	687b      	ldr	r3, [r7, #4]
    81b8:	1ad3      	subs	r3, r2, r3
    81ba:	60fb      	str	r3, [r7, #12]
    81bc:	68fb      	ldr	r3, [r7, #12]
    81be:	4618      	mov	r0, r3
    81c0:	3714      	adds	r7, #20
    81c2:	46bd      	mov	sp, r7
    81c4:	bc80      	pop	{r7}
    81c6:	4770      	bx	lr

000081c8 <absdiff_cm>:
    81c8:	b480      	push	{r7}
    81ca:	b085      	sub	sp, #20
    81cc:	af00      	add	r7, sp, #0
    81ce:	6078      	str	r0, [r7, #4]
    81d0:	6039      	str	r1, [r7, #0]
    81d2:	687a      	ldr	r2, [r7, #4]
    81d4:	683b      	ldr	r3, [r7, #0]
    81d6:	1ad3      	subs	r3, r2, r3
    81d8:	60fb      	str	r3, [r7, #12]
    81da:	683a      	ldr	r2, [r7, #0]
    81dc:	687b      	ldr	r3, [r7, #4]
    81de:	1ad3      	subs	r3, r2, r3
    81e0:	60bb      	str	r3, [r7, #8]
    81e2:	687a      	ldr	r2, [r7, #4]
    81e4:	683b      	ldr	r3, [r7, #0]
    81e6:	429a      	cmp	r2, r3
    81e8:	dc01      	bgt.n	81ee <absdiff_cm+0x26>
    81ea:	68bb      	ldr	r3, [r7, #8]
    81ec:	60fb      	str	r3, [r7, #12]
    81ee:	68fb      	ldr	r3, [r7, #12]
    81f0:	4618      	mov	r0, r3
    81f2:	3714      	adds	r7, #20
    81f4:	46bd      	mov	sp, r7
    81f6:	bc80      	pop	{r7}
    81f8:	4770      	bx	lr

000081fa <main>:
    81fa:	b480      	push	{r7}
    81fc:	b083      	sub	sp, #12
    81fe:	af00      	add	r7, sp, #0
    8200:	6078      	str	r0, [r7, #4]
    8202:	6039      	str	r1, [r7, #0]
    8204:	2300      	movs	r3, #0
    8206:	4618      	mov	r0, r3
    8208:	370c      	adds	r7, #12
    820a:	46bd      	mov	sp, r7
    820c:	bc80      	pop	{r7}
    820e:	4770      	bx	lr

00008210 <atexit>:
    8210:	2300      	movs	r3, #0
    8212:	4601      	mov	r1, r0
    8214:	461a      	mov	r2, r3
    8216:	4618      	mov	r0, r3
    8218:	f000 b89e 	b.w	8358 <__register_exitproc>

0000821c <exit>:
    821c:	b508      	push	{r3, lr}
    821e:	2100      	movs	r1, #0
    8220:	4604      	mov	r4, r0
    8222:	f000 f8cd 	bl	83c0 <__call_exitprocs>
    8226:	4b04      	ldr	r3, [pc, #16]	; (8238 <exit+0x1c>)
    8228:	6818      	ldr	r0, [r3, #0]
    822a:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    822c:	b103      	cbz	r3, 8230 <exit+0x14>
    822e:	4798      	blx	r3
    8230:	4620      	mov	r0, r4
    8232:	f000 f913 	bl	845c <_exit>
    8236:	bf00      	nop
    8238:	0000846c 	.word	0x0000846c

0000823c <__libc_fini_array>:
    823c:	b538      	push	{r3, r4, r5, lr}
    823e:	4c0a      	ldr	r4, [pc, #40]	; (8268 <__libc_fini_array+0x2c>)
    8240:	4d0a      	ldr	r5, [pc, #40]	; (826c <__libc_fini_array+0x30>)
    8242:	1b64      	subs	r4, r4, r5
    8244:	10a4      	asrs	r4, r4, #2
    8246:	d00a      	beq.n	825e <__libc_fini_array+0x22>
    8248:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
    824c:	3b01      	subs	r3, #1
    824e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
    8252:	3c01      	subs	r4, #1
    8254:	f855 3904 	ldr.w	r3, [r5], #-4
    8258:	4798      	blx	r3
    825a:	2c00      	cmp	r4, #0
    825c:	d1f9      	bne.n	8252 <__libc_fini_array+0x16>
    825e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    8262:	f000 b8fd 	b.w	8460 <_fini>
    8266:	bf00      	nop
    8268:	00018488 	.word	0x00018488
    826c:	00018484 	.word	0x00018484

00008270 <__libc_init_array>:
    8270:	b570      	push	{r4, r5, r6, lr}
    8272:	4e0d      	ldr	r6, [pc, #52]	; (82a8 <__libc_init_array+0x38>)
    8274:	4d0d      	ldr	r5, [pc, #52]	; (82ac <__libc_init_array+0x3c>)
    8276:	1b76      	subs	r6, r6, r5
    8278:	10b6      	asrs	r6, r6, #2
    827a:	d006      	beq.n	828a <__libc_init_array+0x1a>
    827c:	2400      	movs	r4, #0
    827e:	3401      	adds	r4, #1
    8280:	f855 3b04 	ldr.w	r3, [r5], #4
    8284:	4798      	blx	r3
    8286:	42a6      	cmp	r6, r4
    8288:	d1f9      	bne.n	827e <__libc_init_array+0xe>
    828a:	4e09      	ldr	r6, [pc, #36]	; (82b0 <__libc_init_array+0x40>)
    828c:	4d09      	ldr	r5, [pc, #36]	; (82b4 <__libc_init_array+0x44>)
    828e:	1b76      	subs	r6, r6, r5
    8290:	f7ff feb6 	bl	8000 <_init>
    8294:	10b6      	asrs	r6, r6, #2
    8296:	d006      	beq.n	82a6 <__libc_init_array+0x36>
    8298:	2400      	movs	r4, #0
    829a:	3401      	adds	r4, #1
    829c:	f855 3b04 	ldr.w	r3, [r5], #4
    82a0:	4798      	blx	r3
    82a2:	42a6      	cmp	r6, r4
    82a4:	d1f9      	bne.n	829a <__libc_init_array+0x2a>
    82a6:	bd70      	pop	{r4, r5, r6, pc}
    82a8:	0001847c 	.word	0x0001847c
    82ac:	0001847c 	.word	0x0001847c
    82b0:	00018484 	.word	0x00018484
    82b4:	0001847c 	.word	0x0001847c

000082b8 <memset>:
    82b8:	b4f0      	push	{r4, r5, r6, r7}
    82ba:	0786      	lsls	r6, r0, #30
    82bc:	d046      	beq.n	834c <memset+0x94>
    82be:	1e54      	subs	r4, r2, #1
    82c0:	2a00      	cmp	r2, #0
    82c2:	d03c      	beq.n	833e <memset+0x86>
    82c4:	b2ca      	uxtb	r2, r1
    82c6:	4603      	mov	r3, r0
    82c8:	e002      	b.n	82d0 <memset+0x18>
    82ca:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
    82ce:	d336      	bcc.n	833e <memset+0x86>
    82d0:	f803 2b01 	strb.w	r2, [r3], #1
    82d4:	079d      	lsls	r5, r3, #30
    82d6:	d1f8      	bne.n	82ca <memset+0x12>
    82d8:	2c03      	cmp	r4, #3
    82da:	d929      	bls.n	8330 <memset+0x78>
    82dc:	b2cd      	uxtb	r5, r1
    82de:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
    82e2:	2c0f      	cmp	r4, #15
    82e4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
    82e8:	d933      	bls.n	8352 <memset+0x9a>
    82ea:	f1a4 0610 	sub.w	r6, r4, #16
    82ee:	0936      	lsrs	r6, r6, #4
    82f0:	f103 0720 	add.w	r7, r3, #32
    82f4:	eb07 1706 	add.w	r7, r7, r6, lsl #4
    82f8:	f103 0210 	add.w	r2, r3, #16
    82fc:	e942 5504 	strd	r5, r5, [r2, #-16]
    8300:	e942 5502 	strd	r5, r5, [r2, #-8]
    8304:	3210      	adds	r2, #16
    8306:	42ba      	cmp	r2, r7
    8308:	d1f8      	bne.n	82fc <memset+0x44>
    830a:	1c72      	adds	r2, r6, #1
    830c:	f014 0f0c 	tst.w	r4, #12
    8310:	eb03 1202 	add.w	r2, r3, r2, lsl #4
    8314:	f004 060f 	and.w	r6, r4, #15
    8318:	d013      	beq.n	8342 <memset+0x8a>
    831a:	1f33      	subs	r3, r6, #4
    831c:	f023 0303 	bic.w	r3, r3, #3
    8320:	3304      	adds	r3, #4
    8322:	4413      	add	r3, r2
    8324:	f842 5b04 	str.w	r5, [r2], #4
    8328:	4293      	cmp	r3, r2
    832a:	d1fb      	bne.n	8324 <memset+0x6c>
    832c:	f006 0403 	and.w	r4, r6, #3
    8330:	b12c      	cbz	r4, 833e <memset+0x86>
    8332:	b2c9      	uxtb	r1, r1
    8334:	441c      	add	r4, r3
    8336:	f803 1b01 	strb.w	r1, [r3], #1
    833a:	429c      	cmp	r4, r3
    833c:	d1fb      	bne.n	8336 <memset+0x7e>
    833e:	bcf0      	pop	{r4, r5, r6, r7}
    8340:	4770      	bx	lr
    8342:	4634      	mov	r4, r6
    8344:	4613      	mov	r3, r2
    8346:	2c00      	cmp	r4, #0
    8348:	d1f3      	bne.n	8332 <memset+0x7a>
    834a:	e7f8      	b.n	833e <memset+0x86>
    834c:	4614      	mov	r4, r2
    834e:	4603      	mov	r3, r0
    8350:	e7c2      	b.n	82d8 <memset+0x20>
    8352:	461a      	mov	r2, r3
    8354:	4626      	mov	r6, r4
    8356:	e7e0      	b.n	831a <memset+0x62>

00008358 <__register_exitproc>:
    8358:	b4f0      	push	{r4, r5, r6, r7}
    835a:	4c18      	ldr	r4, [pc, #96]	; (83bc <__register_exitproc+0x64>)
    835c:	6825      	ldr	r5, [r4, #0]
    835e:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
    8362:	b314      	cbz	r4, 83aa <__register_exitproc+0x52>
    8364:	6865      	ldr	r5, [r4, #4]
    8366:	2d1f      	cmp	r5, #31
    8368:	dc24      	bgt.n	83b4 <__register_exitproc+0x5c>
    836a:	b938      	cbnz	r0, 837c <__register_exitproc+0x24>
    836c:	1cab      	adds	r3, r5, #2
    836e:	3501      	adds	r5, #1
    8370:	6065      	str	r5, [r4, #4]
    8372:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
    8376:	2000      	movs	r0, #0
    8378:	bcf0      	pop	{r4, r5, r6, r7}
    837a:	4770      	bx	lr
    837c:	eb04 0685 	add.w	r6, r4, r5, lsl #2
    8380:	2701      	movs	r7, #1
    8382:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
    8386:	fa07 f205 	lsl.w	r2, r7, r5
    838a:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
    838e:	2802      	cmp	r0, #2
    8390:	ea47 0702 	orr.w	r7, r7, r2
    8394:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
    8398:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
    839c:	d1e6      	bne.n	836c <__register_exitproc+0x14>
    839e:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
    83a2:	431a      	orrs	r2, r3
    83a4:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
    83a8:	e7e0      	b.n	836c <__register_exitproc+0x14>
    83aa:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
    83ae:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
    83b2:	e7d7      	b.n	8364 <__register_exitproc+0xc>
    83b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
    83b8:	e7de      	b.n	8378 <__register_exitproc+0x20>
    83ba:	bf00      	nop
    83bc:	0000846c 	.word	0x0000846c

000083c0 <__call_exitprocs>:
    83c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    83c4:	4b24      	ldr	r3, [pc, #144]	; (8458 <__call_exitprocs+0x98>)
    83c6:	b083      	sub	sp, #12
    83c8:	f8d3 b000 	ldr.w	fp, [r3]
    83cc:	9001      	str	r0, [sp, #4]
    83ce:	468a      	mov	sl, r1
    83d0:	f04f 0800 	mov.w	r8, #0
    83d4:	f8db 6148 	ldr.w	r6, [fp, #328]	; 0x148
    83d8:	b196      	cbz	r6, 8400 <__call_exitprocs+0x40>
    83da:	6874      	ldr	r4, [r6, #4]
    83dc:	1e65      	subs	r5, r4, #1
    83de:	d40f      	bmi.n	8400 <__call_exitprocs+0x40>
    83e0:	3401      	adds	r4, #1
    83e2:	eb06 0484 	add.w	r4, r6, r4, lsl #2
    83e6:	2701      	movs	r7, #1
    83e8:	f1ba 0f00 	cmp.w	sl, #0
    83ec:	d00b      	beq.n	8406 <__call_exitprocs+0x46>
    83ee:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
    83f2:	4553      	cmp	r3, sl
    83f4:	d007      	beq.n	8406 <__call_exitprocs+0x46>
    83f6:	3d01      	subs	r5, #1
    83f8:	1c6b      	adds	r3, r5, #1
    83fa:	f1a4 0404 	sub.w	r4, r4, #4
    83fe:	d1f3      	bne.n	83e8 <__call_exitprocs+0x28>
    8400:	b003      	add	sp, #12
    8402:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8406:	6873      	ldr	r3, [r6, #4]
    8408:	6822      	ldr	r2, [r4, #0]
    840a:	3b01      	subs	r3, #1
    840c:	42ab      	cmp	r3, r5
    840e:	bf0c      	ite	eq
    8410:	6075      	streq	r5, [r6, #4]
    8412:	f8c4 8000 	strne.w	r8, [r4]
    8416:	2a00      	cmp	r2, #0
    8418:	d0ed      	beq.n	83f6 <__call_exitprocs+0x36>
    841a:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
    841e:	f8d6 9004 	ldr.w	r9, [r6, #4]
    8422:	fa07 fc05 	lsl.w	ip, r7, r5
    8426:	ea1c 0f01 	tst.w	ip, r1
    842a:	d108      	bne.n	843e <__call_exitprocs+0x7e>
    842c:	4790      	blx	r2
    842e:	6872      	ldr	r2, [r6, #4]
    8430:	454a      	cmp	r2, r9
    8432:	d1cf      	bne.n	83d4 <__call_exitprocs+0x14>
    8434:	f8db 3148 	ldr.w	r3, [fp, #328]	; 0x148
    8438:	42b3      	cmp	r3, r6
    843a:	d0dc      	beq.n	83f6 <__call_exitprocs+0x36>
    843c:	e7ca      	b.n	83d4 <__call_exitprocs+0x14>
    843e:	f8d6 318c 	ldr.w	r3, [r6, #396]	; 0x18c
    8442:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
    8446:	ea1c 0f03 	tst.w	ip, r3
    844a:	d102      	bne.n	8452 <__call_exitprocs+0x92>
    844c:	9801      	ldr	r0, [sp, #4]
    844e:	4790      	blx	r2
    8450:	e7ed      	b.n	842e <__call_exitprocs+0x6e>
    8452:	4608      	mov	r0, r1
    8454:	4790      	blx	r2
    8456:	e7ea      	b.n	842e <__call_exitprocs+0x6e>
    8458:	0000846c 	.word	0x0000846c

0000845c <_exit>:
    845c:	e7fe      	b.n	845c <_exit>
    845e:	bf00      	nop

Disassembly of section .fini:

00008460 <_fini>:
    8460:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8462:	bf00      	nop
    8464:	bcf8      	pop	{r3, r4, r5, r6, r7}
    8466:	bc08      	pop	{r3}
    8468:	469e      	mov	lr, r3
    846a:	4770      	bx	lr
