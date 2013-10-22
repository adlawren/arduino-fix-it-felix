	.file	"wiring.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r26
	push r27
/* prologue: Signal */
/* frame size = 0 */
	lds r24,timer0_millis
	lds r25,(timer0_millis)+1
	lds r26,(timer0_millis)+2
	lds r27,(timer0_millis)+3
	lds r19,timer0_fract
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	mov r18,r19
	subi r18,lo8(-(3))
	cpi r18,lo8(125)
	brlo .L2
	subi r18,lo8(-(-125))
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L2:
	sts timer0_fract,r18
	sts timer0_millis,r24
	sts (timer0_millis)+1,r25
	sts (timer0_millis)+2,r26
	sts (timer0_millis)+3,r27
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts timer0_overflow_count,r24
	sts (timer0_overflow_count)+1,r25
	sts (timer0_overflow_count)+2,r26
	sts (timer0_overflow_count)+3,r27
/* epilogue start */
	pop r27
	pop r26
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_23, .-__vector_23
	.section	.text.millis,"ax",@progbits
.global	millis
	.type	millis, @function
millis:
/* prologue: function */
/* frame size = 0 */
	in r24,__SREG__
/* #APP */
 ;  74 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,timer0_millis
	lds r19,(timer0_millis)+1
	lds r20,(timer0_millis)+2
	lds r21,(timer0_millis)+3
	out __SREG__,r24
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	millis, .-millis
	.section	.text.micros,"ax",@progbits
.global	micros
	.type	micros, @function
micros:
/* prologue: function */
/* frame size = 0 */
	in r25,__SREG__
/* #APP */
 ;  85 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r18,timer0_overflow_count
	lds r19,(timer0_overflow_count)+1
	lds r20,(timer0_overflow_count)+2
	lds r21,(timer0_overflow_count)+3
	in r24,70-32
	sbis 53-32,0
	rjmp .L7
	cpi r24,lo8(-1)
	breq .L7
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sbci r20,hlo8(-(1))
	sbci r21,hhi8(-(1))
.L7:
	out __SREG__,r25
	mov r21,r20
	mov r20,r19
	mov r19,r18
	clr r18
	add r18,r24
	adc r19,__zero_reg__
	adc r20,__zero_reg__
	adc r21,__zero_reg__
	ldi r24,2
1:	lsl r18
	rol r19
	rol r20
	rol r21
	dec r24
	brne 1b
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	micros, .-micros
	.section	.text.delay,"ax",@progbits
.global	delay
	.type	delay, @function
delay:
/* prologue: function */
/* frame size = 0 */
	movw r18,r22
	movw r20,r24
	in r23,__SREG__
/* #APP */
 ;  85 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	in r22,70-32
	sbis 53-32,0
	rjmp .L10
	cpi r22,lo8(-1)
	breq .L10
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L10:
	out __SREG__,r23
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r22
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	ldi r22,2
1:	lsl r24
	rol r25
	rol r26
	rol r27
	dec r22
	brne 1b
	movw r22,r24
	rjmp .L11
.L15:
	in r31,__SREG__
/* #APP */
 ;  85 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,timer0_overflow_count
	lds r25,(timer0_overflow_count)+1
	lds r26,(timer0_overflow_count)+2
	lds r27,(timer0_overflow_count)+3
	in r30,70-32
	sbis 53-32,0
	rjmp .L12
	cpi r30,lo8(-1)
	breq .L12
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L12:
	out __SREG__,r31
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
	add r24,r30
	adc r25,__zero_reg__
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	ldi r30,2
1:	lsl r24
	rol r25
	rol r26
	rol r27
	dec r30
	brne 1b
	sub r24,r22
	sbc r25,r23
	subi r24,lo8(1000)
	sbci r25,hi8(1000)
	brlo .L15
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbci r20,hlo8(-(-1))
	sbci r21,hhi8(-(-1))
	subi r22,lo8(-(1000))
	sbci r23,hi8(-(1000))
.L11:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L15
/* epilogue start */
	ret
	.size	delay, .-delay
	.section	.text.delayMicroseconds,"ax",@progbits
.global	delayMicroseconds
	.type	delayMicroseconds, @function
delayMicroseconds:
/* prologue: function */
/* frame size = 0 */
	sbiw r24,1
	breq .L19
	lsl r24
	rol r25
	lsl r24
	rol r25
	sbiw r24,2
/* #APP */
 ;  183 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.L19:
	ret
	.size	delayMicroseconds, .-delayMicroseconds
	.section	.text.init,"ax",@progbits
.global	init
	.type	init, @function
init:
/* prologue: function */
/* frame size = 0 */
/* #APP */
 ;  193 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	in r24,68-32
	ori r24,lo8(2)
	out 68-32,r24
	in r24,68-32
	ori r24,lo8(1)
	out 68-32,r24
	in r24,69-32
	ori r24,lo8(2)
	out 69-32,r24
	in r24,69-32
	ori r24,lo8(1)
	out 69-32,r24
	ldi r30,lo8(110)
	ldi r31,hi8(110)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(129)
	ldi r31,hi8(129)
	st Z,__zero_reg__
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(128)
	ldi r31,hi8(128)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(177)
	ldi r31,hi8(177)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ldi r30,lo8(176)
	ldi r31,hi8(176)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(145)
	ldi r31,hi8(145)
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(144)
	ldi r31,hi8(144)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(161)
	ldi r31,hi8(161)
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(160)
	ldi r31,hi8(160)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(289)
	ldi r31,hi8(289)
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(288)
	ldi r31,hi8(288)
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(122)
	ldi r31,hi8(122)
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	sts 193,__zero_reg__
/* epilogue start */
	ret
	.size	init, .-init
.global	timer0_overflow_count
	.section	.bss.timer0_overflow_count,"aw",@nobits
	.type	timer0_overflow_count, @object
	.size	timer0_overflow_count, 4
timer0_overflow_count:
	.skip 4,0
.global	timer0_millis
	.section	.bss.timer0_millis,"aw",@nobits
	.type	timer0_millis, @object
	.size	timer0_millis, 4
timer0_millis:
	.skip 4,0
	.section	.bss.timer0_fract,"aw",@nobits
	.type	timer0_fract, @object
	.size	timer0_fract, 1
timer0_fract:
	.skip 1,0
