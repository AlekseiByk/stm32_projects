
build/clock_control.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000b1c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000018  08000bdc  08000bdc  00010bdc  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000bf4  08000bf4  00010bf4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000bfc  08000bfc  00010bfc  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000c00  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000040  20000434  08001034  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000474  08001034  00020474  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000a6c  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000353  00000000  00000000  00020ec8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000558  00000000  00000000  0002121b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000128  00000000  00000000  00021773  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f8  00000000  00000000  0002189b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000005b0  00000000  00000000  00021993  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000005b7  00000000  00000000  00021f43  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000bf  00000000  00000000  000224fa  2**0  CONTENTS, READONLY
 17 .debug_frame      00000554  00000000  00000000  000225bc  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__divsi3>:
 80000c0:	4603      	mov	r3, r0
 80000c2:	430b      	orrs	r3, r1
 80000c4:	d47f      	bmi.n	80001c6 <__divsi3+0x106>
 80000c6:	2200      	movs	r2, #0
 80000c8:	0843      	lsrs	r3, r0, #1
 80000ca:	428b      	cmp	r3, r1
 80000cc:	d374      	bcc.n	80001b8 <__divsi3+0xf8>
 80000ce:	0903      	lsrs	r3, r0, #4
 80000d0:	428b      	cmp	r3, r1
 80000d2:	d35f      	bcc.n	8000194 <__divsi3+0xd4>
 80000d4:	0a03      	lsrs	r3, r0, #8
 80000d6:	428b      	cmp	r3, r1
 80000d8:	d344      	bcc.n	8000164 <__divsi3+0xa4>
 80000da:	0b03      	lsrs	r3, r0, #12
 80000dc:	428b      	cmp	r3, r1
 80000de:	d328      	bcc.n	8000132 <__divsi3+0x72>
 80000e0:	0c03      	lsrs	r3, r0, #16
 80000e2:	428b      	cmp	r3, r1
 80000e4:	d30d      	bcc.n	8000102 <__divsi3+0x42>
 80000e6:	22ff      	movs	r2, #255	; 0xff
 80000e8:	0209      	lsls	r1, r1, #8
 80000ea:	ba12      	rev	r2, r2
 80000ec:	0c03      	lsrs	r3, r0, #16
 80000ee:	428b      	cmp	r3, r1
 80000f0:	d302      	bcc.n	80000f8 <__divsi3+0x38>
 80000f2:	1212      	asrs	r2, r2, #8
 80000f4:	0209      	lsls	r1, r1, #8
 80000f6:	d065      	beq.n	80001c4 <__divsi3+0x104>
 80000f8:	0b03      	lsrs	r3, r0, #12
 80000fa:	428b      	cmp	r3, r1
 80000fc:	d319      	bcc.n	8000132 <__divsi3+0x72>
 80000fe:	e000      	b.n	8000102 <__divsi3+0x42>
 8000100:	0a09      	lsrs	r1, r1, #8
 8000102:	0bc3      	lsrs	r3, r0, #15
 8000104:	428b      	cmp	r3, r1
 8000106:	d301      	bcc.n	800010c <__divsi3+0x4c>
 8000108:	03cb      	lsls	r3, r1, #15
 800010a:	1ac0      	subs	r0, r0, r3
 800010c:	4152      	adcs	r2, r2
 800010e:	0b83      	lsrs	r3, r0, #14
 8000110:	428b      	cmp	r3, r1
 8000112:	d301      	bcc.n	8000118 <__divsi3+0x58>
 8000114:	038b      	lsls	r3, r1, #14
 8000116:	1ac0      	subs	r0, r0, r3
 8000118:	4152      	adcs	r2, r2
 800011a:	0b43      	lsrs	r3, r0, #13
 800011c:	428b      	cmp	r3, r1
 800011e:	d301      	bcc.n	8000124 <__divsi3+0x64>
 8000120:	034b      	lsls	r3, r1, #13
 8000122:	1ac0      	subs	r0, r0, r3
 8000124:	4152      	adcs	r2, r2
 8000126:	0b03      	lsrs	r3, r0, #12
 8000128:	428b      	cmp	r3, r1
 800012a:	d301      	bcc.n	8000130 <__divsi3+0x70>
 800012c:	030b      	lsls	r3, r1, #12
 800012e:	1ac0      	subs	r0, r0, r3
 8000130:	4152      	adcs	r2, r2
 8000132:	0ac3      	lsrs	r3, r0, #11
 8000134:	428b      	cmp	r3, r1
 8000136:	d301      	bcc.n	800013c <__divsi3+0x7c>
 8000138:	02cb      	lsls	r3, r1, #11
 800013a:	1ac0      	subs	r0, r0, r3
 800013c:	4152      	adcs	r2, r2
 800013e:	0a83      	lsrs	r3, r0, #10
 8000140:	428b      	cmp	r3, r1
 8000142:	d301      	bcc.n	8000148 <__divsi3+0x88>
 8000144:	028b      	lsls	r3, r1, #10
 8000146:	1ac0      	subs	r0, r0, r3
 8000148:	4152      	adcs	r2, r2
 800014a:	0a43      	lsrs	r3, r0, #9
 800014c:	428b      	cmp	r3, r1
 800014e:	d301      	bcc.n	8000154 <__divsi3+0x94>
 8000150:	024b      	lsls	r3, r1, #9
 8000152:	1ac0      	subs	r0, r0, r3
 8000154:	4152      	adcs	r2, r2
 8000156:	0a03      	lsrs	r3, r0, #8
 8000158:	428b      	cmp	r3, r1
 800015a:	d301      	bcc.n	8000160 <__divsi3+0xa0>
 800015c:	020b      	lsls	r3, r1, #8
 800015e:	1ac0      	subs	r0, r0, r3
 8000160:	4152      	adcs	r2, r2
 8000162:	d2cd      	bcs.n	8000100 <__divsi3+0x40>
 8000164:	09c3      	lsrs	r3, r0, #7
 8000166:	428b      	cmp	r3, r1
 8000168:	d301      	bcc.n	800016e <__divsi3+0xae>
 800016a:	01cb      	lsls	r3, r1, #7
 800016c:	1ac0      	subs	r0, r0, r3
 800016e:	4152      	adcs	r2, r2
 8000170:	0983      	lsrs	r3, r0, #6
 8000172:	428b      	cmp	r3, r1
 8000174:	d301      	bcc.n	800017a <__divsi3+0xba>
 8000176:	018b      	lsls	r3, r1, #6
 8000178:	1ac0      	subs	r0, r0, r3
 800017a:	4152      	adcs	r2, r2
 800017c:	0943      	lsrs	r3, r0, #5
 800017e:	428b      	cmp	r3, r1
 8000180:	d301      	bcc.n	8000186 <__divsi3+0xc6>
 8000182:	014b      	lsls	r3, r1, #5
 8000184:	1ac0      	subs	r0, r0, r3
 8000186:	4152      	adcs	r2, r2
 8000188:	0903      	lsrs	r3, r0, #4
 800018a:	428b      	cmp	r3, r1
 800018c:	d301      	bcc.n	8000192 <__divsi3+0xd2>
 800018e:	010b      	lsls	r3, r1, #4
 8000190:	1ac0      	subs	r0, r0, r3
 8000192:	4152      	adcs	r2, r2
 8000194:	08c3      	lsrs	r3, r0, #3
 8000196:	428b      	cmp	r3, r1
 8000198:	d301      	bcc.n	800019e <__divsi3+0xde>
 800019a:	00cb      	lsls	r3, r1, #3
 800019c:	1ac0      	subs	r0, r0, r3
 800019e:	4152      	adcs	r2, r2
 80001a0:	0883      	lsrs	r3, r0, #2
 80001a2:	428b      	cmp	r3, r1
 80001a4:	d301      	bcc.n	80001aa <__divsi3+0xea>
 80001a6:	008b      	lsls	r3, r1, #2
 80001a8:	1ac0      	subs	r0, r0, r3
 80001aa:	4152      	adcs	r2, r2
 80001ac:	0843      	lsrs	r3, r0, #1
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__divsi3+0xf6>
 80001b2:	004b      	lsls	r3, r1, #1
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	1a41      	subs	r1, r0, r1
 80001ba:	d200      	bcs.n	80001be <__divsi3+0xfe>
 80001bc:	4601      	mov	r1, r0
 80001be:	4152      	adcs	r2, r2
 80001c0:	4610      	mov	r0, r2
 80001c2:	4770      	bx	lr
 80001c4:	e05d      	b.n	8000282 <__divsi3+0x1c2>
 80001c6:	0fca      	lsrs	r2, r1, #31
 80001c8:	d000      	beq.n	80001cc <__divsi3+0x10c>
 80001ca:	4249      	negs	r1, r1
 80001cc:	1003      	asrs	r3, r0, #32
 80001ce:	d300      	bcc.n	80001d2 <__divsi3+0x112>
 80001d0:	4240      	negs	r0, r0
 80001d2:	4053      	eors	r3, r2
 80001d4:	2200      	movs	r2, #0
 80001d6:	469c      	mov	ip, r3
 80001d8:	0903      	lsrs	r3, r0, #4
 80001da:	428b      	cmp	r3, r1
 80001dc:	d32d      	bcc.n	800023a <__divsi3+0x17a>
 80001de:	0a03      	lsrs	r3, r0, #8
 80001e0:	428b      	cmp	r3, r1
 80001e2:	d312      	bcc.n	800020a <__divsi3+0x14a>
 80001e4:	22fc      	movs	r2, #252	; 0xfc
 80001e6:	0189      	lsls	r1, r1, #6
 80001e8:	ba12      	rev	r2, r2
 80001ea:	0a03      	lsrs	r3, r0, #8
 80001ec:	428b      	cmp	r3, r1
 80001ee:	d30c      	bcc.n	800020a <__divsi3+0x14a>
 80001f0:	0189      	lsls	r1, r1, #6
 80001f2:	1192      	asrs	r2, r2, #6
 80001f4:	428b      	cmp	r3, r1
 80001f6:	d308      	bcc.n	800020a <__divsi3+0x14a>
 80001f8:	0189      	lsls	r1, r1, #6
 80001fa:	1192      	asrs	r2, r2, #6
 80001fc:	428b      	cmp	r3, r1
 80001fe:	d304      	bcc.n	800020a <__divsi3+0x14a>
 8000200:	0189      	lsls	r1, r1, #6
 8000202:	d03a      	beq.n	800027a <__divsi3+0x1ba>
 8000204:	1192      	asrs	r2, r2, #6
 8000206:	e000      	b.n	800020a <__divsi3+0x14a>
 8000208:	0989      	lsrs	r1, r1, #6
 800020a:	09c3      	lsrs	r3, r0, #7
 800020c:	428b      	cmp	r3, r1
 800020e:	d301      	bcc.n	8000214 <__divsi3+0x154>
 8000210:	01cb      	lsls	r3, r1, #7
 8000212:	1ac0      	subs	r0, r0, r3
 8000214:	4152      	adcs	r2, r2
 8000216:	0983      	lsrs	r3, r0, #6
 8000218:	428b      	cmp	r3, r1
 800021a:	d301      	bcc.n	8000220 <__divsi3+0x160>
 800021c:	018b      	lsls	r3, r1, #6
 800021e:	1ac0      	subs	r0, r0, r3
 8000220:	4152      	adcs	r2, r2
 8000222:	0943      	lsrs	r3, r0, #5
 8000224:	428b      	cmp	r3, r1
 8000226:	d301      	bcc.n	800022c <__divsi3+0x16c>
 8000228:	014b      	lsls	r3, r1, #5
 800022a:	1ac0      	subs	r0, r0, r3
 800022c:	4152      	adcs	r2, r2
 800022e:	0903      	lsrs	r3, r0, #4
 8000230:	428b      	cmp	r3, r1
 8000232:	d301      	bcc.n	8000238 <__divsi3+0x178>
 8000234:	010b      	lsls	r3, r1, #4
 8000236:	1ac0      	subs	r0, r0, r3
 8000238:	4152      	adcs	r2, r2
 800023a:	08c3      	lsrs	r3, r0, #3
 800023c:	428b      	cmp	r3, r1
 800023e:	d301      	bcc.n	8000244 <__divsi3+0x184>
 8000240:	00cb      	lsls	r3, r1, #3
 8000242:	1ac0      	subs	r0, r0, r3
 8000244:	4152      	adcs	r2, r2
 8000246:	0883      	lsrs	r3, r0, #2
 8000248:	428b      	cmp	r3, r1
 800024a:	d301      	bcc.n	8000250 <__divsi3+0x190>
 800024c:	008b      	lsls	r3, r1, #2
 800024e:	1ac0      	subs	r0, r0, r3
 8000250:	4152      	adcs	r2, r2
 8000252:	d2d9      	bcs.n	8000208 <__divsi3+0x148>
 8000254:	0843      	lsrs	r3, r0, #1
 8000256:	428b      	cmp	r3, r1
 8000258:	d301      	bcc.n	800025e <__divsi3+0x19e>
 800025a:	004b      	lsls	r3, r1, #1
 800025c:	1ac0      	subs	r0, r0, r3
 800025e:	4152      	adcs	r2, r2
 8000260:	1a41      	subs	r1, r0, r1
 8000262:	d200      	bcs.n	8000266 <__divsi3+0x1a6>
 8000264:	4601      	mov	r1, r0
 8000266:	4663      	mov	r3, ip
 8000268:	4152      	adcs	r2, r2
 800026a:	105b      	asrs	r3, r3, #1
 800026c:	4610      	mov	r0, r2
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x1b4>
 8000270:	4240      	negs	r0, r0
 8000272:	2b00      	cmp	r3, #0
 8000274:	d500      	bpl.n	8000278 <__divsi3+0x1b8>
 8000276:	4249      	negs	r1, r1
 8000278:	4770      	bx	lr
 800027a:	4663      	mov	r3, ip
 800027c:	105b      	asrs	r3, r3, #1
 800027e:	d300      	bcc.n	8000282 <__divsi3+0x1c2>
 8000280:	4240      	negs	r0, r0
 8000282:	b501      	push	{r0, lr}
 8000284:	2000      	movs	r0, #0
 8000286:	f000 f805 	bl	8000294 <__aeabi_idiv0>
 800028a:	bd02      	pop	{r1, pc}

0800028c <__aeabi_idivmod>:
 800028c:	2900      	cmp	r1, #0
 800028e:	d0f8      	beq.n	8000282 <__divsi3+0x1c2>
 8000290:	e716      	b.n	80000c0 <__divsi3>
 8000292:	4770      	bx	lr

08000294 <__aeabi_idiv0>:
 8000294:	4770      	bx	lr
 8000296:	46c0      	nop			; (mov r8, r8)

08000298 <deregister_tm_clones>:
 8000298:	4804      	ldr	r0, [pc, #16]	; (80002ac <deregister_tm_clones+0x14>)
 800029a:	4b05      	ldr	r3, [pc, #20]	; (80002b0 <deregister_tm_clones+0x18>)
 800029c:	b510      	push	{r4, lr}
 800029e:	4283      	cmp	r3, r0
 80002a0:	d003      	beq.n	80002aa <deregister_tm_clones+0x12>
 80002a2:	4b04      	ldr	r3, [pc, #16]	; (80002b4 <deregister_tm_clones+0x1c>)
 80002a4:	2b00      	cmp	r3, #0
 80002a6:	d000      	beq.n	80002aa <deregister_tm_clones+0x12>
 80002a8:	4798      	blx	r3
 80002aa:	bd10      	pop	{r4, pc}
 80002ac:	20000434 	.word	0x20000434
 80002b0:	20000434 	.word	0x20000434
 80002b4:	00000000 	.word	0x00000000

080002b8 <register_tm_clones>:
 80002b8:	4806      	ldr	r0, [pc, #24]	; (80002d4 <register_tm_clones+0x1c>)
 80002ba:	4907      	ldr	r1, [pc, #28]	; (80002d8 <register_tm_clones+0x20>)
 80002bc:	1a09      	subs	r1, r1, r0
 80002be:	1089      	asrs	r1, r1, #2
 80002c0:	0fcb      	lsrs	r3, r1, #31
 80002c2:	1859      	adds	r1, r3, r1
 80002c4:	b510      	push	{r4, lr}
 80002c6:	1049      	asrs	r1, r1, #1
 80002c8:	d003      	beq.n	80002d2 <register_tm_clones+0x1a>
 80002ca:	4b04      	ldr	r3, [pc, #16]	; (80002dc <register_tm_clones+0x24>)
 80002cc:	2b00      	cmp	r3, #0
 80002ce:	d000      	beq.n	80002d2 <register_tm_clones+0x1a>
 80002d0:	4798      	blx	r3
 80002d2:	bd10      	pop	{r4, pc}
 80002d4:	20000434 	.word	0x20000434
 80002d8:	20000434 	.word	0x20000434
 80002dc:	00000000 	.word	0x00000000

080002e0 <__do_global_dtors_aux>:
 80002e0:	b510      	push	{r4, lr}
 80002e2:	4c07      	ldr	r4, [pc, #28]	; (8000300 <__do_global_dtors_aux+0x20>)
 80002e4:	7823      	ldrb	r3, [r4, #0]
 80002e6:	2b00      	cmp	r3, #0
 80002e8:	d109      	bne.n	80002fe <__do_global_dtors_aux+0x1e>
 80002ea:	f7ff ffd5 	bl	8000298 <deregister_tm_clones>
 80002ee:	4b05      	ldr	r3, [pc, #20]	; (8000304 <__do_global_dtors_aux+0x24>)
 80002f0:	2b00      	cmp	r3, #0
 80002f2:	d002      	beq.n	80002fa <__do_global_dtors_aux+0x1a>
 80002f4:	4804      	ldr	r0, [pc, #16]	; (8000308 <__do_global_dtors_aux+0x28>)
 80002f6:	e000      	b.n	80002fa <__do_global_dtors_aux+0x1a>
 80002f8:	bf00      	nop
 80002fa:	2301      	movs	r3, #1
 80002fc:	7023      	strb	r3, [r4, #0]
 80002fe:	bd10      	pop	{r4, pc}
 8000300:	20000434 	.word	0x20000434
 8000304:	00000000 	.word	0x00000000
 8000308:	08000bc4 	.word	0x08000bc4

0800030c <frame_dummy>:
 800030c:	4b05      	ldr	r3, [pc, #20]	; (8000324 <frame_dummy+0x18>)
 800030e:	b510      	push	{r4, lr}
 8000310:	2b00      	cmp	r3, #0
 8000312:	d003      	beq.n	800031c <frame_dummy+0x10>
 8000314:	4904      	ldr	r1, [pc, #16]	; (8000328 <frame_dummy+0x1c>)
 8000316:	4805      	ldr	r0, [pc, #20]	; (800032c <frame_dummy+0x20>)
 8000318:	e000      	b.n	800031c <frame_dummy+0x10>
 800031a:	bf00      	nop
 800031c:	f7ff ffcc 	bl	80002b8 <register_tm_clones>
 8000320:	bd10      	pop	{r4, pc}
 8000322:	46c0      	nop			; (mov r8, r8)
 8000324:	00000000 	.word	0x00000000
 8000328:	20000438 	.word	0x20000438
 800032c:	08000bc4 	.word	0x08000bc4

08000330 <Reset_Handler>:
 8000330:	480d      	ldr	r0, [pc, #52]	; (8000368 <LoopForever+0x2>)
 8000332:	4685      	mov	sp, r0
 8000334:	480d      	ldr	r0, [pc, #52]	; (800036c <LoopForever+0x6>)
 8000336:	490e      	ldr	r1, [pc, #56]	; (8000370 <LoopForever+0xa>)
 8000338:	4a0e      	ldr	r2, [pc, #56]	; (8000374 <LoopForever+0xe>)
 800033a:	2300      	movs	r3, #0
 800033c:	e002      	b.n	8000344 <LoopCopyDataInit>

0800033e <CopyDataInit>:
 800033e:	58d4      	ldr	r4, [r2, r3]
 8000340:	50c4      	str	r4, [r0, r3]
 8000342:	3304      	adds	r3, #4

08000344 <LoopCopyDataInit>:
 8000344:	18c4      	adds	r4, r0, r3
 8000346:	428c      	cmp	r4, r1
 8000348:	d3f9      	bcc.n	800033e <CopyDataInit>
 800034a:	4a0b      	ldr	r2, [pc, #44]	; (8000378 <LoopForever+0x12>)
 800034c:	4c0b      	ldr	r4, [pc, #44]	; (800037c <LoopForever+0x16>)
 800034e:	2300      	movs	r3, #0
 8000350:	e001      	b.n	8000356 <LoopFillZerobss>

08000352 <FillZerobss>:
 8000352:	6013      	str	r3, [r2, #0]
 8000354:	3204      	adds	r2, #4

08000356 <LoopFillZerobss>:
 8000356:	42a2      	cmp	r2, r4
 8000358:	d3fb      	bcc.n	8000352 <FillZerobss>
 800035a:	f000 fb2f 	bl	80009bc <SystemInit>
 800035e:	f000 fb83 	bl	8000a68 <__libc_init_array>
 8000362:	f000 fae5 	bl	8000930 <main>

08000366 <LoopForever>:
 8000366:	e7fe      	b.n	8000366 <LoopForever>
 8000368:	20002000 	.word	0x20002000
 800036c:	20000000 	.word	0x20000000
 8000370:	20000434 	.word	0x20000434
 8000374:	08000c00 	.word	0x08000c00
 8000378:	20000434 	.word	0x20000434
 800037c:	20000474 	.word	0x20000474

08000380 <ADC1_COMP_IRQHandler>:
 8000380:	e7fe      	b.n	8000380 <ADC1_COMP_IRQHandler>
	...

08000384 <LL_RCC_HSI_Enable>:
 8000384:	b580      	push	{r7, lr}
 8000386:	af00      	add	r7, sp, #0
 8000388:	4b04      	ldr	r3, [pc, #16]	; (800039c <LL_RCC_HSI_Enable+0x18>)
 800038a:	681a      	ldr	r2, [r3, #0]
 800038c:	4b03      	ldr	r3, [pc, #12]	; (800039c <LL_RCC_HSI_Enable+0x18>)
 800038e:	2101      	movs	r1, #1
 8000390:	430a      	orrs	r2, r1
 8000392:	601a      	str	r2, [r3, #0]
 8000394:	46c0      	nop			; (mov r8, r8)
 8000396:	46bd      	mov	sp, r7
 8000398:	bd80      	pop	{r7, pc}
 800039a:	46c0      	nop			; (mov r8, r8)
 800039c:	40021000 	.word	0x40021000

080003a0 <LL_RCC_HSI_IsReady>:
 80003a0:	b580      	push	{r7, lr}
 80003a2:	af00      	add	r7, sp, #0
 80003a4:	4b05      	ldr	r3, [pc, #20]	; (80003bc <LL_RCC_HSI_IsReady+0x1c>)
 80003a6:	681b      	ldr	r3, [r3, #0]
 80003a8:	2202      	movs	r2, #2
 80003aa:	4013      	ands	r3, r2
 80003ac:	3b02      	subs	r3, #2
 80003ae:	425a      	negs	r2, r3
 80003b0:	4153      	adcs	r3, r2
 80003b2:	b2db      	uxtb	r3, r3
 80003b4:	0018      	movs	r0, r3
 80003b6:	46bd      	mov	sp, r7
 80003b8:	bd80      	pop	{r7, pc}
 80003ba:	46c0      	nop			; (mov r8, r8)
 80003bc:	40021000 	.word	0x40021000

080003c0 <LL_RCC_SetSysClkSource>:
 80003c0:	b580      	push	{r7, lr}
 80003c2:	b082      	sub	sp, #8
 80003c4:	af00      	add	r7, sp, #0
 80003c6:	6078      	str	r0, [r7, #4]
 80003c8:	4b06      	ldr	r3, [pc, #24]	; (80003e4 <LL_RCC_SetSysClkSource+0x24>)
 80003ca:	685b      	ldr	r3, [r3, #4]
 80003cc:	2203      	movs	r2, #3
 80003ce:	4393      	bics	r3, r2
 80003d0:	0019      	movs	r1, r3
 80003d2:	4b04      	ldr	r3, [pc, #16]	; (80003e4 <LL_RCC_SetSysClkSource+0x24>)
 80003d4:	687a      	ldr	r2, [r7, #4]
 80003d6:	430a      	orrs	r2, r1
 80003d8:	605a      	str	r2, [r3, #4]
 80003da:	46c0      	nop			; (mov r8, r8)
 80003dc:	46bd      	mov	sp, r7
 80003de:	b002      	add	sp, #8
 80003e0:	bd80      	pop	{r7, pc}
 80003e2:	46c0      	nop			; (mov r8, r8)
 80003e4:	40021000 	.word	0x40021000

080003e8 <LL_RCC_GetSysClkSource>:
 80003e8:	b580      	push	{r7, lr}
 80003ea:	af00      	add	r7, sp, #0
 80003ec:	4b03      	ldr	r3, [pc, #12]	; (80003fc <LL_RCC_GetSysClkSource+0x14>)
 80003ee:	685b      	ldr	r3, [r3, #4]
 80003f0:	220c      	movs	r2, #12
 80003f2:	4013      	ands	r3, r2
 80003f4:	0018      	movs	r0, r3
 80003f6:	46bd      	mov	sp, r7
 80003f8:	bd80      	pop	{r7, pc}
 80003fa:	46c0      	nop			; (mov r8, r8)
 80003fc:	40021000 	.word	0x40021000

08000400 <LL_RCC_SetAHBPrescaler>:
 8000400:	b580      	push	{r7, lr}
 8000402:	b082      	sub	sp, #8
 8000404:	af00      	add	r7, sp, #0
 8000406:	6078      	str	r0, [r7, #4]
 8000408:	4b06      	ldr	r3, [pc, #24]	; (8000424 <LL_RCC_SetAHBPrescaler+0x24>)
 800040a:	685b      	ldr	r3, [r3, #4]
 800040c:	22f0      	movs	r2, #240	; 0xf0
 800040e:	4393      	bics	r3, r2
 8000410:	0019      	movs	r1, r3
 8000412:	4b04      	ldr	r3, [pc, #16]	; (8000424 <LL_RCC_SetAHBPrescaler+0x24>)
 8000414:	687a      	ldr	r2, [r7, #4]
 8000416:	430a      	orrs	r2, r1
 8000418:	605a      	str	r2, [r3, #4]
 800041a:	46c0      	nop			; (mov r8, r8)
 800041c:	46bd      	mov	sp, r7
 800041e:	b002      	add	sp, #8
 8000420:	bd80      	pop	{r7, pc}
 8000422:	46c0      	nop			; (mov r8, r8)
 8000424:	40021000 	.word	0x40021000

08000428 <LL_RCC_SetAPB1Prescaler>:
 8000428:	b580      	push	{r7, lr}
 800042a:	b082      	sub	sp, #8
 800042c:	af00      	add	r7, sp, #0
 800042e:	6078      	str	r0, [r7, #4]
 8000430:	4b06      	ldr	r3, [pc, #24]	; (800044c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000432:	685b      	ldr	r3, [r3, #4]
 8000434:	4a06      	ldr	r2, [pc, #24]	; (8000450 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000436:	4013      	ands	r3, r2
 8000438:	0019      	movs	r1, r3
 800043a:	4b04      	ldr	r3, [pc, #16]	; (800044c <LL_RCC_SetAPB1Prescaler+0x24>)
 800043c:	687a      	ldr	r2, [r7, #4]
 800043e:	430a      	orrs	r2, r1
 8000440:	605a      	str	r2, [r3, #4]
 8000442:	46c0      	nop			; (mov r8, r8)
 8000444:	46bd      	mov	sp, r7
 8000446:	b002      	add	sp, #8
 8000448:	bd80      	pop	{r7, pc}
 800044a:	46c0      	nop			; (mov r8, r8)
 800044c:	40021000 	.word	0x40021000
 8000450:	fffff8ff 	.word	0xfffff8ff

08000454 <LL_RCC_PLL_Enable>:
 8000454:	b580      	push	{r7, lr}
 8000456:	af00      	add	r7, sp, #0
 8000458:	4b04      	ldr	r3, [pc, #16]	; (800046c <LL_RCC_PLL_Enable+0x18>)
 800045a:	681a      	ldr	r2, [r3, #0]
 800045c:	4b03      	ldr	r3, [pc, #12]	; (800046c <LL_RCC_PLL_Enable+0x18>)
 800045e:	2180      	movs	r1, #128	; 0x80
 8000460:	0449      	lsls	r1, r1, #17
 8000462:	430a      	orrs	r2, r1
 8000464:	601a      	str	r2, [r3, #0]
 8000466:	46c0      	nop			; (mov r8, r8)
 8000468:	46bd      	mov	sp, r7
 800046a:	bd80      	pop	{r7, pc}
 800046c:	40021000 	.word	0x40021000

08000470 <LL_RCC_PLL_IsReady>:
 8000470:	b580      	push	{r7, lr}
 8000472:	af00      	add	r7, sp, #0
 8000474:	4b07      	ldr	r3, [pc, #28]	; (8000494 <LL_RCC_PLL_IsReady+0x24>)
 8000476:	681a      	ldr	r2, [r3, #0]
 8000478:	2380      	movs	r3, #128	; 0x80
 800047a:	049b      	lsls	r3, r3, #18
 800047c:	4013      	ands	r3, r2
 800047e:	22fe      	movs	r2, #254	; 0xfe
 8000480:	0612      	lsls	r2, r2, #24
 8000482:	4694      	mov	ip, r2
 8000484:	4463      	add	r3, ip
 8000486:	425a      	negs	r2, r3
 8000488:	4153      	adcs	r3, r2
 800048a:	b2db      	uxtb	r3, r3
 800048c:	0018      	movs	r0, r3
 800048e:	46bd      	mov	sp, r7
 8000490:	bd80      	pop	{r7, pc}
 8000492:	46c0      	nop			; (mov r8, r8)
 8000494:	40021000 	.word	0x40021000

08000498 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000498:	b580      	push	{r7, lr}
 800049a:	b082      	sub	sp, #8
 800049c:	af00      	add	r7, sp, #0
 800049e:	6078      	str	r0, [r7, #4]
 80004a0:	6039      	str	r1, [r7, #0]
 80004a2:	4b0e      	ldr	r3, [pc, #56]	; (80004dc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004a4:	685b      	ldr	r3, [r3, #4]
 80004a6:	4a0e      	ldr	r2, [pc, #56]	; (80004e0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004a8:	4013      	ands	r3, r2
 80004aa:	0019      	movs	r1, r3
 80004ac:	687a      	ldr	r2, [r7, #4]
 80004ae:	2380      	movs	r3, #128	; 0x80
 80004b0:	025b      	lsls	r3, r3, #9
 80004b2:	401a      	ands	r2, r3
 80004b4:	683b      	ldr	r3, [r7, #0]
 80004b6:	431a      	orrs	r2, r3
 80004b8:	4b08      	ldr	r3, [pc, #32]	; (80004dc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004ba:	430a      	orrs	r2, r1
 80004bc:	605a      	str	r2, [r3, #4]
 80004be:	4b07      	ldr	r3, [pc, #28]	; (80004dc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004c0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004c2:	220f      	movs	r2, #15
 80004c4:	4393      	bics	r3, r2
 80004c6:	0019      	movs	r1, r3
 80004c8:	687b      	ldr	r3, [r7, #4]
 80004ca:	220f      	movs	r2, #15
 80004cc:	401a      	ands	r2, r3
 80004ce:	4b03      	ldr	r3, [pc, #12]	; (80004dc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004d0:	430a      	orrs	r2, r1
 80004d2:	62da      	str	r2, [r3, #44]	; 0x2c
 80004d4:	46c0      	nop			; (mov r8, r8)
 80004d6:	46bd      	mov	sp, r7
 80004d8:	b002      	add	sp, #8
 80004da:	bd80      	pop	{r7, pc}
 80004dc:	40021000 	.word	0x40021000
 80004e0:	ffc2ffff 	.word	0xffc2ffff

080004e4 <LL_FLASH_SetLatency>:
 80004e4:	b580      	push	{r7, lr}
 80004e6:	b082      	sub	sp, #8
 80004e8:	af00      	add	r7, sp, #0
 80004ea:	6078      	str	r0, [r7, #4]
 80004ec:	4b06      	ldr	r3, [pc, #24]	; (8000508 <LL_FLASH_SetLatency+0x24>)
 80004ee:	681b      	ldr	r3, [r3, #0]
 80004f0:	2201      	movs	r2, #1
 80004f2:	4393      	bics	r3, r2
 80004f4:	0019      	movs	r1, r3
 80004f6:	4b04      	ldr	r3, [pc, #16]	; (8000508 <LL_FLASH_SetLatency+0x24>)
 80004f8:	687a      	ldr	r2, [r7, #4]
 80004fa:	430a      	orrs	r2, r1
 80004fc:	601a      	str	r2, [r3, #0]
 80004fe:	46c0      	nop			; (mov r8, r8)
 8000500:	46bd      	mov	sp, r7
 8000502:	b002      	add	sp, #8
 8000504:	bd80      	pop	{r7, pc}
 8000506:	46c0      	nop			; (mov r8, r8)
 8000508:	40022000 	.word	0x40022000

0800050c <LL_AHB1_GRP1_EnableClock>:
 800050c:	b580      	push	{r7, lr}
 800050e:	b084      	sub	sp, #16
 8000510:	af00      	add	r7, sp, #0
 8000512:	6078      	str	r0, [r7, #4]
 8000514:	4b07      	ldr	r3, [pc, #28]	; (8000534 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000516:	6959      	ldr	r1, [r3, #20]
 8000518:	4b06      	ldr	r3, [pc, #24]	; (8000534 <LL_AHB1_GRP1_EnableClock+0x28>)
 800051a:	687a      	ldr	r2, [r7, #4]
 800051c:	430a      	orrs	r2, r1
 800051e:	615a      	str	r2, [r3, #20]
 8000520:	4b04      	ldr	r3, [pc, #16]	; (8000534 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000522:	695b      	ldr	r3, [r3, #20]
 8000524:	687a      	ldr	r2, [r7, #4]
 8000526:	4013      	ands	r3, r2
 8000528:	60fb      	str	r3, [r7, #12]
 800052a:	68fb      	ldr	r3, [r7, #12]
 800052c:	46c0      	nop			; (mov r8, r8)
 800052e:	46bd      	mov	sp, r7
 8000530:	b004      	add	sp, #16
 8000532:	bd80      	pop	{r7, pc}
 8000534:	40021000 	.word	0x40021000

08000538 <LL_GPIO_SetPinMode>:
 8000538:	b580      	push	{r7, lr}
 800053a:	b084      	sub	sp, #16
 800053c:	af00      	add	r7, sp, #0
 800053e:	60f8      	str	r0, [r7, #12]
 8000540:	60b9      	str	r1, [r7, #8]
 8000542:	607a      	str	r2, [r7, #4]
 8000544:	68fb      	ldr	r3, [r7, #12]
 8000546:	6819      	ldr	r1, [r3, #0]
 8000548:	68bb      	ldr	r3, [r7, #8]
 800054a:	68ba      	ldr	r2, [r7, #8]
 800054c:	435a      	muls	r2, r3
 800054e:	0013      	movs	r3, r2
 8000550:	005b      	lsls	r3, r3, #1
 8000552:	189b      	adds	r3, r3, r2
 8000554:	43db      	mvns	r3, r3
 8000556:	400b      	ands	r3, r1
 8000558:	001a      	movs	r2, r3
 800055a:	68bb      	ldr	r3, [r7, #8]
 800055c:	68b9      	ldr	r1, [r7, #8]
 800055e:	434b      	muls	r3, r1
 8000560:	6879      	ldr	r1, [r7, #4]
 8000562:	434b      	muls	r3, r1
 8000564:	431a      	orrs	r2, r3
 8000566:	68fb      	ldr	r3, [r7, #12]
 8000568:	601a      	str	r2, [r3, #0]
 800056a:	46c0      	nop			; (mov r8, r8)
 800056c:	46bd      	mov	sp, r7
 800056e:	b004      	add	sp, #16
 8000570:	bd80      	pop	{r7, pc}

08000572 <LL_GPIO_IsInputPinSet>:
 8000572:	b580      	push	{r7, lr}
 8000574:	b082      	sub	sp, #8
 8000576:	af00      	add	r7, sp, #0
 8000578:	6078      	str	r0, [r7, #4]
 800057a:	6039      	str	r1, [r7, #0]
 800057c:	687b      	ldr	r3, [r7, #4]
 800057e:	691b      	ldr	r3, [r3, #16]
 8000580:	683a      	ldr	r2, [r7, #0]
 8000582:	4013      	ands	r3, r2
 8000584:	683a      	ldr	r2, [r7, #0]
 8000586:	1ad3      	subs	r3, r2, r3
 8000588:	425a      	negs	r2, r3
 800058a:	4153      	adcs	r3, r2
 800058c:	b2db      	uxtb	r3, r3
 800058e:	0018      	movs	r0, r3
 8000590:	46bd      	mov	sp, r7
 8000592:	b002      	add	sp, #8
 8000594:	bd80      	pop	{r7, pc}

08000596 <LL_GPIO_SetOutputPin>:
 8000596:	b580      	push	{r7, lr}
 8000598:	b082      	sub	sp, #8
 800059a:	af00      	add	r7, sp, #0
 800059c:	6078      	str	r0, [r7, #4]
 800059e:	6039      	str	r1, [r7, #0]
 80005a0:	687b      	ldr	r3, [r7, #4]
 80005a2:	683a      	ldr	r2, [r7, #0]
 80005a4:	619a      	str	r2, [r3, #24]
 80005a6:	46c0      	nop			; (mov r8, r8)
 80005a8:	46bd      	mov	sp, r7
 80005aa:	b002      	add	sp, #8
 80005ac:	bd80      	pop	{r7, pc}

080005ae <LL_GPIO_ResetOutputPin>:
 80005ae:	b580      	push	{r7, lr}
 80005b0:	b082      	sub	sp, #8
 80005b2:	af00      	add	r7, sp, #0
 80005b4:	6078      	str	r0, [r7, #4]
 80005b6:	6039      	str	r1, [r7, #0]
 80005b8:	687b      	ldr	r3, [r7, #4]
 80005ba:	683a      	ldr	r2, [r7, #0]
 80005bc:	629a      	str	r2, [r3, #40]	; 0x28
 80005be:	46c0      	nop			; (mov r8, r8)
 80005c0:	46bd      	mov	sp, r7
 80005c2:	b002      	add	sp, #8
 80005c4:	bd80      	pop	{r7, pc}
	...

080005c8 <rcc_config>:
 80005c8:	b580      	push	{r7, lr}
 80005ca:	af00      	add	r7, sp, #0
 80005cc:	2000      	movs	r0, #0
 80005ce:	f7ff ff89 	bl	80004e4 <LL_FLASH_SetLatency>
 80005d2:	f7ff fed7 	bl	8000384 <LL_RCC_HSI_Enable>
 80005d6:	46c0      	nop			; (mov r8, r8)
 80005d8:	f7ff fee2 	bl	80003a0 <LL_RCC_HSI_IsReady>
 80005dc:	0003      	movs	r3, r0
 80005de:	2b01      	cmp	r3, #1
 80005e0:	d1fa      	bne.n	80005d8 <rcc_config+0x10>
 80005e2:	23a0      	movs	r3, #160	; 0xa0
 80005e4:	039b      	lsls	r3, r3, #14
 80005e6:	0019      	movs	r1, r3
 80005e8:	2000      	movs	r0, #0
 80005ea:	f7ff ff55 	bl	8000498 <LL_RCC_PLL_ConfigDomain_SYS>
 80005ee:	f7ff ff31 	bl	8000454 <LL_RCC_PLL_Enable>
 80005f2:	46c0      	nop			; (mov r8, r8)
 80005f4:	f7ff ff3c 	bl	8000470 <LL_RCC_PLL_IsReady>
 80005f8:	0003      	movs	r3, r0
 80005fa:	2b01      	cmp	r3, #1
 80005fc:	d1fa      	bne.n	80005f4 <rcc_config+0x2c>
 80005fe:	2000      	movs	r0, #0
 8000600:	f7ff fefe 	bl	8000400 <LL_RCC_SetAHBPrescaler>
 8000604:	2002      	movs	r0, #2
 8000606:	f7ff fedb 	bl	80003c0 <LL_RCC_SetSysClkSource>
 800060a:	46c0      	nop			; (mov r8, r8)
 800060c:	f7ff feec 	bl	80003e8 <LL_RCC_GetSysClkSource>
 8000610:	0003      	movs	r3, r0
 8000612:	2b08      	cmp	r3, #8
 8000614:	d1fa      	bne.n	800060c <rcc_config+0x44>
 8000616:	2000      	movs	r0, #0
 8000618:	f7ff ff06 	bl	8000428 <LL_RCC_SetAPB1Prescaler>
 800061c:	4b02      	ldr	r3, [pc, #8]	; (8000628 <rcc_config+0x60>)
 800061e:	4a03      	ldr	r2, [pc, #12]	; (800062c <rcc_config+0x64>)
 8000620:	601a      	str	r2, [r3, #0]
 8000622:	46c0      	nop			; (mov r8, r8)
 8000624:	46bd      	mov	sp, r7
 8000626:	bd80      	pop	{r7, pc}
 8000628:	20000000 	.word	0x20000000
 800062c:	02dc6c00 	.word	0x02dc6c00

08000630 <gpio_config>:
 8000630:	b580      	push	{r7, lr}
 8000632:	af00      	add	r7, sp, #0
 8000634:	2380      	movs	r3, #128	; 0x80
 8000636:	02db      	lsls	r3, r3, #11
 8000638:	0018      	movs	r0, r3
 800063a:	f7ff ff67 	bl	800050c <LL_AHB1_GRP1_EnableClock>
 800063e:	2380      	movs	r3, #128	; 0x80
 8000640:	029b      	lsls	r3, r3, #10
 8000642:	0018      	movs	r0, r3
 8000644:	f7ff ff62 	bl	800050c <LL_AHB1_GRP1_EnableClock>
 8000648:	2390      	movs	r3, #144	; 0x90
 800064a:	05db      	lsls	r3, r3, #23
 800064c:	2200      	movs	r2, #0
 800064e:	2101      	movs	r1, #1
 8000650:	0018      	movs	r0, r3
 8000652:	f7ff ff71 	bl	8000538 <LL_GPIO_SetPinMode>
 8000656:	4b27      	ldr	r3, [pc, #156]	; (80006f4 <gpio_config+0xc4>)
 8000658:	2201      	movs	r2, #1
 800065a:	2101      	movs	r1, #1
 800065c:	0018      	movs	r0, r3
 800065e:	f7ff ff6b 	bl	8000538 <LL_GPIO_SetPinMode>
 8000662:	4b24      	ldr	r3, [pc, #144]	; (80006f4 <gpio_config+0xc4>)
 8000664:	2201      	movs	r2, #1
 8000666:	2102      	movs	r1, #2
 8000668:	0018      	movs	r0, r3
 800066a:	f7ff ff65 	bl	8000538 <LL_GPIO_SetPinMode>
 800066e:	4b21      	ldr	r3, [pc, #132]	; (80006f4 <gpio_config+0xc4>)
 8000670:	2201      	movs	r2, #1
 8000672:	2104      	movs	r1, #4
 8000674:	0018      	movs	r0, r3
 8000676:	f7ff ff5f 	bl	8000538 <LL_GPIO_SetPinMode>
 800067a:	4b1e      	ldr	r3, [pc, #120]	; (80006f4 <gpio_config+0xc4>)
 800067c:	2201      	movs	r2, #1
 800067e:	2108      	movs	r1, #8
 8000680:	0018      	movs	r0, r3
 8000682:	f7ff ff59 	bl	8000538 <LL_GPIO_SetPinMode>
 8000686:	4b1b      	ldr	r3, [pc, #108]	; (80006f4 <gpio_config+0xc4>)
 8000688:	2201      	movs	r2, #1
 800068a:	2110      	movs	r1, #16
 800068c:	0018      	movs	r0, r3
 800068e:	f7ff ff53 	bl	8000538 <LL_GPIO_SetPinMode>
 8000692:	4b18      	ldr	r3, [pc, #96]	; (80006f4 <gpio_config+0xc4>)
 8000694:	2201      	movs	r2, #1
 8000696:	2120      	movs	r1, #32
 8000698:	0018      	movs	r0, r3
 800069a:	f7ff ff4d 	bl	8000538 <LL_GPIO_SetPinMode>
 800069e:	4b15      	ldr	r3, [pc, #84]	; (80006f4 <gpio_config+0xc4>)
 80006a0:	2201      	movs	r2, #1
 80006a2:	2140      	movs	r1, #64	; 0x40
 80006a4:	0018      	movs	r0, r3
 80006a6:	f7ff ff47 	bl	8000538 <LL_GPIO_SetPinMode>
 80006aa:	4b12      	ldr	r3, [pc, #72]	; (80006f4 <gpio_config+0xc4>)
 80006ac:	2201      	movs	r2, #1
 80006ae:	2180      	movs	r1, #128	; 0x80
 80006b0:	0018      	movs	r0, r3
 80006b2:	f7ff ff41 	bl	8000538 <LL_GPIO_SetPinMode>
 80006b6:	2380      	movs	r3, #128	; 0x80
 80006b8:	005b      	lsls	r3, r3, #1
 80006ba:	480e      	ldr	r0, [pc, #56]	; (80006f4 <gpio_config+0xc4>)
 80006bc:	2201      	movs	r2, #1
 80006be:	0019      	movs	r1, r3
 80006c0:	f7ff ff3a 	bl	8000538 <LL_GPIO_SetPinMode>
 80006c4:	2380      	movs	r3, #128	; 0x80
 80006c6:	009b      	lsls	r3, r3, #2
 80006c8:	480a      	ldr	r0, [pc, #40]	; (80006f4 <gpio_config+0xc4>)
 80006ca:	2201      	movs	r2, #1
 80006cc:	0019      	movs	r1, r3
 80006ce:	f7ff ff33 	bl	8000538 <LL_GPIO_SetPinMode>
 80006d2:	2380      	movs	r3, #128	; 0x80
 80006d4:	00db      	lsls	r3, r3, #3
 80006d6:	4807      	ldr	r0, [pc, #28]	; (80006f4 <gpio_config+0xc4>)
 80006d8:	2201      	movs	r2, #1
 80006da:	0019      	movs	r1, r3
 80006dc:	f7ff ff2c 	bl	8000538 <LL_GPIO_SetPinMode>
 80006e0:	2380      	movs	r3, #128	; 0x80
 80006e2:	011b      	lsls	r3, r3, #4
 80006e4:	4803      	ldr	r0, [pc, #12]	; (80006f4 <gpio_config+0xc4>)
 80006e6:	2201      	movs	r2, #1
 80006e8:	0019      	movs	r1, r3
 80006ea:	f7ff ff25 	bl	8000538 <LL_GPIO_SetPinMode>
 80006ee:	46c0      	nop			; (mov r8, r8)
 80006f0:	46bd      	mov	sp, r7
 80006f2:	bd80      	pop	{r7, pc}
 80006f4:	48000400 	.word	0x48000400

080006f8 <delay>:
 80006f8:	b580      	push	{r7, lr}
 80006fa:	4e02      	ldr	r6, [pc, #8]	; (8000704 <delay+0xc>)
 80006fc:	3e01      	subs	r6, #1
 80006fe:	2e00      	cmp	r6, #0
 8000700:	d1fc      	bne.n	80006fc <delay+0x4>
 8000702:	bd80      	pop	{r7, pc}
 8000704:	00005000 	.word	0x00005000
 8000708:	46c0      	nop			; (mov r8, r8)
	...

0800070c <show_digit>:
 800070c:	b5b0      	push	{r4, r5, r7, lr}
 800070e:	b088      	sub	sp, #32
 8000710:	af00      	add	r7, sp, #0
 8000712:	6078      	str	r0, [r7, #4]
 8000714:	2108      	movs	r1, #8
 8000716:	187b      	adds	r3, r7, r1
 8000718:	4a10      	ldr	r2, [pc, #64]	; (800075c <show_digit+0x50>)
 800071a:	ca31      	ldmia	r2!, {r0, r4, r5}
 800071c:	c331      	stmia	r3!, {r0, r4, r5}
 800071e:	ca11      	ldmia	r2!, {r0, r4}
 8000720:	c311      	stmia	r3!, {r0, r4}
 8000722:	201e      	movs	r0, #30
 8000724:	183b      	adds	r3, r7, r0
 8000726:	187a      	adds	r2, r7, r1
 8000728:	6879      	ldr	r1, [r7, #4]
 800072a:	0049      	lsls	r1, r1, #1
 800072c:	5a8a      	ldrh	r2, [r1, r2]
 800072e:	801a      	strh	r2, [r3, #0]
 8000730:	0004      	movs	r4, r0
 8000732:	183b      	adds	r3, r7, r0
 8000734:	881b      	ldrh	r3, [r3, #0]
 8000736:	4a0a      	ldr	r2, [pc, #40]	; (8000760 <show_digit+0x54>)
 8000738:	0019      	movs	r1, r3
 800073a:	0010      	movs	r0, r2
 800073c:	f7ff ff2b 	bl	8000596 <LL_GPIO_SetOutputPin>
 8000740:	193b      	adds	r3, r7, r4
 8000742:	881b      	ldrh	r3, [r3, #0]
 8000744:	22ff      	movs	r2, #255	; 0xff
 8000746:	1ad3      	subs	r3, r2, r3
 8000748:	4a05      	ldr	r2, [pc, #20]	; (8000760 <show_digit+0x54>)
 800074a:	0019      	movs	r1, r3
 800074c:	0010      	movs	r0, r2
 800074e:	f7ff ff2e 	bl	80005ae <LL_GPIO_ResetOutputPin>
 8000752:	46c0      	nop			; (mov r8, r8)
 8000754:	46bd      	mov	sp, r7
 8000756:	b008      	add	sp, #32
 8000758:	bdb0      	pop	{r4, r5, r7, pc}
 800075a:	46c0      	nop			; (mov r8, r8)
 800075c:	08000bdc 	.word	0x08000bdc
 8000760:	48000400 	.word	0x48000400

08000764 <show_num>:
 8000764:	b580      	push	{r7, lr}
 8000766:	b082      	sub	sp, #8
 8000768:	af00      	add	r7, sp, #0
 800076a:	6078      	str	r0, [r7, #4]
 800076c:	6039      	str	r1, [r7, #0]
 800076e:	687b      	ldr	r3, [r7, #4]
 8000770:	2b01      	cmp	r3, #1
 8000772:	d02a      	beq.n	80007ca <show_num+0x66>
 8000774:	687b      	ldr	r3, [r7, #4]
 8000776:	2b01      	cmp	r3, #1
 8000778:	dc03      	bgt.n	8000782 <show_num+0x1e>
 800077a:	687b      	ldr	r3, [r7, #4]
 800077c:	2b00      	cmp	r3, #0
 800077e:	d007      	beq.n	8000790 <show_num+0x2c>
 8000780:	e07a      	b.n	8000878 <show_num+0x114>
 8000782:	687b      	ldr	r3, [r7, #4]
 8000784:	2b02      	cmp	r3, #2
 8000786:	d03d      	beq.n	8000804 <show_num+0xa0>
 8000788:	687b      	ldr	r3, [r7, #4]
 800078a:	2b03      	cmp	r3, #3
 800078c:	d057      	beq.n	800083e <show_num+0xda>
 800078e:	e073      	b.n	8000878 <show_num+0x114>
 8000790:	2380      	movs	r3, #128	; 0x80
 8000792:	011b      	lsls	r3, r3, #4
 8000794:	4a3d      	ldr	r2, [pc, #244]	; (800088c <show_num+0x128>)
 8000796:	0019      	movs	r1, r3
 8000798:	0010      	movs	r0, r2
 800079a:	f7ff ff08 	bl	80005ae <LL_GPIO_ResetOutputPin>
 800079e:	2380      	movs	r3, #128	; 0x80
 80007a0:	00db      	lsls	r3, r3, #3
 80007a2:	4a3a      	ldr	r2, [pc, #232]	; (800088c <show_num+0x128>)
 80007a4:	0019      	movs	r1, r3
 80007a6:	0010      	movs	r0, r2
 80007a8:	f7ff fef5 	bl	8000596 <LL_GPIO_SetOutputPin>
 80007ac:	2380      	movs	r3, #128	; 0x80
 80007ae:	009b      	lsls	r3, r3, #2
 80007b0:	4a36      	ldr	r2, [pc, #216]	; (800088c <show_num+0x128>)
 80007b2:	0019      	movs	r1, r3
 80007b4:	0010      	movs	r0, r2
 80007b6:	f7ff feee 	bl	8000596 <LL_GPIO_SetOutputPin>
 80007ba:	2380      	movs	r3, #128	; 0x80
 80007bc:	005b      	lsls	r3, r3, #1
 80007be:	4a33      	ldr	r2, [pc, #204]	; (800088c <show_num+0x128>)
 80007c0:	0019      	movs	r1, r3
 80007c2:	0010      	movs	r0, r2
 80007c4:	f7ff fee7 	bl	8000596 <LL_GPIO_SetOutputPin>
 80007c8:	e056      	b.n	8000878 <show_num+0x114>
 80007ca:	2380      	movs	r3, #128	; 0x80
 80007cc:	011b      	lsls	r3, r3, #4
 80007ce:	4a2f      	ldr	r2, [pc, #188]	; (800088c <show_num+0x128>)
 80007d0:	0019      	movs	r1, r3
 80007d2:	0010      	movs	r0, r2
 80007d4:	f7ff fedf 	bl	8000596 <LL_GPIO_SetOutputPin>
 80007d8:	2380      	movs	r3, #128	; 0x80
 80007da:	00db      	lsls	r3, r3, #3
 80007dc:	4a2b      	ldr	r2, [pc, #172]	; (800088c <show_num+0x128>)
 80007de:	0019      	movs	r1, r3
 80007e0:	0010      	movs	r0, r2
 80007e2:	f7ff fee4 	bl	80005ae <LL_GPIO_ResetOutputPin>
 80007e6:	2380      	movs	r3, #128	; 0x80
 80007e8:	009b      	lsls	r3, r3, #2
 80007ea:	4a28      	ldr	r2, [pc, #160]	; (800088c <show_num+0x128>)
 80007ec:	0019      	movs	r1, r3
 80007ee:	0010      	movs	r0, r2
 80007f0:	f7ff fed1 	bl	8000596 <LL_GPIO_SetOutputPin>
 80007f4:	2380      	movs	r3, #128	; 0x80
 80007f6:	005b      	lsls	r3, r3, #1
 80007f8:	4a24      	ldr	r2, [pc, #144]	; (800088c <show_num+0x128>)
 80007fa:	0019      	movs	r1, r3
 80007fc:	0010      	movs	r0, r2
 80007fe:	f7ff feca 	bl	8000596 <LL_GPIO_SetOutputPin>
 8000802:	e039      	b.n	8000878 <show_num+0x114>
 8000804:	2380      	movs	r3, #128	; 0x80
 8000806:	011b      	lsls	r3, r3, #4
 8000808:	4a20      	ldr	r2, [pc, #128]	; (800088c <show_num+0x128>)
 800080a:	0019      	movs	r1, r3
 800080c:	0010      	movs	r0, r2
 800080e:	f7ff fec2 	bl	8000596 <LL_GPIO_SetOutputPin>
 8000812:	2380      	movs	r3, #128	; 0x80
 8000814:	00db      	lsls	r3, r3, #3
 8000816:	4a1d      	ldr	r2, [pc, #116]	; (800088c <show_num+0x128>)
 8000818:	0019      	movs	r1, r3
 800081a:	0010      	movs	r0, r2
 800081c:	f7ff febb 	bl	8000596 <LL_GPIO_SetOutputPin>
 8000820:	2380      	movs	r3, #128	; 0x80
 8000822:	009b      	lsls	r3, r3, #2
 8000824:	4a19      	ldr	r2, [pc, #100]	; (800088c <show_num+0x128>)
 8000826:	0019      	movs	r1, r3
 8000828:	0010      	movs	r0, r2
 800082a:	f7ff fec0 	bl	80005ae <LL_GPIO_ResetOutputPin>
 800082e:	2380      	movs	r3, #128	; 0x80
 8000830:	005b      	lsls	r3, r3, #1
 8000832:	4a16      	ldr	r2, [pc, #88]	; (800088c <show_num+0x128>)
 8000834:	0019      	movs	r1, r3
 8000836:	0010      	movs	r0, r2
 8000838:	f7ff fead 	bl	8000596 <LL_GPIO_SetOutputPin>
 800083c:	e01c      	b.n	8000878 <show_num+0x114>
 800083e:	2380      	movs	r3, #128	; 0x80
 8000840:	011b      	lsls	r3, r3, #4
 8000842:	4a12      	ldr	r2, [pc, #72]	; (800088c <show_num+0x128>)
 8000844:	0019      	movs	r1, r3
 8000846:	0010      	movs	r0, r2
 8000848:	f7ff fea5 	bl	8000596 <LL_GPIO_SetOutputPin>
 800084c:	2380      	movs	r3, #128	; 0x80
 800084e:	00db      	lsls	r3, r3, #3
 8000850:	4a0e      	ldr	r2, [pc, #56]	; (800088c <show_num+0x128>)
 8000852:	0019      	movs	r1, r3
 8000854:	0010      	movs	r0, r2
 8000856:	f7ff fe9e 	bl	8000596 <LL_GPIO_SetOutputPin>
 800085a:	2380      	movs	r3, #128	; 0x80
 800085c:	009b      	lsls	r3, r3, #2
 800085e:	4a0b      	ldr	r2, [pc, #44]	; (800088c <show_num+0x128>)
 8000860:	0019      	movs	r1, r3
 8000862:	0010      	movs	r0, r2
 8000864:	f7ff fe97 	bl	8000596 <LL_GPIO_SetOutputPin>
 8000868:	2380      	movs	r3, #128	; 0x80
 800086a:	005b      	lsls	r3, r3, #1
 800086c:	4a07      	ldr	r2, [pc, #28]	; (800088c <show_num+0x128>)
 800086e:	0019      	movs	r1, r3
 8000870:	0010      	movs	r0, r2
 8000872:	f7ff fe9c 	bl	80005ae <LL_GPIO_ResetOutputPin>
 8000876:	46c0      	nop			; (mov r8, r8)
 8000878:	683b      	ldr	r3, [r7, #0]
 800087a:	0018      	movs	r0, r3
 800087c:	f7ff ff46 	bl	800070c <show_digit>
 8000880:	f7ff ff3a 	bl	80006f8 <delay>
 8000884:	46c0      	nop			; (mov r8, r8)
 8000886:	46bd      	mov	sp, r7
 8000888:	b002      	add	sp, #8
 800088a:	bd80      	pop	{r7, pc}
 800088c:	48000400 	.word	0x48000400

08000890 <to_display>:
 8000890:	b580      	push	{r7, lr}
 8000892:	b082      	sub	sp, #8
 8000894:	af00      	add	r7, sp, #0
 8000896:	6078      	str	r0, [r7, #4]
 8000898:	687b      	ldr	r3, [r7, #4]
 800089a:	4a23      	ldr	r2, [pc, #140]	; (8000928 <to_display+0x98>)
 800089c:	4293      	cmp	r3, r2
 800089e:	dd10      	ble.n	80008c2 <to_display+0x32>
 80008a0:	687b      	ldr	r3, [r7, #4]
 80008a2:	4922      	ldr	r1, [pc, #136]	; (800092c <to_display+0x9c>)
 80008a4:	0018      	movs	r0, r3
 80008a6:	f7ff fcf1 	bl	800028c <__aeabi_idivmod>
 80008aa:	000b      	movs	r3, r1
 80008ac:	001a      	movs	r2, r3
 80008ae:	23fa      	movs	r3, #250	; 0xfa
 80008b0:	0099      	lsls	r1, r3, #2
 80008b2:	0010      	movs	r0, r2
 80008b4:	f7ff fc04 	bl	80000c0 <__divsi3>
 80008b8:	0003      	movs	r3, r0
 80008ba:	0019      	movs	r1, r3
 80008bc:	2003      	movs	r0, #3
 80008be:	f7ff ff51 	bl	8000764 <show_num>
 80008c2:	687b      	ldr	r3, [r7, #4]
 80008c4:	2b63      	cmp	r3, #99	; 0x63
 80008c6:	dd0f      	ble.n	80008e8 <to_display+0x58>
 80008c8:	687a      	ldr	r2, [r7, #4]
 80008ca:	23fa      	movs	r3, #250	; 0xfa
 80008cc:	0099      	lsls	r1, r3, #2
 80008ce:	0010      	movs	r0, r2
 80008d0:	f7ff fcdc 	bl	800028c <__aeabi_idivmod>
 80008d4:	000b      	movs	r3, r1
 80008d6:	2164      	movs	r1, #100	; 0x64
 80008d8:	0018      	movs	r0, r3
 80008da:	f7ff fbf1 	bl	80000c0 <__divsi3>
 80008de:	0003      	movs	r3, r0
 80008e0:	0019      	movs	r1, r3
 80008e2:	2002      	movs	r0, #2
 80008e4:	f7ff ff3e 	bl	8000764 <show_num>
 80008e8:	687b      	ldr	r3, [r7, #4]
 80008ea:	2b09      	cmp	r3, #9
 80008ec:	dd0e      	ble.n	800090c <to_display+0x7c>
 80008ee:	687b      	ldr	r3, [r7, #4]
 80008f0:	2164      	movs	r1, #100	; 0x64
 80008f2:	0018      	movs	r0, r3
 80008f4:	f7ff fcca 	bl	800028c <__aeabi_idivmod>
 80008f8:	000b      	movs	r3, r1
 80008fa:	210a      	movs	r1, #10
 80008fc:	0018      	movs	r0, r3
 80008fe:	f7ff fbdf 	bl	80000c0 <__divsi3>
 8000902:	0003      	movs	r3, r0
 8000904:	0019      	movs	r1, r3
 8000906:	2001      	movs	r0, #1
 8000908:	f7ff ff2c 	bl	8000764 <show_num>
 800090c:	687b      	ldr	r3, [r7, #4]
 800090e:	210a      	movs	r1, #10
 8000910:	0018      	movs	r0, r3
 8000912:	f7ff fcbb 	bl	800028c <__aeabi_idivmod>
 8000916:	000b      	movs	r3, r1
 8000918:	0019      	movs	r1, r3
 800091a:	2000      	movs	r0, #0
 800091c:	f7ff ff22 	bl	8000764 <show_num>
 8000920:	46c0      	nop			; (mov r8, r8)
 8000922:	46bd      	mov	sp, r7
 8000924:	b002      	add	sp, #8
 8000926:	bd80      	pop	{r7, pc}
 8000928:	000003e7 	.word	0x000003e7
 800092c:	00002710 	.word	0x00002710

08000930 <main>:
 8000930:	b580      	push	{r7, lr}
 8000932:	b084      	sub	sp, #16
 8000934:	af00      	add	r7, sp, #0
 8000936:	2300      	movs	r3, #0
 8000938:	60fb      	str	r3, [r7, #12]
 800093a:	2300      	movs	r3, #0
 800093c:	60bb      	str	r3, [r7, #8]
 800093e:	f7ff fe43 	bl	80005c8 <rcc_config>
 8000942:	f7ff fe75 	bl	8000630 <gpio_config>
 8000946:	2390      	movs	r3, #144	; 0x90
 8000948:	05db      	lsls	r3, r3, #23
 800094a:	2101      	movs	r1, #1
 800094c:	0018      	movs	r0, r3
 800094e:	f7ff fe10 	bl	8000572 <LL_GPIO_IsInputPinSet>
 8000952:	1e03      	subs	r3, r0, #0
 8000954:	d02b      	beq.n	80009ae <main+0x7e>
 8000956:	68fb      	ldr	r3, [r7, #12]
 8000958:	3301      	adds	r3, #1
 800095a:	60fb      	str	r3, [r7, #12]
 800095c:	68bb      	ldr	r3, [r7, #8]
 800095e:	2b00      	cmp	r3, #0
 8000960:	d120      	bne.n	80009a4 <main+0x74>
 8000962:	f7ff fec9 	bl	80006f8 <delay>
 8000966:	2300      	movs	r3, #0
 8000968:	607b      	str	r3, [r7, #4]
 800096a:	e006      	b.n	800097a <main+0x4a>
 800096c:	68fb      	ldr	r3, [r7, #12]
 800096e:	0018      	movs	r0, r3
 8000970:	f7ff ff8e 	bl	8000890 <to_display>
 8000974:	687b      	ldr	r3, [r7, #4]
 8000976:	3301      	adds	r3, #1
 8000978:	607b      	str	r3, [r7, #4]
 800097a:	687b      	ldr	r3, [r7, #4]
 800097c:	2bc8      	cmp	r3, #200	; 0xc8
 800097e:	dc07      	bgt.n	8000990 <main+0x60>
 8000980:	2390      	movs	r3, #144	; 0x90
 8000982:	05db      	lsls	r3, r3, #23
 8000984:	2101      	movs	r1, #1
 8000986:	0018      	movs	r0, r3
 8000988:	f7ff fdf3 	bl	8000572 <LL_GPIO_IsInputPinSet>
 800098c:	1e03      	subs	r3, r0, #0
 800098e:	d1ed      	bne.n	800096c <main+0x3c>
 8000990:	2390      	movs	r3, #144	; 0x90
 8000992:	05db      	lsls	r3, r3, #23
 8000994:	2101      	movs	r1, #1
 8000996:	0018      	movs	r0, r3
 8000998:	f7ff fdeb 	bl	8000572 <LL_GPIO_IsInputPinSet>
 800099c:	1e03      	subs	r3, r0, #0
 800099e:	d001      	beq.n	80009a4 <main+0x74>
 80009a0:	2301      	movs	r3, #1
 80009a2:	60bb      	str	r3, [r7, #8]
 80009a4:	68fb      	ldr	r3, [r7, #12]
 80009a6:	0018      	movs	r0, r3
 80009a8:	f7ff ff72 	bl	8000890 <to_display>
 80009ac:	e7cb      	b.n	8000946 <main+0x16>
 80009ae:	2300      	movs	r3, #0
 80009b0:	60bb      	str	r3, [r7, #8]
 80009b2:	68fb      	ldr	r3, [r7, #12]
 80009b4:	0018      	movs	r0, r3
 80009b6:	f7ff ff6b 	bl	8000890 <to_display>
 80009ba:	e7c4      	b.n	8000946 <main+0x16>

080009bc <SystemInit>:
 80009bc:	b580      	push	{r7, lr}
 80009be:	af00      	add	r7, sp, #0
 80009c0:	4b1a      	ldr	r3, [pc, #104]	; (8000a2c <SystemInit+0x70>)
 80009c2:	681a      	ldr	r2, [r3, #0]
 80009c4:	4b19      	ldr	r3, [pc, #100]	; (8000a2c <SystemInit+0x70>)
 80009c6:	2101      	movs	r1, #1
 80009c8:	430a      	orrs	r2, r1
 80009ca:	601a      	str	r2, [r3, #0]
 80009cc:	4b17      	ldr	r3, [pc, #92]	; (8000a2c <SystemInit+0x70>)
 80009ce:	685a      	ldr	r2, [r3, #4]
 80009d0:	4b16      	ldr	r3, [pc, #88]	; (8000a2c <SystemInit+0x70>)
 80009d2:	4917      	ldr	r1, [pc, #92]	; (8000a30 <SystemInit+0x74>)
 80009d4:	400a      	ands	r2, r1
 80009d6:	605a      	str	r2, [r3, #4]
 80009d8:	4b14      	ldr	r3, [pc, #80]	; (8000a2c <SystemInit+0x70>)
 80009da:	681a      	ldr	r2, [r3, #0]
 80009dc:	4b13      	ldr	r3, [pc, #76]	; (8000a2c <SystemInit+0x70>)
 80009de:	4915      	ldr	r1, [pc, #84]	; (8000a34 <SystemInit+0x78>)
 80009e0:	400a      	ands	r2, r1
 80009e2:	601a      	str	r2, [r3, #0]
 80009e4:	4b11      	ldr	r3, [pc, #68]	; (8000a2c <SystemInit+0x70>)
 80009e6:	681a      	ldr	r2, [r3, #0]
 80009e8:	4b10      	ldr	r3, [pc, #64]	; (8000a2c <SystemInit+0x70>)
 80009ea:	4913      	ldr	r1, [pc, #76]	; (8000a38 <SystemInit+0x7c>)
 80009ec:	400a      	ands	r2, r1
 80009ee:	601a      	str	r2, [r3, #0]
 80009f0:	4b0e      	ldr	r3, [pc, #56]	; (8000a2c <SystemInit+0x70>)
 80009f2:	685a      	ldr	r2, [r3, #4]
 80009f4:	4b0d      	ldr	r3, [pc, #52]	; (8000a2c <SystemInit+0x70>)
 80009f6:	4911      	ldr	r1, [pc, #68]	; (8000a3c <SystemInit+0x80>)
 80009f8:	400a      	ands	r2, r1
 80009fa:	605a      	str	r2, [r3, #4]
 80009fc:	4b0b      	ldr	r3, [pc, #44]	; (8000a2c <SystemInit+0x70>)
 80009fe:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000a00:	4b0a      	ldr	r3, [pc, #40]	; (8000a2c <SystemInit+0x70>)
 8000a02:	210f      	movs	r1, #15
 8000a04:	438a      	bics	r2, r1
 8000a06:	62da      	str	r2, [r3, #44]	; 0x2c
 8000a08:	4b08      	ldr	r3, [pc, #32]	; (8000a2c <SystemInit+0x70>)
 8000a0a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000a0c:	4b07      	ldr	r3, [pc, #28]	; (8000a2c <SystemInit+0x70>)
 8000a0e:	490c      	ldr	r1, [pc, #48]	; (8000a40 <SystemInit+0x84>)
 8000a10:	400a      	ands	r2, r1
 8000a12:	631a      	str	r2, [r3, #48]	; 0x30
 8000a14:	4b05      	ldr	r3, [pc, #20]	; (8000a2c <SystemInit+0x70>)
 8000a16:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a18:	4b04      	ldr	r3, [pc, #16]	; (8000a2c <SystemInit+0x70>)
 8000a1a:	2101      	movs	r1, #1
 8000a1c:	438a      	bics	r2, r1
 8000a1e:	635a      	str	r2, [r3, #52]	; 0x34
 8000a20:	4b02      	ldr	r3, [pc, #8]	; (8000a2c <SystemInit+0x70>)
 8000a22:	2200      	movs	r2, #0
 8000a24:	609a      	str	r2, [r3, #8]
 8000a26:	46c0      	nop			; (mov r8, r8)
 8000a28:	46bd      	mov	sp, r7
 8000a2a:	bd80      	pop	{r7, pc}
 8000a2c:	40021000 	.word	0x40021000
 8000a30:	f8ffb80c 	.word	0xf8ffb80c
 8000a34:	fef6ffff 	.word	0xfef6ffff
 8000a38:	fffbffff 	.word	0xfffbffff
 8000a3c:	ffc0ffff 	.word	0xffc0ffff
 8000a40:	fffffeac 	.word	0xfffffeac

08000a44 <NMI_Handler>:
 8000a44:	b580      	push	{r7, lr}
 8000a46:	af00      	add	r7, sp, #0
 8000a48:	46c0      	nop			; (mov r8, r8)
 8000a4a:	46bd      	mov	sp, r7
 8000a4c:	bd80      	pop	{r7, pc}

08000a4e <HardFault_Handler>:
 8000a4e:	b580      	push	{r7, lr}
 8000a50:	af00      	add	r7, sp, #0
 8000a52:	e7fe      	b.n	8000a52 <HardFault_Handler+0x4>

08000a54 <SVC_Handler>:
 8000a54:	b580      	push	{r7, lr}
 8000a56:	af00      	add	r7, sp, #0
 8000a58:	46c0      	nop			; (mov r8, r8)
 8000a5a:	46bd      	mov	sp, r7
 8000a5c:	bd80      	pop	{r7, pc}

08000a5e <PendSV_Handler>:
 8000a5e:	b580      	push	{r7, lr}
 8000a60:	af00      	add	r7, sp, #0
 8000a62:	46c0      	nop			; (mov r8, r8)
 8000a64:	46bd      	mov	sp, r7
 8000a66:	bd80      	pop	{r7, pc}

08000a68 <__libc_init_array>:
 8000a68:	b570      	push	{r4, r5, r6, lr}
 8000a6a:	4d0c      	ldr	r5, [pc, #48]	; (8000a9c <__libc_init_array+0x34>)
 8000a6c:	4e0c      	ldr	r6, [pc, #48]	; (8000aa0 <__libc_init_array+0x38>)
 8000a6e:	1b76      	subs	r6, r6, r5
 8000a70:	10b6      	asrs	r6, r6, #2
 8000a72:	d005      	beq.n	8000a80 <__libc_init_array+0x18>
 8000a74:	2400      	movs	r4, #0
 8000a76:	cd08      	ldmia	r5!, {r3}
 8000a78:	3401      	adds	r4, #1
 8000a7a:	4798      	blx	r3
 8000a7c:	42a6      	cmp	r6, r4
 8000a7e:	d1fa      	bne.n	8000a76 <__libc_init_array+0xe>
 8000a80:	f000 f8a0 	bl	8000bc4 <_init>
 8000a84:	4d07      	ldr	r5, [pc, #28]	; (8000aa4 <__libc_init_array+0x3c>)
 8000a86:	4e08      	ldr	r6, [pc, #32]	; (8000aa8 <__libc_init_array+0x40>)
 8000a88:	1b76      	subs	r6, r6, r5
 8000a8a:	10b6      	asrs	r6, r6, #2
 8000a8c:	d005      	beq.n	8000a9a <__libc_init_array+0x32>
 8000a8e:	2400      	movs	r4, #0
 8000a90:	cd08      	ldmia	r5!, {r3}
 8000a92:	3401      	adds	r4, #1
 8000a94:	4798      	blx	r3
 8000a96:	42a6      	cmp	r6, r4
 8000a98:	d1fa      	bne.n	8000a90 <__libc_init_array+0x28>
 8000a9a:	bd70      	pop	{r4, r5, r6, pc}
 8000a9c:	08000bf4 	.word	0x08000bf4
 8000aa0:	08000bf4 	.word	0x08000bf4
 8000aa4:	08000bf4 	.word	0x08000bf4
 8000aa8:	08000bfc 	.word	0x08000bfc

08000aac <register_fini>:
 8000aac:	4b03      	ldr	r3, [pc, #12]	; (8000abc <register_fini+0x10>)
 8000aae:	b510      	push	{r4, lr}
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	d002      	beq.n	8000aba <register_fini+0xe>
 8000ab4:	4802      	ldr	r0, [pc, #8]	; (8000ac0 <register_fini+0x14>)
 8000ab6:	f000 f805 	bl	8000ac4 <atexit>
 8000aba:	bd10      	pop	{r4, pc}
 8000abc:	00000000 	.word	0x00000000
 8000ac0:	08000ad5 	.word	0x08000ad5

08000ac4 <atexit>:
 8000ac4:	b510      	push	{r4, lr}
 8000ac6:	0001      	movs	r1, r0
 8000ac8:	2300      	movs	r3, #0
 8000aca:	2200      	movs	r2, #0
 8000acc:	2000      	movs	r0, #0
 8000ace:	f000 f819 	bl	8000b04 <__register_exitproc>
 8000ad2:	bd10      	pop	{r4, pc}

08000ad4 <__libc_fini_array>:
 8000ad4:	b570      	push	{r4, r5, r6, lr}
 8000ad6:	4d07      	ldr	r5, [pc, #28]	; (8000af4 <__libc_fini_array+0x20>)
 8000ad8:	4c07      	ldr	r4, [pc, #28]	; (8000af8 <__libc_fini_array+0x24>)
 8000ada:	1b64      	subs	r4, r4, r5
 8000adc:	10a4      	asrs	r4, r4, #2
 8000ade:	d005      	beq.n	8000aec <__libc_fini_array+0x18>
 8000ae0:	3c01      	subs	r4, #1
 8000ae2:	00a3      	lsls	r3, r4, #2
 8000ae4:	58eb      	ldr	r3, [r5, r3]
 8000ae6:	4798      	blx	r3
 8000ae8:	2c00      	cmp	r4, #0
 8000aea:	d1f9      	bne.n	8000ae0 <__libc_fini_array+0xc>
 8000aec:	f000 f870 	bl	8000bd0 <_fini>
 8000af0:	bd70      	pop	{r4, r5, r6, pc}
 8000af2:	46c0      	nop			; (mov r8, r8)
 8000af4:	08000bfc 	.word	0x08000bfc
 8000af8:	08000c00 	.word	0x08000c00

08000afc <__retarget_lock_acquire_recursive>:
 8000afc:	4770      	bx	lr
 8000afe:	46c0      	nop			; (mov r8, r8)

08000b00 <__retarget_lock_release_recursive>:
 8000b00:	4770      	bx	lr
 8000b02:	46c0      	nop			; (mov r8, r8)

08000b04 <__register_exitproc>:
 8000b04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b06:	46de      	mov	lr, fp
 8000b08:	4645      	mov	r5, r8
 8000b0a:	464e      	mov	r6, r9
 8000b0c:	4657      	mov	r7, sl
 8000b0e:	b5e0      	push	{r5, r6, r7, lr}
 8000b10:	4c2a      	ldr	r4, [pc, #168]	; (8000bbc <__register_exitproc+0xb8>)
 8000b12:	b083      	sub	sp, #12
 8000b14:	0005      	movs	r5, r0
 8000b16:	6820      	ldr	r0, [r4, #0]
 8000b18:	4690      	mov	r8, r2
 8000b1a:	469b      	mov	fp, r3
 8000b1c:	000e      	movs	r6, r1
 8000b1e:	f7ff ffed 	bl	8000afc <__retarget_lock_acquire_recursive>
 8000b22:	4b27      	ldr	r3, [pc, #156]	; (8000bc0 <__register_exitproc+0xbc>)
 8000b24:	681b      	ldr	r3, [r3, #0]
 8000b26:	9301      	str	r3, [sp, #4]
 8000b28:	23a4      	movs	r3, #164	; 0xa4
 8000b2a:	9a01      	ldr	r2, [sp, #4]
 8000b2c:	005b      	lsls	r3, r3, #1
 8000b2e:	58d2      	ldr	r2, [r2, r3]
 8000b30:	2a00      	cmp	r2, #0
 8000b32:	d038      	beq.n	8000ba6 <__register_exitproc+0xa2>
 8000b34:	6853      	ldr	r3, [r2, #4]
 8000b36:	6820      	ldr	r0, [r4, #0]
 8000b38:	2b1f      	cmp	r3, #31
 8000b3a:	dc3a      	bgt.n	8000bb2 <__register_exitproc+0xae>
 8000b3c:	2d00      	cmp	r5, #0
 8000b3e:	d10e      	bne.n	8000b5e <__register_exitproc+0x5a>
 8000b40:	1c59      	adds	r1, r3, #1
 8000b42:	3302      	adds	r3, #2
 8000b44:	009b      	lsls	r3, r3, #2
 8000b46:	6051      	str	r1, [r2, #4]
 8000b48:	509e      	str	r6, [r3, r2]
 8000b4a:	f7ff ffd9 	bl	8000b00 <__retarget_lock_release_recursive>
 8000b4e:	2000      	movs	r0, #0
 8000b50:	b003      	add	sp, #12
 8000b52:	bc3c      	pop	{r2, r3, r4, r5}
 8000b54:	4690      	mov	r8, r2
 8000b56:	4699      	mov	r9, r3
 8000b58:	46a2      	mov	sl, r4
 8000b5a:	46ab      	mov	fp, r5
 8000b5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b5e:	0099      	lsls	r1, r3, #2
 8000b60:	4689      	mov	r9, r1
 8000b62:	4491      	add	r9, r2
 8000b64:	4641      	mov	r1, r8
 8000b66:	2488      	movs	r4, #136	; 0x88
 8000b68:	464f      	mov	r7, r9
 8000b6a:	5139      	str	r1, [r7, r4]
 8000b6c:	21c4      	movs	r1, #196	; 0xc4
 8000b6e:	0049      	lsls	r1, r1, #1
 8000b70:	4688      	mov	r8, r1
 8000b72:	4490      	add	r8, r2
 8000b74:	4641      	mov	r1, r8
 8000b76:	3c87      	subs	r4, #135	; 0x87
 8000b78:	409c      	lsls	r4, r3
 8000b7a:	6809      	ldr	r1, [r1, #0]
 8000b7c:	46a2      	mov	sl, r4
 8000b7e:	4321      	orrs	r1, r4
 8000b80:	468c      	mov	ip, r1
 8000b82:	4641      	mov	r1, r8
 8000b84:	4664      	mov	r4, ip
 8000b86:	600c      	str	r4, [r1, #0]
 8000b88:	2184      	movs	r1, #132	; 0x84
 8000b8a:	464c      	mov	r4, r9
 8000b8c:	465f      	mov	r7, fp
 8000b8e:	0049      	lsls	r1, r1, #1
 8000b90:	5067      	str	r7, [r4, r1]
 8000b92:	2d02      	cmp	r5, #2
 8000b94:	d1d4      	bne.n	8000b40 <__register_exitproc+0x3c>
 8000b96:	0011      	movs	r1, r2
 8000b98:	4655      	mov	r5, sl
 8000b9a:	318d      	adds	r1, #141	; 0x8d
 8000b9c:	31ff      	adds	r1, #255	; 0xff
 8000b9e:	680c      	ldr	r4, [r1, #0]
 8000ba0:	4325      	orrs	r5, r4
 8000ba2:	600d      	str	r5, [r1, #0]
 8000ba4:	e7cc      	b.n	8000b40 <__register_exitproc+0x3c>
 8000ba6:	9a01      	ldr	r2, [sp, #4]
 8000ba8:	9901      	ldr	r1, [sp, #4]
 8000baa:	324d      	adds	r2, #77	; 0x4d
 8000bac:	32ff      	adds	r2, #255	; 0xff
 8000bae:	50ca      	str	r2, [r1, r3]
 8000bb0:	e7c0      	b.n	8000b34 <__register_exitproc+0x30>
 8000bb2:	f7ff ffa5 	bl	8000b00 <__retarget_lock_release_recursive>
 8000bb6:	2001      	movs	r0, #1
 8000bb8:	4240      	negs	r0, r0
 8000bba:	e7c9      	b.n	8000b50 <__register_exitproc+0x4c>
 8000bbc:	20000430 	.word	0x20000430
 8000bc0:	08000bf0 	.word	0x08000bf0

08000bc4 <_init>:
 8000bc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000bc6:	46c0      	nop			; (mov r8, r8)
 8000bc8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000bca:	bc08      	pop	{r3}
 8000bcc:	469e      	mov	lr, r3
 8000bce:	4770      	bx	lr

08000bd0 <_fini>:
 8000bd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000bd2:	46c0      	nop			; (mov r8, r8)
 8000bd4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000bd6:	bc08      	pop	{r3}
 8000bd8:	469e      	mov	lr, r3
 8000bda:	4770      	bx	lr
