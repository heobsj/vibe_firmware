	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"claim.c"
	.text
.Ltext0:
	.section	.bss._chillbuff_error_callback,"aw",%nobits
	.align	2
	.type	_chillbuff_error_callback, %object
	.size	_chillbuff_error_callback, 4
_chillbuff_error_callback:
	.space	4
	.section .rodata
	.align	2
.LC0:
	.ascii	"\012CHILLBUFF ERROR: (%s) %s\012\000"
	.section	.text._chillbuff_printerr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_chillbuff_printerr, %function
_chillbuff_printerr:
.LFB0:
	.file 1 "../../../../../../components/libraries/l8w8jwt/lib/chillbuff/include/chillbuff.h"
	.loc 1 128 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI0:
	sub	sp, sp, #24
.LCFI1:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 1 129 38
	ldr	r0, [sp, #12]
	bl	strlen
	mov	r4, r0
	.loc 1 129 54
	ldr	r0, [sp, #8]
	bl	strlen
	mov	r3, r0
	.loc 1 129 52
	add	r3, r3, r4
	.loc 1 129 18
	adds	r3, r3, #64
	str	r3, [sp, #20]
	.loc 1 130 23
	ldr	r0, [sp, #20]
	bl	malloc
	str	r0, [sp, #16]
	.loc 1 131 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L4
	.loc 1 133 9
	ldr	r3, [sp, #12]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, .L5
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #16]
	bl	snprintf
	.loc 1 134 39
	ldr	r3, .L5+4
	ldr	r3, [r3]
	.loc 1 134 12
	cmp	r3, #0
	beq	.L3
	.loc 1 136 13
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r0, [sp, #16]
	blx	r3
.LVL0:
.L3:
	.loc 1 138 9
	ldr	r0, [sp, #16]
	bl	free
.L4:
	.loc 1 140 1
	nop
	add	sp, sp, #24
.LCFI2:
	@ sp needed
	pop	{r4, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	_chillbuff_error_callback
.LFE0:
	.size	_chillbuff_printerr, .-_chillbuff_printerr
	.section .rodata
	.align	2
.LC1:
	.ascii	"Tried to append to a NULL chillbuff instance!\000"
	.align	2
.LC2:
	.ascii	"Tried to append NULL element(s) to a chillbuff inst"
	.ascii	"ance!\000"
	.align	2
.LC3:
	.ascii	"The passed \"elements_count\" argument is zero; not"
	.ascii	"hing to append!\000"
	.align	2
.LC4:
	.ascii	"Invalid grow method! Please use the appropriate chi"
	.ascii	"llbuff_growth_method enum!\000"
	.global	__aeabi_uldivmod
	.align	2
.LC5:
	.ascii	"Couldn't push back due to buffer OVERFLOW!\000"
	.align	2
.LC6:
	.ascii	"Couldn't resize chillbuff underlying array; OUT OF "
	.ascii	"MEMORY!\000"
	.section	.text.chillbuff_push_back,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chillbuff_push_back, %function
chillbuff_push_back:
.LFB6:
	.loc 1 254 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI3:
	sub	sp, sp, #36
.LCFI4:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 255 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L8
	.loc 1 257 9
	ldr	r1, .L25
	ldr	r0, .L25+4
	bl	_chillbuff_printerr
	.loc 1 258 16
	movs	r3, #200
	b	.L9
.L8:
	.loc 1 261 8
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L10
	.loc 1 263 9
	ldr	r1, .L25
	ldr	r0, .L25+8
	bl	_chillbuff_printerr
	.loc 1 264 16
	movs	r3, #200
	b	.L9
.L10:
	.loc 1 267 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L11
	.loc 1 269 9
	ldr	r1, .L25
	ldr	r0, .L25+12
	bl	_chillbuff_printerr
	.loc 1 270 16
	mov	r3, #300
	b	.L9
.L11:
.LBB2:
	.loc 1 273 17
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 273 5
	b	.L12
.L24:
	.loc 1 275 17
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 275 33
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 275 12
	cmp	r2, r3
	bne	.L13
.LBB3:
	.loc 1 279 25
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 279 13
	cmp	r3, #3
	bhi	.L14
	adr	r2, .L16
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L16:
	.word	.L19+1
	.word	.L18+1
	.word	.L17+1
	.word	.L15+1
	.p2align 1
.L14:
	.loc 1 282 21
	ldr	r1, .L25
	ldr	r0, .L25+16
	bl	_chillbuff_printerr
	.loc 1 283 28
	mov	r3, #300
	b	.L9
.L19:
	.loc 1 285 41
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 285 34
	lsls	r3, r3, #1
	str	r3, [sp, #24]
	.loc 1 286 21
	b	.L20
.L18:
	.loc 1 288 41
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 288 34
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 289 21
	b	.L20
.L17:
	.loc 1 291 41
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #8]
	.loc 1 291 58
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 291 34
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 292 21
	b	.L20
.L15:
	.loc 1 294 41
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 294 58
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #8]
	.loc 1 294 34
	mul	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 295 21
	nop
.L20:
	.loc 1 298 37
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 298 16
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bls	.L21
	.loc 1 298 64 discriminator 1
	ldr	r3, [sp, #24]
	mov	r4, r3
	mov	r5, #0
	.loc 1 298 84 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	mov	r2, r3
	mov	r3, #0
	.loc 1 298 78 discriminator 1
	mov	r0, #-1
	mov	r1, #-1
	bl	__aeabi_uldivmod
.LVL1:
	mov	r2, r0
	mov	r3, r1
	.loc 1 298 48 discriminator 1
	cmp	r5, r3
	it	eq
	cmpeq	r4, r2
	bcc	.L22
.L21:
	.loc 1 300 17
	ldr	r1, .L25
	ldr	r0, .L25+20
	bl	_chillbuff_printerr
	.loc 1 301 24
	mov	r3, #400
	b	.L9
.L22:
	.loc 1 304 31
	ldr	r3, [sp, #12]
	ldr	r0, [r3]
	.loc 1 304 71
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 304 31
	ldr	r2, [sp, #24]
	mul	r3, r2, r3
	mov	r1, r3
	bl	realloc
	str	r0, [sp, #20]
	.loc 1 305 16
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L23
	.loc 1 307 17
	ldr	r1, .L25
	ldr	r0, .L25+24
	bl	_chillbuff_printerr
	.loc 1 308 24
	movs	r3, #100
	b	.L9
.L23:
	.loc 1 311 44
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 311 65
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	.loc 1 311 59
	mul	r3, r2, r3
	.loc 1 311 13
	ldr	r2, [sp, #20]
	adds	r0, r2, r3
	.loc 1 311 102
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	.loc 1 311 96
	ldr	r2, [sp, #24]
	subs	r3, r2, r3
	.loc 1 311 118
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #12]
	.loc 1 311 13
	mul	r3, r2, r3
	mov	r2, r3
	movs	r1, #0
	bl	memset
	.loc 1 312 25
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3]
	.loc 1 313 28
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #24]
	str	r2, [r3, #8]
.L13:
.LBE3:
	.loc 1 316 27 discriminator 2
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 316 42 discriminator 2
	ldr	r3, [sp, #12]
	ldr	r1, [r3, #12]
	.loc 1 316 63 discriminator 2
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	.loc 1 316 71 discriminator 2
	adds	r4, r3, #1
	ldr	r0, [sp, #12]
	str	r4, [r0, #4]
	.loc 1 316 57 discriminator 2
	mul	r3, r3, r1
	.loc 1 316 9 discriminator 2
	adds	r0, r2, r3
	.loc 1 316 103 discriminator 2
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 316 97 discriminator 2
	ldr	r2, [sp, #28]
	mul	r3, r2, r3
	.loc 1 316 9 discriminator 2
	ldr	r2, [sp, #8]
	adds	r1, r2, r3
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	memcpy
	.loc 1 273 45 discriminator 2
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L12:
	.loc 1 273 5 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L24
.LBE2:
	.loc 1 319 12
	movs	r3, #0
.L9:
	.loc 1 320 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI5:
	@ sp needed
	pop	{r4, r5, pc}
.L26:
	.align	2
.L25:
	.word	__func__.5687
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
.LFE6:
	.size	chillbuff_push_back, .-chillbuff_push_back
	.section	.text.l8w8jwt_free_claims,"ax",%progbits
	.align	1
	.global	l8w8jwt_free_claims
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	l8w8jwt_free_claims, %function
l8w8jwt_free_claims:
.LFB7:
	.file 2 "C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF52840-fw\\nRF5_SDK_15.3.0_59ac345\\components\\libraries\\l8w8jwt\\src\\claim.c"
	.loc 2 28 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #20
.LCFI7:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 29 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L33
	.loc 2 29 24 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L33
.LBB4:
	.loc 2 31 36
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 2 31 9
	b	.L29
.L32:
	.loc 2 33 16
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L34
	.loc 2 36 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 2 36 13
	mov	r0, r3
	bl	free
	.loc 2 37 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 2 37 13
	mov	r0, r3
	bl	free
	b	.L31
.L34:
	.loc 2 34 17
	nop
.L31:
	.loc 2 31 88 discriminator 2
	ldr	r3, [sp, #12]
	adds	r3, r3, #20
	str	r3, [sp, #12]
.L29:
	.loc 2 31 67 discriminator 1
	ldr	r2, [sp]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 2 31 9 discriminator 1
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcc	.L32
.LBE4:
	.loc 2 39 9
	ldr	r0, [sp, #4]
	bl	free
.L33:
	.loc 2 41 1
	nop
	add	sp, sp, #20
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	l8w8jwt_free_claims, .-l8w8jwt_free_claims
	.section .rodata
	.align	2
.LC7:
	.ascii	",\000"
	.align	2
.LC8:
	.ascii	"\"\000"
	.align	2
.LC9:
	.ascii	"\":\000"
	.section	.text.l8w8jwt_write_claims,"ax",%progbits
	.align	1
	.global	l8w8jwt_write_claims
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	l8w8jwt_write_claims, %function
l8w8jwt_write_claims:
.LFB8:
	.loc 2 44 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #24
.LCFI10:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 2 45 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L36
	.loc 2 45 31 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L37
.L36:
	.loc 2 47 16
	movs	r3, #100
	b	.L38
.L37:
	.loc 2 50 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L39
	.loc 2 52 16
	movs	r3, #200
	b	.L38
.L39:
	.loc 2 55 9
	movs	r3, #1
	str	r3, [sp, #20]
.LBB5:
	.loc 2 56 32
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	.loc 2 56 5
	b	.L40
.L50:
	.loc 2 58 18
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	.loc 2 58 12
	cmp	r3, #0
	beq	.L51
	.loc 2 63 12
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L43
	.loc 2 65 13
	movs	r2, #1
	ldr	r1, .L52
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
.L43:
	.loc 2 68 9
	movs	r2, #1
	ldr	r1, .L52+4
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
	.loc 2 69 49
	ldr	r3, [sp, #16]
	ldr	r4, [r3]
	.loc 2 69 61
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #4]
	.loc 2 69 9
	cmp	r3, #0
	beq	.L44
	.loc 2 69 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #4]
	b	.L45
.L44:
	.loc 2 69 108 is_stmt 1 discriminator 2
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	.loc 2 69 96 discriminator 2
	mov	r0, r3
	bl	strlen
	mov	r3, r0
.L45:
	.loc 2 69 9 discriminator 4
	mov	r2, r3
	mov	r1, r4
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
	.loc 2 70 9 discriminator 4
	movs	r2, #2
	ldr	r1, .L52+8
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
	.loc 2 72 18 discriminator 4
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #16]
	.loc 2 72 12 discriminator 4
	cmp	r3, #0
	bne	.L46
	.loc 2 73 13
	movs	r2, #1
	ldr	r1, .L52+4
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
.L46:
	.loc 2 75 49
	ldr	r3, [sp, #16]
	ldr	r4, [r3, #8]
	.loc 2 75 63
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	.loc 2 75 9
	cmp	r3, #0
	beq	.L47
	.loc 2 75 9 is_stmt 0 discriminator 1
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	b	.L48
.L47:
	.loc 2 75 114 is_stmt 1 discriminator 2
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #8]
	.loc 2 75 102 discriminator 2
	mov	r0, r3
	bl	strlen
	mov	r3, r0
.L48:
	.loc 2 75 9 discriminator 4
	mov	r2, r3
	mov	r1, r4
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
	.loc 2 77 18 discriminator 4
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #16]
	.loc 2 77 12 discriminator 4
	cmp	r3, #0
	bne	.L49
	.loc 2 78 13
	movs	r2, #1
	ldr	r1, .L52+4
	ldr	r0, [sp, #12]
	bl	chillbuff_push_back
.L49:
	.loc 2 80 15
	movs	r3, #0
	str	r3, [sp, #20]
	b	.L42
.L51:
	.loc 2 60 13
	nop
.L42:
	.loc 2 56 84 discriminator 2
	ldr	r3, [sp, #16]
	adds	r3, r3, #20
	str	r3, [sp, #16]
.L40:
	.loc 2 56 63 discriminator 1
	ldr	r2, [sp, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #8]
	add	r3, r3, r2
	.loc 2 56 5 discriminator 1
	ldr	r2, [sp, #16]
	cmp	r2, r3
	bcc	.L50
.LBE5:
	.loc 2 83 12
	movs	r3, #0
.L38:
	.loc 2 84 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.L53:
	.align	2
.L52:
	.word	.LC7
	.word	.LC8
	.word	.LC9
.LFE8:
	.size	l8w8jwt_write_claims, .-l8w8jwt_write_claims
	.section	.text.l8w8jwt_get_claim,"ax",%progbits
	.align	1
	.global	l8w8jwt_get_claim
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	l8w8jwt_get_claim, %function
l8w8jwt_get_claim:
.LFB9:
	.loc 2 87 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #28
.LCFI13:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 2 88 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L55
	.loc 2 88 24 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L55
	.loc 2 88 39 discriminator 2
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L55
	.loc 2 88 60 discriminator 3
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L56
.L55:
	.loc 2 89 16
	movs	r3, #0
	b	.L57
.L56:
.LBB6:
	.loc 2 91 32
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	.loc 2 91 5
	b	.L58
.L60:
	.loc 2 93 26
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 2 93 13
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	.loc 2 93 12
	cmp	r3, #0
	bne	.L59
	.loc 2 94 20
	ldr	r3, [sp, #20]
	b	.L57
.L59:
	.loc 2 91 84 discriminator 2
	ldr	r3, [sp, #20]
	adds	r3, r3, #20
	str	r3, [sp, #20]
.L58:
	.loc 2 91 63 discriminator 1
	ldr	r2, [sp, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 2 91 5 discriminator 1
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bcc	.L60
.LBE6:
	.loc 2 97 12
	movs	r3, #0
.L57:
	.loc 2 98 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	l8w8jwt_get_claim, .-l8w8jwt_get_claim
	.section	.rodata.__func__.5687,"a"
	.align	2
	.type	__func__.5687, %object
	.size	__func__.5687, 20
__func__.5687:
	.ascii	"chillbuff_push_back\000"
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/__crossworks.h"
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdlib.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdio.h"
	.file 6 "../../../../../../components/libraries/l8w8jwt/include/l8w8jwt/claim.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x95d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF735
	.byte	0xc
	.4byte	.LASF736
	.4byte	.LASF737
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF664
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.byte	0x8
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF612
	.byte	0x3
	.byte	0x7f
	.byte	0x7
	.4byte	0x53
	.byte	0
	.uleb128 0x4
	.4byte	.LASF613
	.byte	0x3
	.byte	0x80
	.byte	0x8
	.4byte	0x5a
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF614
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x80
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF615
	.uleb128 0xa
	.4byte	0x80
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF616
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2b
	.uleb128 0x7
	.4byte	0x53
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0xb7
	.uleb128 0x8
	.4byte	0xbd
	.uleb128 0x8
	.4byte	0x8c
	.uleb128 0x8
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x87
	.uleb128 0xb
	.byte	0x58
	.byte	0x3
	.byte	0x86
	.byte	0x9
	.4byte	0x26d
	.uleb128 0x4
	.4byte	.LASF617
	.byte	0x3
	.byte	0x88
	.byte	0xf
	.4byte	0xbd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF618
	.byte	0x3
	.byte	0x89
	.byte	0xf
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF619
	.byte	0x3
	.byte	0x8a
	.byte	0xf
	.4byte	0xbd
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF620
	.byte	0x3
	.byte	0x8c
	.byte	0xf
	.4byte	0xbd
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF621
	.byte	0x3
	.byte	0x8d
	.byte	0xf
	.4byte	0xbd
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF622
	.byte	0x3
	.byte	0x8e
	.byte	0xf
	.4byte	0xbd
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF623
	.byte	0x3
	.byte	0x8f
	.byte	0xf
	.4byte	0xbd
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF624
	.byte	0x3
	.byte	0x90
	.byte	0xf
	.4byte	0xbd
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF625
	.byte	0x3
	.byte	0x91
	.byte	0xf
	.4byte	0xbd
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF626
	.byte	0x3
	.byte	0x92
	.byte	0xf
	.4byte	0xbd
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF627
	.byte	0x3
	.byte	0x94
	.byte	0x8
	.4byte	0x80
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF628
	.byte	0x3
	.byte	0x95
	.byte	0x8
	.4byte	0x80
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF629
	.byte	0x3
	.byte	0x96
	.byte	0x8
	.4byte	0x80
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF630
	.byte	0x3
	.byte	0x97
	.byte	0x8
	.4byte	0x80
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF631
	.byte	0x3
	.byte	0x98
	.byte	0x8
	.4byte	0x80
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF632
	.byte	0x3
	.byte	0x99
	.byte	0x8
	.4byte	0x80
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF633
	.byte	0x3
	.byte	0x9a
	.byte	0x8
	.4byte	0x80
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF634
	.byte	0x3
	.byte	0x9b
	.byte	0x8
	.4byte	0x80
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF635
	.byte	0x3
	.byte	0x9c
	.byte	0x8
	.4byte	0x80
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF636
	.byte	0x3
	.byte	0x9d
	.byte	0x8
	.4byte	0x80
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF637
	.byte	0x3
	.byte	0x9e
	.byte	0x8
	.4byte	0x80
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF638
	.byte	0x3
	.byte	0x9f
	.byte	0x8
	.4byte	0x80
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF639
	.byte	0x3
	.byte	0xa0
	.byte	0x8
	.4byte	0x80
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF640
	.byte	0x3
	.byte	0xa1
	.byte	0x8
	.4byte	0x80
	.byte	0x35
	.uleb128 0x4
	.4byte	.LASF641
	.byte	0x3
	.byte	0xa6
	.byte	0xf
	.4byte	0xbd
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF642
	.byte	0x3
	.byte	0xa7
	.byte	0xf
	.4byte	0xbd
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF643
	.byte	0x3
	.byte	0xa8
	.byte	0xf
	.4byte	0xbd
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF644
	.byte	0x3
	.byte	0xa9
	.byte	0xf
	.4byte	0xbd
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF645
	.byte	0x3
	.byte	0xaa
	.byte	0xf
	.4byte	0xbd
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF646
	.byte	0x3
	.byte	0xab
	.byte	0xf
	.4byte	0xbd
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF647
	.byte	0x3
	.byte	0xac
	.byte	0xf
	.4byte	0xbd
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF648
	.byte	0x3
	.byte	0xad
	.byte	0xf
	.4byte	0xbd
	.byte	0x54
	.byte	0
	.uleb128 0xc
	.4byte	.LASF658
	.byte	0x3
	.byte	0xae
	.byte	0x3
	.4byte	0xc3
	.uleb128 0xa
	.4byte	0x26d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF649
	.uleb128 0xa
	.4byte	0x27e
	.uleb128 0xb
	.byte	0x20
	.byte	0x3
	.byte	0xc4
	.byte	0x9
	.4byte	0x2fc
	.uleb128 0x4
	.4byte	.LASF650
	.byte	0x3
	.byte	0xc6
	.byte	0x9
	.4byte	0x310
	.byte	0
	.uleb128 0x4
	.4byte	.LASF651
	.byte	0x3
	.byte	0xc7
	.byte	0x9
	.4byte	0x325
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF652
	.byte	0x3
	.byte	0xc8
	.byte	0x9
	.4byte	0x325
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF653
	.byte	0x3
	.byte	0xcb
	.byte	0x9
	.4byte	0x33f
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF654
	.byte	0x3
	.byte	0xcc
	.byte	0xa
	.4byte	0x354
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF655
	.byte	0x3
	.byte	0xcd
	.byte	0xa
	.4byte	0x354
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF656
	.byte	0x3
	.byte	0xd0
	.byte	0x9
	.4byte	0x35a
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF657
	.byte	0x3
	.byte	0xd1
	.byte	0x9
	.4byte	0x360
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x310
	.uleb128 0x8
	.4byte	0x53
	.uleb128 0x8
	.4byte	0x53
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x325
	.uleb128 0x8
	.4byte	0x53
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x316
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x33f
	.uleb128 0x8
	.4byte	0x5a
	.uleb128 0x8
	.4byte	0x53
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x32b
	.uleb128 0x7
	.4byte	0x5a
	.4byte	0x354
	.uleb128 0x8
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x345
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61
	.uleb128 0x9
	.byte	0x4
	.4byte	0x99
	.uleb128 0xc
	.4byte	.LASF659
	.byte	0x3
	.byte	0xd2
	.byte	0x3
	.4byte	0x28a
	.uleb128 0xa
	.4byte	0x366
	.uleb128 0xb
	.byte	0xc
	.byte	0x3
	.byte	0xd4
	.byte	0x9
	.4byte	0x3a8
	.uleb128 0x4
	.4byte	.LASF660
	.byte	0x3
	.byte	0xd5
	.byte	0xf
	.4byte	0xbd
	.byte	0
	.uleb128 0x4
	.4byte	.LASF661
	.byte	0x3
	.byte	0xd6
	.byte	0x25
	.4byte	0x3a8
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF662
	.byte	0x3
	.byte	0xd7
	.byte	0x28
	.4byte	0x3ae
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x279
	.uleb128 0x9
	.byte	0x4
	.4byte	0x372
	.uleb128 0xc
	.4byte	.LASF663
	.byte	0x3
	.byte	0xd8
	.byte	0x3
	.4byte	0x377
	.uleb128 0xa
	.4byte	0x3b4
	.uleb128 0x3
	.4byte	.LASF665
	.byte	0x14
	.byte	0x3
	.byte	0xdc
	.byte	0x10
	.4byte	0x3e0
	.uleb128 0x4
	.4byte	.LASF666
	.byte	0x3
	.byte	0xdd
	.byte	0x20
	.4byte	0x3e0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x3f0
	.4byte	0x3f0
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3c0
	.uleb128 0xf
	.4byte	.LASF667
	.byte	0x3
	.2byte	0x106
	.byte	0x1a
	.4byte	0x3c5
	.uleb128 0xf
	.4byte	.LASF668
	.byte	0x3
	.2byte	0x10d
	.byte	0x24
	.4byte	0x3c0
	.uleb128 0xf
	.4byte	.LASF669
	.byte	0x3
	.2byte	0x110
	.byte	0x2c
	.4byte	0x372
	.uleb128 0xf
	.4byte	.LASF670
	.byte	0x3
	.2byte	0x111
	.byte	0x2c
	.4byte	0x372
	.uleb128 0xd
	.4byte	0x285
	.4byte	0x43a
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	0x42a
	.uleb128 0xf
	.4byte	.LASF671
	.byte	0x3
	.2byte	0x113
	.byte	0x23
	.4byte	0x43a
	.uleb128 0xd
	.4byte	0x87
	.4byte	0x457
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x44c
	.uleb128 0xf
	.4byte	.LASF672
	.byte	0x3
	.2byte	0x115
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF673
	.byte	0x3
	.2byte	0x116
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF674
	.byte	0x3
	.2byte	0x117
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF675
	.byte	0x3
	.2byte	0x118
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF676
	.byte	0x3
	.2byte	0x11a
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF677
	.byte	0x3
	.2byte	0x11b
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF678
	.byte	0x3
	.2byte	0x11c
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF679
	.byte	0x3
	.2byte	0x11d
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF680
	.byte	0x3
	.2byte	0x11e
	.byte	0x13
	.4byte	0x457
	.uleb128 0xf
	.4byte	.LASF681
	.byte	0x3
	.2byte	0x11f
	.byte	0x13
	.4byte	0x457
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x4ed
	.uleb128 0x8
	.4byte	0x4ed
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x11
	.4byte	.LASF694
	.uleb128 0xa
	.4byte	0x4f3
	.uleb128 0xf
	.4byte	.LASF682
	.byte	0x3
	.2byte	0x135
	.byte	0xe
	.4byte	0x50a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4de
	.uleb128 0x7
	.4byte	0x53
	.4byte	0x51f
	.uleb128 0x8
	.4byte	0x51f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4f3
	.uleb128 0xf
	.4byte	.LASF683
	.byte	0x3
	.2byte	0x136
	.byte	0xe
	.4byte	0x532
	.uleb128 0x9
	.byte	0x4
	.4byte	0x510
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF684
	.uleb128 0x12
	.4byte	.LASF685
	.byte	0x3
	.2byte	0x14d
	.byte	0x18
	.4byte	0x54c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x552
	.uleb128 0x7
	.4byte	0xbd
	.4byte	0x561
	.uleb128 0x8
	.4byte	0x53
	.byte	0
	.uleb128 0x13
	.4byte	.LASF686
	.byte	0x8
	.byte	0x3
	.2byte	0x14f
	.byte	0x10
	.4byte	0x58c
	.uleb128 0x14
	.4byte	.LASF687
	.byte	0x3
	.2byte	0x151
	.byte	0x1c
	.4byte	0x53f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF688
	.byte	0x3
	.2byte	0x152
	.byte	0x21
	.4byte	0x58c
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x561
	.uleb128 0x12
	.4byte	.LASF689
	.byte	0x3
	.2byte	0x153
	.byte	0x3
	.4byte	0x561
	.uleb128 0xf
	.4byte	.LASF690
	.byte	0x3
	.2byte	0x157
	.byte	0x1f
	.4byte	0x5ac
	.uleb128 0x9
	.byte	0x4
	.4byte	0x592
	.uleb128 0xc
	.4byte	.LASF691
	.byte	0x4
	.byte	0x37
	.byte	0x16
	.4byte	0x8c
	.uleb128 0xa
	.4byte	0x5b2
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF692
	.uleb128 0x12
	.4byte	.LASF693
	.byte	0x5
	.2byte	0x317
	.byte	0x1b
	.4byte	0x5d7
	.uleb128 0x11
	.4byte	.LASF695
	.uleb128 0xf
	.4byte	.LASF696
	.byte	0x5
	.2byte	0x31b
	.byte	0xe
	.4byte	0x5e9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5ca
	.uleb128 0xf
	.4byte	.LASF697
	.byte	0x5
	.2byte	0x31c
	.byte	0xe
	.4byte	0x5e9
	.uleb128 0xf
	.4byte	.LASF698
	.byte	0x5
	.2byte	0x31d
	.byte	0xe
	.4byte	0x5e9
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF699
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF700
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF701
	.uleb128 0x15
	.4byte	0x629
	.uleb128 0x8
	.4byte	0xbd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF720
	.byte	0x1
	.byte	0x41
	.byte	0xf
	.4byte	0x63b
	.uleb128 0x5
	.byte	0x3
	.4byte	_chillbuff_error_callback
	.uleb128 0x9
	.byte	0x4
	.4byte	0x61e
	.uleb128 0x17
	.4byte	.LASF706
	.byte	0x7
	.byte	0x1
	.4byte	0x27e
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x66c
	.uleb128 0x18
	.4byte	.LASF702
	.byte	0
	.uleb128 0x18
	.4byte	.LASF703
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF704
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF705
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF706
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.4byte	0x641
	.uleb128 0x3
	.4byte	.LASF707
	.byte	0x14
	.byte	0x1
	.byte	0x62
	.byte	0x10
	.4byte	0x6c7
	.uleb128 0x4
	.4byte	.LASF708
	.byte	0x1
	.byte	0x67
	.byte	0xb
	.4byte	0x29
	.byte	0
	.uleb128 0x4
	.4byte	.LASF709
	.byte	0x1
	.byte	0x6c
	.byte	0xc
	.4byte	0x5b2
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF710
	.byte	0x1
	.byte	0x71
	.byte	0xc
	.4byte	0x5b2
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF711
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x5b2
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF712
	.byte	0x1
	.byte	0x7b
	.byte	0x1d
	.4byte	0x66c
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF707
	.byte	0x1
	.byte	0x7c
	.byte	0x3
	.4byte	0x678
	.uleb128 0x3
	.4byte	.LASF713
	.byte	0x14
	.byte	0x6
	.byte	0x4e
	.byte	0x8
	.4byte	0x722
	.uleb128 0x19
	.ascii	"key\000"
	.byte	0x6
	.byte	0x54
	.byte	0xb
	.4byte	0x7a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF714
	.byte	0x6
	.byte	0x5a
	.byte	0xc
	.4byte	0x5b2
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF715
	.byte	0x6
	.byte	0x5f
	.byte	0xb
	.4byte	0x7a
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF716
	.byte	0x6
	.byte	0x65
	.byte	0xc
	.4byte	0x5b2
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF717
	.byte	0x6
	.byte	0x6c
	.byte	0x9
	.4byte	0x53
	.byte	0x10
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF722
	.byte	0x2
	.byte	0x56
	.byte	0x17
	.4byte	0x792
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x792
	.uleb128 0x1b
	.4byte	.LASF718
	.byte	0x2
	.byte	0x56
	.byte	0x3f
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF719
	.byte	0x2
	.byte	0x56
	.byte	0x54
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"key\000"
	.byte	0x2
	.byte	0x56
	.byte	0x6e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF714
	.byte	0x2
	.byte	0x56
	.byte	0x80
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x16
	.4byte	.LASF721
	.byte	0x2
	.byte	0x5b
	.byte	0x20
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6d3
	.uleb128 0x1a
	.4byte	.LASF723
	.byte	0x2
	.byte	0x2b
	.byte	0x5
	.4byte	0x53
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x808
	.uleb128 0x1b
	.4byte	.LASF724
	.byte	0x2
	.byte	0x2b
	.byte	0x25
	.4byte	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF718
	.byte	0x2
	.byte	0x2b
	.byte	0x4a
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF719
	.byte	0x2
	.byte	0x2b
	.byte	0x5f
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF725
	.byte	0x2
	.byte	0x37
	.byte	0x9
	.4byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x16
	.4byte	.LASF721
	.byte	0x2
	.byte	0x38
	.byte	0x20
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6c7
	.uleb128 0x1e
	.4byte	.LASF738
	.byte	0x2
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85c
	.uleb128 0x1b
	.4byte	.LASF718
	.byte	0x2
	.byte	0x1b
	.byte	0x30
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF719
	.byte	0x2
	.byte	0x1b
	.byte	0x45
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x16
	.4byte	.LASF721
	.byte	0x2
	.byte	0x1f
	.byte	0x24
	.4byte	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF739
	.byte	0x1
	.byte	0xfd
	.byte	0xc
	.4byte	0x53
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f5
	.uleb128 0x1b
	.4byte	.LASF726
	.byte	0x1
	.byte	0xfd
	.byte	0x2b
	.4byte	0x808
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF727
	.byte	0x1
	.byte	0xfd
	.byte	0x3d
	.4byte	0x8f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF728
	.byte	0x1
	.byte	0xfd
	.byte	0x54
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LASF740
	.4byte	0x90c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__.5687
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x111
	.byte	0x11
	.4byte	0x5b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x22
	.4byte	.LASF729
	.byte	0x1
	.2byte	0x115
	.byte	0x14
	.4byte	0x5b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF730
	.byte	0x1
	.2byte	0x130
	.byte	0x13
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8fb
	.uleb128 0x23
	.uleb128 0xd
	.4byte	0x87
	.4byte	0x90c
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.4byte	0x8fc
	.uleb128 0x24
	.4byte	.LASF741
	.byte	0x1
	.byte	0x7f
	.byte	0x14
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF731
	.byte	0x1
	.byte	0x7f
	.byte	0x34
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF732
	.byte	0x1
	.byte	0x7f
	.byte	0x47
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF733
	.byte	0x1
	.byte	0x81
	.byte	0x12
	.4byte	0x5be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.4byte	.LASF734
	.byte	0x1
	.byte	0x82
	.byte	0xb
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x11b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x961
	.4byte	0x629
	.ascii	"_chillbuff_error_callback\000"
	.4byte	0x653
	.ascii	"CHILLBUFF_GROW_DUPLICATIVE\000"
	.4byte	0x659
	.ascii	"CHILLBUFF_GROW_TRIPLICATIVE\000"
	.4byte	0x65f
	.ascii	"CHILLBUFF_GROW_LINEAR\000"
	.4byte	0x665
	.ascii	"CHILLBUFF_GROW_EXPONENTIAL\000"
	.4byte	0x722
	.ascii	"l8w8jwt_get_claim\000"
	.4byte	0x798
	.ascii	"l8w8jwt_write_claims\000"
	.4byte	0x80e
	.ascii	"l8w8jwt_free_claims\000"
	.4byte	0x85c
	.ascii	"chillbuff_push_back\000"
	.4byte	0x911
	.ascii	"_chillbuff_printerr\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1e1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x961
	.4byte	0x53
	.ascii	"int\000"
	.4byte	0x5a
	.ascii	"long int\000"
	.4byte	0x2b
	.ascii	"__mbstate_s\000"
	.4byte	0x80
	.ascii	"char\000"
	.4byte	0x8c
	.ascii	"unsigned int\000"
	.4byte	0x26d
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x27e
	.ascii	"unsigned char\000"
	.4byte	0x366
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x3b4
	.ascii	"__RAL_locale_t\000"
	.4byte	0x3c5
	.ascii	"__locale_s\000"
	.4byte	0x538
	.ascii	"short unsigned int\000"
	.4byte	0x53f
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x561
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x592
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x5b2
	.ascii	"size_t\000"
	.4byte	0x5c3
	.ascii	"long long int\000"
	.4byte	0x5ca
	.ascii	"FILE\000"
	.4byte	0x609
	.ascii	"signed char\000"
	.4byte	0x610
	.ascii	"short int\000"
	.4byte	0x617
	.ascii	"long long unsigned int\000"
	.4byte	0x641
	.ascii	"chillbuff_growth_method\000"
	.4byte	0x66c
	.ascii	"chillbuff_growth_method\000"
	.4byte	0x678
	.ascii	"chillbuff\000"
	.4byte	0x6c7
	.ascii	"chillbuff\000"
	.4byte	0x6d3
	.ascii	"l8w8jwt_claim\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF467
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF468
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF497
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stdint.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/string.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF574
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 9 "../../../../../../components/libraries/l8w8jwt/include/l8w8jwt/retcodes.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 10 "../../../../../../external/mbedtls/include/mbedtls/md.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF602
	.file 11 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.20/include/stddef.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.6e1e39be18b5a90468bb1928ca0a6329,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x6
	.uleb128 0
	.4byte	.LASF403
	.byte	0x6
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x6
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x6
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x6
	.uleb128 0
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0
	.4byte	.LASF466
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.45.c15bb6e0a60630589d552427ceaabe49,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF470
	.byte	0x6
	.uleb128 0x43
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF489
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.54.34e6c3eb1c7772d5405254538c14b58d,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF496
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdio.h.45.15a76ce3d80dea25435f233c0919057b,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x302
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x308
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x30a
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x30c
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x30d
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x310
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x313
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x316
	.4byte	.LASF513
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.45.370e29a4497ae7c3b4c92e383ca5b648,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF573
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.chillbuff.h.42.5fcd0b29b17d9a4c7af6bdff532e1323,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF579
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.claim.h.36.a2d745e35ea3fa08971f8830890e8f30,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF587
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.retcodes.h.24.6815d5b2c2892d84854662253511603c,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF601
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.45.1e5da5eb151c04b3a446ae16d9fd1145,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF604
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.md.h.30.230e3c2db488b29ba2e548ed9e0273d7,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF610
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF611
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF430:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF219:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF247:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF464:
	.ascii	"SWI_DISABLE0 1\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF210:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF511:
	.ascii	"_IOLBF 1\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF592:
	.ascii	"L8W8JWT_OUT_OF_MEM 300\000"
.LASF418:
	.ascii	"__thumb2__ 1\000"
.LASF224:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF728:
	.ascii	"elements_count\000"
.LASF585:
	.ascii	"L8W8JWT_CLAIM_TYPE_ARRAY 5\000"
.LASF738:
	.ascii	"l8w8jwt_free_claims\000"
.LASF457:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF498:
	.ascii	"__stdio_h \000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF451:
	.ascii	"__SES_VERSION 42000\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF433:
	.ascii	"__ARM_NEON__\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF698:
	.ascii	"stderr\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF710:
	.ascii	"capacity\000"
.LASF702:
	.ascii	"CHILLBUFF_GROW_DUPLICATIVE\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF226:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF410:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF426:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF645:
	.ascii	"am_pm_indicator\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF437:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF499:
	.ascii	"EOF (-1)\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF576:
	.ascii	"CHILLBUFF_OUT_OF_MEM 100\000"
.LASF570:
	.ascii	"WCHAR_MIN (-2147483647L-1)\000"
.LASF442:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF540:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF616:
	.ascii	"unsigned int\000"
.LASF688:
	.ascii	"next\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF562:
	.ascii	"INT16_C(x) (x)\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF455:
	.ascii	"BOARD_PCA10056 1\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF644:
	.ascii	"abbrev_month_names\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF5:
	.ascii	"__GNUC__ 8\000"
.LASF251:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF505:
	.ascii	"FILENAME_MAX 256\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF229:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF510:
	.ascii	"_IOFBF 0\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF375:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF674:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF228:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF538:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF459:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF722:
	.ascii	"l8w8jwt_get_claim\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF700:
	.ascii	"short int\000"
.LASF482:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF734:
	.ascii	"error_msg\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF402:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF622:
	.ascii	"mon_decimal_point\000"
.LASF727:
	.ascii	"elements\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF390:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF731:
	.ascii	"error\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF240:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF675:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF542:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF415:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF460:
	.ascii	"NRF52840_XXAA 1\000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF254:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF591:
	.ascii	"L8W8JWT_INVALID_ARG 200\000"
.LASF207:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF536:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF741:
	.ascii	"_chillbuff_printerr\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF333:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF425:
	.ascii	"__ARM_FP 4\000"
.LASF632:
	.ascii	"n_sep_by_space\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF422:
	.ascii	"__ARMEL__ 1\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF548:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF550:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF205:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF699:
	.ascii	"signed char\000"
.LASF230:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF552:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF713:
	.ascii	"l8w8jwt_claim\000"
.LASF588:
	.ascii	"L8W8JWT_RETCODES_H \000"
.LASF427:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF529:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF401:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF653:
	.ascii	"__iswctype\000"
.LASF416:
	.ascii	"__APCS_32__ 1\000"
.LASF630:
	.ascii	"p_sep_by_space\000"
.LASF403:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF697:
	.ascii	"stdout\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF471:
	.ascii	"__RAL_SIZE_T\000"
.LASF716:
	.ascii	"value_length\000"
.LASF470:
	.ascii	"__THREAD __thread\000"
.LASF658:
	.ascii	"__RAL_locale_data_t\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF604:
	.ascii	"offsetof(s,m) ((size_t)&(((s *)0)->m))\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF737:
	.ascii	"C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF5284"
	.ascii	"0-fw\\nRF5_SDK_15.3.0_59ac345\\examples\\ble_centra"
	.ascii	"l_timer test\\ble_app_multilink_central\\pca10056\\"
	.ascii	"s140\\ses\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF409:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF237:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF721:
	.ascii	"claim\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF599:
	.ascii	"L8W8JWT_MBEDTLS_CTR_DRBG_SEED_FAILURE 500\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF680:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF506:
	.ascii	"FOPEN_MAX 8\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF723:
	.ascii	"l8w8jwt_write_claims\000"
.LASF677:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF8:
	.ascii	"__VERSION__ \"8.3.1 20190703 (release) [gcc-8-branc"
	.ascii	"h revision 273027]\"\000"
.LASF701:
	.ascii	"long long unsigned int\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF514:
	.ascii	"__stdint_H \000"
.LASF610:
	.ascii	"MBEDTLS_DEPRECATED \000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF654:
	.ascii	"__towupper\000"
.LASF569:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF607:
	.ascii	"MBEDTLS_ERR_MD_ALLOC_FAILED -0x5180\000"
.LASF407:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF682:
	.ascii	"__user_set_time_of_day\000"
.LASF729:
	.ascii	"new_capacity\000"
.LASF640:
	.ascii	"int_n_sign_posn\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF733:
	.ascii	"error_length\000"
.LASF690:
	.ascii	"__RAL_error_decoder_head\000"
.LASF707:
	.ascii	"chillbuff\000"
.LASF627:
	.ascii	"int_frac_digits\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF601:
	.ascii	"L8W8JWT_DECODE_FAILED_MISSING_SIGNATURE 700\000"
.LASF218:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF449:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF429:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF246:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF476:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF704:
	.ascii	"CHILLBUFF_GROW_LINEAR\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF412:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF245:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF522:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF715:
	.ascii	"value\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF739:
	.ascii	"chillbuff_push_back\000"
.LASF211:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF393:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF694:
	.ascii	"timeval\000"
.LASF519:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF613:
	.ascii	"__wchar\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF726:
	.ascii	"buff\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF440:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF568:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF714:
	.ascii	"key_length\000"
.LASF486:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF633:
	.ascii	"p_sign_posn\000"
.LASF637:
	.ascii	"int_p_sep_by_space\000"
.LASF656:
	.ascii	"__wctomb\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF236:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF512:
	.ascii	"_IONBF 2\000"
.LASF691:
	.ascii	"size_t\000"
.LASF635:
	.ascii	"int_p_cs_precedes\000"
.LASF608:
	.ascii	"MBEDTLS_ERR_MD_FILE_IO_ERROR -0x5200\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF581:
	.ascii	"L8W8JWT_CLAIM_TYPE_INTEGER 1\000"
.LASF419:
	.ascii	"__THUMBEL__ 1\000"
.LASF711:
	.ascii	"element_size\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF695:
	.ascii	"__RAL_FILE\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF463:
	.ascii	"SOFTDEVICE_PRESENT 1\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF547:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF696:
	.ascii	"stdin\000"
.LASF209:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF703:
	.ascii	"CHILLBUFF_GROW_TRIPLICATIVE\000"
.LASF495:
	.ascii	"RAND_MAX 32767\000"
.LASF647:
	.ascii	"time_format\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF666:
	.ascii	"__category\000"
.LASF587:
	.ascii	"L8W8JWT_CLAIM_TYPE_OTHER 7\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF477:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF456:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF636:
	.ascii	"int_n_cs_precedes\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF732:
	.ascii	"origin\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF563:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF406:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF483:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF639:
	.ascii	"int_p_sign_posn\000"
.LASF626:
	.ascii	"negative_sign\000"
.LASF551:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF605:
	.ascii	"MBEDTLS_ERR_MD_FEATURE_UNAVAILABLE -0x5080\000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF443:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF374:
	.ascii	"__NO_INLINE__ 1\000"
.LASF249:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF603:
	.ascii	"__stddef_H \000"
.LASF414:
	.ascii	"__ARM_ARCH\000"
.LASF619:
	.ascii	"grouping\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF549:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF496:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
.LASF618:
	.ascii	"thousands_sep\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF584:
	.ascii	"L8W8JWT_CLAIM_TYPE_NULL 4\000"
.LASF479:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF615:
	.ascii	"char\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF436:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF541:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF217:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF663:
	.ascii	"__RAL_locale_t\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF575:
	.ascii	"CHILLBUFF_SUCCESS 0\000"
.LASF231:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF681:
	.ascii	"__RAL_data_empty_string\000"
.LASF439:
	.ascii	"__ARM_EABI__ 1\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF216:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF242:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF611:
	.ascii	"MBEDTLS_DEPRECATED\000"
.LASF579:
	.ascii	"CHILLBUFF_OVERFLOW 400\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF655:
	.ascii	"__towlower\000"
.LASF589:
	.ascii	"L8W8JWT_SUCCESS 0\000"
.LASF661:
	.ascii	"data\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF515:
	.ascii	"UINT8_MAX 255\000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF473:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF555:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF238:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF448:
	.ascii	"__SES_ARM 1\000"
.LASF572:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF452:
	.ascii	"__GNU_LINKER 1\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF420:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF502:
	.ascii	"SEEK_SET 0\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF643:
	.ascii	"month_names\000"
.LASF221:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF578:
	.ascii	"CHILLBUFF_INVALID_ARG 300\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF220:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF421:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF692:
	.ascii	"long long int\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF478:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF509:
	.ascii	"BUFSIZ 256\000"
.LASF424:
	.ascii	"__ARM_FP\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF488:
	.ascii	"__RAL_WCHAR_T unsigned\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF413:
	.ascii	"__arm__ 1\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF531:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF624:
	.ascii	"mon_grouping\000"
.LASF597:
	.ascii	"L8W8JWT_BASE64_FAILURE 425\000"
.LASF719:
	.ascii	"claims_count\000"
.LASF411:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF398:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF239:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF724:
	.ascii	"stringbuilder\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF590:
	.ascii	"L8W8JWT_NULL_ARG 100\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF434:
	.ascii	"__ARM_NEON\000"
.LASF444:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF484:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF642:
	.ascii	"abbrev_day_names\000"
.LASF620:
	.ascii	"int_curr_symbol\000"
.LASF582:
	.ascii	"L8W8JWT_CLAIM_TYPE_NUMBER 2\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF565:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF595:
	.ascii	"L8W8JWT_SHA2_FAILURE 410\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF553:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF685:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF445:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF571:
	.ascii	"WCHAR_MAX 2147483647L\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF641:
	.ascii	"day_names\000"
.LASF250:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF435:
	.ascii	"__ARM_NEON_FP\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF468:
	.ascii	"__stdlib_H \000"
.LASF735:
	.ascii	"GNU C99 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -fmessage-length=0 -mcpu=cortex-m4 -ml"
	.ascii	"ittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mt"
	.ascii	"humb -mtp=soft -munaligned-access -std=gnu99 -g3 -g"
	.ascii	"pubnames -fomit-frame-pointer -fno-dwarf2-cfi-asm -"
	.ascii	"fno-builtin -ffunction-sections -fdata-sections -fs"
	.ascii	"hort-enums -fno-common\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF606:
	.ascii	"MBEDTLS_ERR_MD_BAD_INPUT_DATA -0x5100\000"
.LASF523:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF517:
	.ascii	"INT8_MIN (-128)\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF671:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF573:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF712:
	.ascii	"growth_method\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF234:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF487:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF648:
	.ascii	"date_time_format\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF567:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF657:
	.ascii	"__mbtowc\000"
.LASF708:
	.ascii	"array\000"
.LASF664:
	.ascii	"__mbstate_s\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF526:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF669:
	.ascii	"__RAL_codeset_ascii\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF474:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF405:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF481:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF428:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF596:
	.ascii	"L8W8JWT_KEY_PARSE_FAILURE 420\000"
.LASF659:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF577:
	.ascii	"CHILLBUFF_NULL_ARG 200\000"
.LASF651:
	.ascii	"__toupper\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF253:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF560:
	.ascii	"INT8_C(x) (x)\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF718:
	.ascii	"claims\000"
.LASF545:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF667:
	.ascii	"__RAL_global_locale\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF687:
	.ascii	"decode\000"
.LASF243:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF706:
	.ascii	"chillbuff_growth_method\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF223:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF586:
	.ascii	"L8W8JWT_CLAIM_TYPE_OBJECT 6\000"
.LASF614:
	.ascii	"long int\000"
.LASF441:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF527:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF628:
	.ascii	"frac_digits\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF709:
	.ascii	"length\000"
.LASF557:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF686:
	.ascii	"__RAL_error_decoder_s\000"
.LASF222:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF516:
	.ascii	"INT8_MAX 127\000"
.LASF475:
	.ascii	"__CODE \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF566:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF503:
	.ascii	"SEEK_CUR 1\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF574:
	.ascii	"__string_H \000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF508:
	.ascii	"L_tmpnam 256\000"
.LASF593:
	.ascii	"L8W8JWT_OVERFLOW 310\000"
.LASF600:
	.ascii	"L8W8JWT_DECODE_FAILED_INVALID_TOKEN_FORMAT 600\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF638:
	.ascii	"int_n_sep_by_space\000"
.LASF493:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF525:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF554:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF213:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF736:
	.ascii	"C:\\Users\\zeste\\Desktop\\CEEDUP\\develop\\nRF5284"
	.ascii	"0-fw\\nRF5_SDK_15.3.0_59ac345\\components\\librarie"
	.ascii	"s\\l8w8jwt\\src\\claim.c\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF497:
	.ascii	"CHILLBUFF_H \000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF518:
	.ascii	"UINT16_MAX 65535\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF524:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF625:
	.ascii	"positive_sign\000"
.LASF490:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF660:
	.ascii	"name\000"
.LASF227:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF676:
	.ascii	"__RAL_data_utf8_period\000"
.LASF408:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF423:
	.ascii	"__VFP_FP__ 1\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF532:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF609:
	.ascii	"MBEDTLS_MD_MAX_SIZE 32\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF504:
	.ascii	"SEEK_END 2\000"
.LASF730:
	.ascii	"new_array\000"
.LASF559:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF673:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF705:
	.ascii	"CHILLBUFF_GROW_EXPONENTIAL\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF583:
	.ascii	"L8W8JWT_CLAIM_TYPE_BOOLEAN 3\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF453:
	.ascii	"NDEBUG 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF491:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF580:
	.ascii	"L8W8JWT_CLAIM_TYPE_STRING 0\000"
.LASF447:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF461:
	.ascii	"NRF_SD_BLE_API_VERSION 6\000"
.LASF458:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF623:
	.ascii	"mon_thousands_sep\000"
.LASF520:
	.ascii	"INT16_MAX 32767\000"
.LASF539:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF530:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF378:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF717:
	.ascii	"type\000"
.LASF678:
	.ascii	"__RAL_data_utf8_space\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF649:
	.ascii	"unsigned char\000"
.LASF235:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF472:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF672:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF668:
	.ascii	"__RAL_c_locale\000"
.LASF521:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF438:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF467:
	.ascii	"L8W8JWT_CLAIM_H \000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF494:
	.ascii	"EXIT_FAILURE 1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF469:
	.ascii	"__crossworks_H \000"
.LASF248:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF544:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF725:
	.ascii	"first\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF492:
	.ascii	"NULL 0\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF462:
	.ascii	"S140 1\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF561:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF513:
	.ascii	"__RAL_FILE_DEFINED \000"
.LASF650:
	.ascii	"__isctype\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF485:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF598:
	.ascii	"L8W8JWT_WRONG_KEY_TYPE 450\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF621:
	.ascii	"currency_symbol\000"
.LASF564:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF208:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF720:
	.ascii	"_chillbuff_error_callback\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF533:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF535:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF617:
	.ascii	"decimal_point\000"
.LASF670:
	.ascii	"__RAL_codeset_utf8\000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF215:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF546:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF500:
	.ascii	"__PRINTF_TAG_PTR_DEFINED \000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF528:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF233:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF679:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF465:
	.ascii	"OV2640_MINI_2MP 1\000"
.LASF684:
	.ascii	"short unsigned int\000"
.LASF594:
	.ascii	"L8W8JWT_SIGNATURE_CREATION_FAILURE 400\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF232:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF534:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF212:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF631:
	.ascii	"n_cs_precedes\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF740:
	.ascii	"__func__\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF480:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF417:
	.ascii	"__thumb__ 1\000"
.LASF252:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF446:
	.ascii	"__ELF__ 1\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF683:
	.ascii	"__user_get_time_of_day\000"
.LASF501:
	.ascii	"putchar(x) __putchar(x, 0)\000"
.LASF634:
	.ascii	"n_sign_posn\000"
.LASF454:
	.ascii	"ARM_MATH_CM4 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF225:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF662:
	.ascii	"codeset\000"
.LASF466:
	.ascii	"MBEDTLS_CONFIG_FILE \"nrf_crypto_mbedtls_config.h\""
	.ascii	"\000"
.LASF450:
	.ascii	"__HEAP_SIZE__ 0\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF693:
	.ascii	"FILE\000"
.LASF612:
	.ascii	"__state\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF507:
	.ascii	"TMP_MAX 256\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF558:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF646:
	.ascii	"date_format\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF244:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF537:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF665:
	.ascii	"__locale_s\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF489:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF556:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF214:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF629:
	.ascii	"p_cs_precedes\000"
.LASF689:
	.ascii	"__RAL_error_decoder_t\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF602:
	.ascii	"MBEDTLS_MD_H \000"
.LASF404:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF543:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF206:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF241:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF652:
	.ascii	"__tolower\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
