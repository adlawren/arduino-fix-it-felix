	.file	"WInterrupts.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.attachInterrupt,"ax",@progbits
.global	attachInterrupt
	.type	attachInterrupt, @function
attachInterrupt:
/* prologue: function */
/* frame size = 0 */
	cpi r24,lo8(8)
	brlo .+2
	rjmp .L12
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,r23
	st Z,r22
	cpi r24,lo8(3)
	breq .L6
	cpi r24,lo8(4)
	brsh .L11
	cpi r24,lo8(1)
	brne .+2
	rjmp .L4
	cpi r24,lo8(2)
	brsh .L5
	rjmp .L14
.L11:
	cpi r24,lo8(5)
	breq .L8
	cpi r24,lo8(5)
	brlo .L7
	cpi r24,lo8(6)
	brne .+2
	rjmp .L9
	cpi r24,lo8(7)
	breq .+2
	rjmp .L12
	rjmp .L15
.L5:
	lds r24,105
	andi r24,lo8(-4)
	or r24,r20
	sts 105,r24
	sbi 61-32,0
	ret
.L6:
	lds r24,105
	lsl r20
	rol r21
	lsl r20
	rol r21
	andi r24,lo8(-13)
	or r24,r20
	sts 105,r24
	sbi 61-32,1
	ret
.L7:
	lds r24,105
	ldi r23,4
1:	lsl r20
	rol r21
	dec r23
	brne 1b
	andi r24,lo8(-49)
	or r24,r20
	sts 105,r24
	sbi 61-32,2
	ret
.L8:
	lds r24,105
	ldi r22,6
1:	lsl r20
	rol r21
	dec r22
	brne 1b
	andi r24,lo8(63)
	or r24,r20
	sts 105,r24
	sbi 61-32,3
	ret
.L14:
	lds r24,106
	andi r24,lo8(-4)
	or r24,r20
	sts 106,r24
	sbi 61-32,4
	ret
.L4:
	lds r24,106
	lsl r20
	rol r21
	lsl r20
	rol r21
	andi r24,lo8(-13)
	or r24,r20
	sts 106,r24
	sbi 61-32,5
	ret
.L9:
	lds r24,106
	ldi r18,4
1:	lsl r20
	rol r21
	dec r18
	brne 1b
	andi r24,lo8(-49)
	or r24,r20
	sts 106,r24
	sbi 61-32,6
	ret
.L15:
	lds r24,106
	ldi r25,6
1:	lsl r20
	rol r21
	dec r25
	brne 1b
	andi r24,lo8(63)
	or r24,r20
	sts 106,r24
	sbi 61-32,7
.L12:
	ret
	.size	attachInterrupt, .-attachInterrupt
	.section	.text.detachInterrupt,"ax",@progbits
.global	detachInterrupt
	.type	detachInterrupt, @function
detachInterrupt:
/* prologue: function */
/* frame size = 0 */
	cpi r24,lo8(8)
	brsh .L28
	cpi r24,lo8(3)
	breq .L22
	cpi r24,lo8(4)
	brsh .L27
	cpi r24,lo8(1)
	breq .L20
	cpi r24,lo8(2)
	brsh .L21
	rjmp .L30
.L27:
	cpi r24,lo8(5)
	breq .L24
	cpi r24,lo8(5)
	brlo .L23
	cpi r24,lo8(6)
	breq .L25
	cpi r24,lo8(7)
	brne .L18
	rjmp .L31
.L21:
	cbi 61-32,0
	rjmp .L18
.L22:
	cbi 61-32,1
	rjmp .L18
.L23:
	cbi 61-32,2
	rjmp .L18
.L24:
	cbi 61-32,3
	rjmp .L18
.L30:
	cbi 61-32,4
	rjmp .L18
.L20:
	cbi 61-32,5
	rjmp .L18
.L25:
	cbi 61-32,6
	rjmp .L18
.L31:
	cbi 61-32,7
.L18:
	mov r30,r24
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L28:
	ret
	.size	detachInterrupt, .-detachInterrupt
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+4
	lds r25,(intFunc+4)+1
	or r24,r25
	breq .L34
	lds r30,intFunc+4
	lds r31,(intFunc+4)+1
	eicall
.L34:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+6
	lds r25,(intFunc+6)+1
	or r24,r25
	breq .L37
	lds r30,intFunc+6
	lds r31,(intFunc+6)+1
	eicall
.L37:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_2, .-__vector_2
	.section	.text.__vector_3,"ax",@progbits
.global	__vector_3
	.type	__vector_3, @function
__vector_3:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+8
	lds r25,(intFunc+8)+1
	or r24,r25
	breq .L40
	lds r30,intFunc+8
	lds r31,(intFunc+8)+1
	eicall
.L40:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_3, .-__vector_3
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+10
	lds r25,(intFunc+10)+1
	or r24,r25
	breq .L43
	lds r30,intFunc+10
	lds r31,(intFunc+10)+1
	eicall
.L43:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_4, .-__vector_4
	.section	.text.__vector_5,"ax",@progbits
.global	__vector_5
	.type	__vector_5, @function
__vector_5:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc
	lds r25,(intFunc)+1
	or r24,r25
	breq .L46
	lds r30,intFunc
	lds r31,(intFunc)+1
	eicall
.L46:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_5, .-__vector_5
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+2
	lds r25,(intFunc+2)+1
	or r24,r25
	breq .L49
	lds r30,intFunc+2
	lds r31,(intFunc+2)+1
	eicall
.L49:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_6, .-__vector_6
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+12
	lds r25,(intFunc+12)+1
	or r24,r25
	breq .L52
	lds r30,intFunc+12
	lds r31,(intFunc+12)+1
	eicall
.L52:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_7, .-__vector_7
	.section	.text.__vector_8,"ax",@progbits
.global	__vector_8
	.type	__vector_8, @function
__vector_8:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r24,intFunc+14
	lds r25,(intFunc+14)+1
	or r24,r25
	breq .L55
	lds r30,intFunc+14
	lds r31,(intFunc+14)+1
	eicall
.L55:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_8, .-__vector_8
	.section	.bss.intFunc,"aw",@nobits
	.type	intFunc, @object
	.size	intFunc, 16
intFunc:
	.skip 16,0
