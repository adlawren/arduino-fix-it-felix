	.file	"wiring_digital.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.pinMode,"ax",@progbits
.global	pinMode
	.type	pinMode, @function
pinMode:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r20,r24
	ldi r21,lo8(0)
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  33 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r19, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r20,lo8(-(digital_pin_to_port_PGM))
	sbci r21,hi8(-(digital_pin_to_port_PGM))
	movw r30,r20
/* #APP */
 ;  34 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L5
	ldi r25,lo8(0)
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
/* #APP */
 ;  40 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  41 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	brne .L3
	in r18,__SREG__
/* #APP */
 ;  45 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	mov r25,r19
	com r25
	and r24,r25
	st X,r24
	ld r24,Y
	and r24,r25
	rjmp .L6
.L3:
	cpi r22,lo8(2)
	brne .L4
	in r18,__SREG__
/* #APP */
 ;  51 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	mov r25,r19
	com r25
	and r24,r25
	st X,r24
	ld r24,Y
	or r24,r19
.L6:
	st Y,r24
	out __SREG__,r18
	rjmp .L5
.L4:
	in r25,__SREG__
/* #APP */
 ;  57 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	or r24,r19
	st X,r24
	out __SREG__,r25
.L5:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	pinMode, .-pinMode
	.section	.text.turnOffPWM,"ax",@progbits
	.type	turnOffPWM, @function
turnOffPWM:
/* prologue: function */
/* frame size = 0 */
	cpi r24,lo8(9)
	brne .+2
	rjmp .L16
	cpi r24,lo8(10)
	brsh .L24
	cpi r24,lo8(4)
	breq .L12
	cpi r24,lo8(5)
	brsh .L25
	cpi r24,lo8(2)
	breq .L10
	cpi r24,lo8(3)
	brsh .L11
	cpi r24,lo8(1)
	breq .+2
	rjmp .L27
	rjmp .L35
.L25:
	cpi r24,lo8(7)
	breq .L14
	cpi r24,lo8(8)
	brsh .L15
	cpi r24,lo8(6)
	breq .+2
	rjmp .L27
	rjmp .L36
.L24:
	cpi r24,lo8(13)
	brne .+2
	rjmp .L20
	cpi r24,lo8(14)
	brsh .L26
	cpi r24,lo8(11)
	breq .L18
	cpi r24,lo8(12)
	brsh .L19
	rjmp .L37
.L26:
	cpi r24,lo8(16)
	brne .+2
	rjmp .L22
	cpi r24,lo8(17)
	brne .+2
	rjmp .L23
	cpi r24,lo8(15)
	breq .+2
	rjmp .L27
	rjmp .L38
.L11:
	lds r24,128
	andi r24,lo8(127)
	rjmp .L30
.L12:
	lds r24,128
	andi r24,lo8(-33)
.L30:
	sts 128,r24
	ret
.L35:
	in r24,68-32
	andi r24,lo8(127)
	rjmp .L32
.L10:
	in r24,68-32
	andi r24,lo8(-33)
.L32:
	out 68-32,r24
	ret
.L36:
	lds r24,176
	andi r24,lo8(127)
	rjmp .L33
.L14:
	lds r24,176
	andi r24,lo8(-33)
.L33:
	sts 176,r24
	ret
.L15:
	lds r24,144
	andi r24,lo8(127)
	rjmp .L34
.L16:
	lds r24,144
	andi r24,lo8(-33)
	rjmp .L34
.L37:
	lds r24,144
	andi r24,lo8(-9)
.L34:
	sts 144,r24
	ret
.L18:
	lds r24,160
	andi r24,lo8(127)
	rjmp .L31
.L19:
	lds r24,160
	andi r24,lo8(-33)
	rjmp .L31
.L20:
	lds r24,160
	andi r24,lo8(-9)
.L31:
	sts 160,r24
	ret
.L38:
	lds r24,288
	andi r24,lo8(127)
	rjmp .L29
.L22:
	lds r24,288
	andi r24,lo8(-33)
.L29:
	sts 288,r24
	ret
.L23:
	lds r24,288
	andi r24,lo8(-9)
	sts 288,r24
.L27:
	ret
	.size	turnOffPWM, .-turnOffPWM
	.section	.text.digitalWrite,"ax",@progbits
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r15,r22
	mov r20,r24
	ldi r21,lo8(0)
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_timer_PGM))
	sbci r25,hi8(-(digital_pin_to_timer_PGM))
	movw r30,r24
/* #APP */
 ;  139 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  140 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r20,lo8(-(digital_pin_to_port_PGM))
	sbci r21,hi8(-(digital_pin_to_port_PGM))
	movw r30,r20
/* #APP */
 ;  141 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r16, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r16
	breq .L44
	tst r18
	breq .L41
	mov r24,r18
	call turnOffPWM
.L41:
	mov r30,r16
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  150 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	in r25,__SREG__
/* #APP */
 ;  153 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	tst r15
	brne .L42
	ld r24,X
	com r17
	and r24,r17
	rjmp .L45
.L42:
	ld r24,X
	or r24,r17
.L45:
	st X,r24
	out __SREG__,r25
.L44:
/* epilogue start */
	pop r17
	pop r16
	pop r15
	ret
	.size	digitalWrite, .-digitalWrite
	.section	.text.digitalRead,"ax",@progbits
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r20,r24
	ldi r21,lo8(0)
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_timer_PGM))
	sbci r25,hi8(-(digital_pin_to_timer_PGM))
	movw r30,r24
/* #APP */
 ;  166 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r24,r20
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  167 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r16, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r20,lo8(-(digital_pin_to_port_PGM))
	sbci r21,hi8(-(digital_pin_to_port_PGM))
	movw r30,r20
/* #APP */
 ;  168 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r17
	brne .L47
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L48
.L47:
	tst r18
	breq .L49
	mov r24,r18
	call turnOffPWM
.L49:
	mov r24,r17
	ldi r25,lo8(0)
	lsl r24
	rol r25
	subi r24,lo8(-(port_to_input_PGM))
	sbci r25,hi8(-(port_to_input_PGM))
	movw r30,r24
/* #APP */
 ;  176 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	and r24,r16
	breq .L48
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L48:
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	digitalRead, .-digitalRead
.global	port_to_mode_PGM
	.section	.progmem.data,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 26
port_to_mode_PGM:
	.word	0
	.word	33
	.word	36
	.word	39
	.word	42
	.word	45
	.word	48
	.word	51
	.word	257
	.word	0
	.word	260
	.word	263
	.word	266
.global	port_to_output_PGM
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 26
port_to_output_PGM:
	.word	0
	.word	34
	.word	37
	.word	40
	.word	43
	.word	46
	.word	49
	.word	52
	.word	258
	.word	0
	.word	261
	.word	264
	.word	267
.global	port_to_input_PGM
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 26
port_to_input_PGM:
	.word	0
	.word	32
	.word	35
	.word	38
	.word	41
	.word	44
	.word	47
	.word	50
	.word	256
	.word	0
	.word	259
	.word	262
	.word	265
.global	digital_pin_to_port_PGM
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 70
digital_pin_to_port_PGM:
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	7
	.byte	5
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	10
	.byte	10
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	7
	.byte	7
	.byte	7
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
.global	digital_pin_to_bit_mask_PGM
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 70
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	16
	.byte	32
	.byte	32
	.byte	8
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	2
	.byte	1
	.byte	2
	.byte	1
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	-128
	.byte	64
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.byte	-128
	.byte	4
	.byte	2
	.byte	1
	.byte	-128
	.byte	64
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.byte	8
	.byte	4
	.byte	2
	.byte	1
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
.global	digital_pin_to_timer_PGM
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 70
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	9
	.byte	10
	.byte	2
	.byte	8
	.byte	11
	.byte	12
	.byte	13
	.byte	7
	.byte	6
	.byte	3
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	16
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
