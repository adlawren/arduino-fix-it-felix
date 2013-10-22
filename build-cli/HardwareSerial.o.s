	.file	"HardwareSerial.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._Z11serialEventv,"ax",@progbits
	.weak	_Z11serialEventv
	.type	_Z11serialEventv, @function
_Z11serialEventv:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z11serialEventv, .-_Z11serialEventv
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
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
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r20,198
	lds r18,rx_buffer+64
	lds r19,(rx_buffer+64)+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	lds r24,rx_buffer+66
	lds r25,(rx_buffer+66)+1
	cp r18,r24
	cpc r19,r25
	breq .L5
	lds r30,rx_buffer+64
	lds r31,(rx_buffer+64)+1
	subi r30,lo8(-(rx_buffer))
	sbci r31,hi8(-(rx_buffer))
	st Z,r20
	sts (rx_buffer+64)+1,r19
	sts rx_buffer+64,r18
.L5:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
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
	.size	__vector_25, .-__vector_25
	.section	.text._Z12serialEvent1v,"ax",@progbits
	.weak	_Z12serialEvent1v
	.type	_Z12serialEvent1v, @function
_Z12serialEvent1v:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z12serialEvent1v, .-_Z12serialEvent1v
	.section	.text.__vector_36,"ax",@progbits
.global	__vector_36
	.type	__vector_36, @function
__vector_36:
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
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r20,206
	lds r18,rx_buffer1+64
	lds r19,(rx_buffer1+64)+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	lds r24,rx_buffer1+66
	lds r25,(rx_buffer1+66)+1
	cp r18,r24
	cpc r19,r25
	breq .L10
	lds r30,rx_buffer1+64
	lds r31,(rx_buffer1+64)+1
	subi r30,lo8(-(rx_buffer1))
	sbci r31,hi8(-(rx_buffer1))
	st Z,r20
	sts (rx_buffer1+64)+1,r19
	sts rx_buffer1+64,r18
.L10:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
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
	.size	__vector_36, .-__vector_36
	.section	.text._Z12serialEvent2v,"ax",@progbits
	.weak	_Z12serialEvent2v
	.type	_Z12serialEvent2v, @function
_Z12serialEvent2v:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z12serialEvent2v, .-_Z12serialEvent2v
	.section	.text.__vector_51,"ax",@progbits
.global	__vector_51
	.type	__vector_51, @function
__vector_51:
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
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r20,214
	lds r18,rx_buffer2+64
	lds r19,(rx_buffer2+64)+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	lds r24,rx_buffer2+66
	lds r25,(rx_buffer2+66)+1
	cp r18,r24
	cpc r19,r25
	breq .L15
	lds r30,rx_buffer2+64
	lds r31,(rx_buffer2+64)+1
	subi r30,lo8(-(rx_buffer2))
	sbci r31,hi8(-(rx_buffer2))
	st Z,r20
	sts (rx_buffer2+64)+1,r19
	sts rx_buffer2+64,r18
.L15:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
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
	.size	__vector_51, .-__vector_51
	.section	.text._Z12serialEvent3v,"ax",@progbits
	.weak	_Z12serialEvent3v
	.type	_Z12serialEvent3v, @function
_Z12serialEvent3v:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z12serialEvent3v, .-_Z12serialEvent3v
	.section	.text.__vector_54,"ax",@progbits
.global	__vector_54
	.type	__vector_54, @function
__vector_54:
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
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r20,310
	lds r18,rx_buffer3+64
	lds r19,(rx_buffer3+64)+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	lds r24,rx_buffer3+66
	lds r25,(rx_buffer3+66)+1
	cp r18,r24
	cpc r19,r25
	breq .L20
	lds r30,rx_buffer3+64
	lds r31,(rx_buffer3+64)+1
	subi r30,lo8(-(rx_buffer3))
	sbci r31,hi8(-(rx_buffer3))
	st Z,r20
	sts (rx_buffer3+64)+1,r19
	sts rx_buffer3+64,r18
.L20:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
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
	.size	__vector_54, .-__vector_54
	.section	.text._Z14serialEventRunv,"ax",@progbits
	.weak	_Z14serialEventRunv
	.type	_Z14serialEventRunv, @function
_Z14serialEventRunv:
/* prologue: function */
/* frame size = 0 */
	lds r30,Serial+12
	lds r31,(Serial+12)+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z+
	ld r25,Z+
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	andi r24,lo8(63)
	andi r25,hi8(63)
	or r24,r25
	breq .L22
	call _Z11serialEventv
.L22:
	lds r30,Serial1+12
	lds r31,(Serial1+12)+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z+
	ld r25,Z+
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	andi r24,lo8(63)
	andi r25,hi8(63)
	or r24,r25
	breq .L23
	call _Z12serialEvent1v
.L23:
	lds r30,Serial2+12
	lds r31,(Serial2+12)+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z+
	ld r25,Z+
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	andi r24,lo8(63)
	andi r25,hi8(63)
	or r24,r25
	breq .L24
	call _Z12serialEvent2v
.L24:
	lds r30,Serial3+12
	lds r31,(Serial3+12)+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z+
	ld r25,Z+
	ld r18,Z
	ldd r19,Z+1
	sub r24,r18
	sbc r25,r19
	andi r24,lo8(63)
	andi r25,hi8(63)
	or r24,r25
	breq .L26
	call _Z12serialEvent3v
.L26:
	ret
	.size	_Z14serialEventRunv, .-_Z14serialEventRunv
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r18,tx_buffer+64
	lds r19,(tx_buffer+64)+1
	lds r24,tx_buffer+66
	lds r25,(tx_buffer+66)+1
	cp r18,r24
	cpc r19,r25
	brne .L28
	lds r24,193
	andi r24,lo8(-33)
	sts 193,r24
	rjmp .L30
.L28:
	lds r30,tx_buffer+66
	lds r31,(tx_buffer+66)+1
	subi r30,lo8(-(tx_buffer))
	sbci r31,hi8(-(tx_buffer))
	ld r18,Z
	lds r24,tx_buffer+66
	lds r25,(tx_buffer+66)+1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	sts (tx_buffer+66)+1,r25
	sts tx_buffer+66,r24
	sts 198,r18
.L30:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_26, .-__vector_26
	.section	.text.__vector_37,"ax",@progbits
.global	__vector_37
	.type	__vector_37, @function
__vector_37:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r18,tx_buffer1+64
	lds r19,(tx_buffer1+64)+1
	lds r24,tx_buffer1+66
	lds r25,(tx_buffer1+66)+1
	cp r18,r24
	cpc r19,r25
	brne .L32
	lds r24,201
	andi r24,lo8(-33)
	sts 201,r24
	rjmp .L34
.L32:
	lds r30,tx_buffer1+66
	lds r31,(tx_buffer1+66)+1
	subi r30,lo8(-(tx_buffer1))
	sbci r31,hi8(-(tx_buffer1))
	ld r18,Z
	lds r24,tx_buffer1+66
	lds r25,(tx_buffer1+66)+1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	sts (tx_buffer1+66)+1,r25
	sts tx_buffer1+66,r24
	sts 206,r18
.L34:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_37, .-__vector_37
	.section	.text.__vector_52,"ax",@progbits
.global	__vector_52
	.type	__vector_52, @function
__vector_52:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r18,tx_buffer2+64
	lds r19,(tx_buffer2+64)+1
	lds r24,tx_buffer2+66
	lds r25,(tx_buffer2+66)+1
	cp r18,r24
	cpc r19,r25
	brne .L36
	lds r24,209
	andi r24,lo8(-33)
	sts 209,r24
	rjmp .L38
.L36:
	lds r30,tx_buffer2+66
	lds r31,(tx_buffer2+66)+1
	subi r30,lo8(-(tx_buffer2))
	sbci r31,hi8(-(tx_buffer2))
	ld r18,Z
	lds r24,tx_buffer2+66
	lds r25,(tx_buffer2+66)+1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	sts (tx_buffer2+66)+1,r25
	sts tx_buffer2+66,r24
	sts 214,r18
.L38:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_52, .-__vector_52
	.section	.text.__vector_55,"ax",@progbits
.global	__vector_55
	.type	__vector_55, @function
__vector_55:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
	lds r18,tx_buffer3+64
	lds r19,(tx_buffer3+64)+1
	lds r24,tx_buffer3+66
	lds r25,(tx_buffer3+66)+1
	cp r18,r24
	cpc r19,r25
	brne .L40
	lds r24,305
	andi r24,lo8(-33)
	sts 305,r24
	rjmp .L42
.L40:
	lds r30,tx_buffer3+66
	lds r31,(tx_buffer3+66)+1
	subi r30,lo8(-(tx_buffer3))
	sbci r31,hi8(-(tx_buffer3))
	ld r18,Z
	lds r24,tx_buffer3+66
	lds r25,(tx_buffer3+66)+1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	sts (tx_buffer3+66)+1,r25
	sts tx_buffer3+66,r24
	sts 310,r18
.L42:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
	.size	__vector_55, .-__vector_55
	.section	.text._ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh,"ax",@progbits
.global	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.type	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, @function
_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh:
	push r8
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	ldi r26,hlo8(1000)
	ldi r27,hhi8(1000)
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	std Z+13,r23
	std Z+12,r22
	std Z+15,r21
	std Z+14,r20
	std Z+17,r19
	std Z+16,r18
	std Z+19,r17
	std Z+18,r16
	std Z+21,r15
	std Z+20,r14
	std Z+23,r13
	std Z+22,r12
	std Z+25,r11
	std Z+24,r10
	std Z+26,r8
	ldd r24,Y+15
	std Z+27,r24
	ldd r24,Y+16
	std Z+28,r24
	ldd r24,Y+17
	std Z+29,r24
	ldd r24,Y+18
	std Z+30,r24
/* epilogue start */
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r8
	ret
	.size	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, .-_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.section	.text._ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh,"ax",@progbits
.global	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.type	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, @function
_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh:
	push r8
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	ldi r26,hlo8(1000)
	ldi r27,hhi8(1000)
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	std Z+13,r23
	std Z+12,r22
	std Z+15,r21
	std Z+14,r20
	std Z+17,r19
	std Z+16,r18
	std Z+19,r17
	std Z+18,r16
	std Z+21,r15
	std Z+20,r14
	std Z+23,r13
	std Z+22,r12
	std Z+25,r11
	std Z+24,r10
	std Z+26,r8
	ldd r24,Y+15
	std Z+27,r24
	ldd r24,Y+16
	std Z+28,r24
	ldd r24,Y+17
	std Z+29,r24
	ldd r24,Y+18
	std Z+30,r24
/* epilogue start */
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r8
	ret
	.size	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh, .-_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_hhhhh
	.section	.text._ZN14HardwareSerial5beginEm,"ax",@progbits
.global	_ZN14HardwareSerial5beginEm
	.type	_ZN14HardwareSerial5beginEm, @function
_ZN14HardwareSerial5beginEm:
	push r10
	push r11
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r14,r20
	movw r16,r22
	clr r13
	cpi r20,lo8(57600)
	ldi r24,hi8(57600)
	cpc r21,r24
	ldi r24,hlo8(57600)
	cpc r22,r24
	ldi r24,hhi8(57600)
	cpc r23,r24
	breq .L52
	clr r13
	inc r13
.L52:
	ldi r25,lo8(1)
	mov r10,r25
	mov r11,__zero_reg__
.L54:
	ldd r30,Y+20
	ldd r31,Y+21
	tst r13
	breq .L49
	movw r24,r10
	ldd r0,Y+30
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	st Z,r24
	ldi r22,lo8(4000000)
	ldi r23,hi8(4000000)
	ldi r24,hlo8(4000000)
	ldi r25,hhi8(4000000)
	rjmp .L55
.L49:
	st Z,__zero_reg__
	ldi r22,lo8(2000000)
	ldi r23,hi8(2000000)
	ldi r24,hlo8(2000000)
	ldi r25,hhi8(2000000)
.L55:
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbci r20,hlo8(-(-1))
	sbci r21,hhi8(-(-1))
	lsr r21
	ror r20
	ror r19
	ror r18
	ldi r24,hi8(4096)
	cpi r18,lo8(4096)
	cpc r19,r24
	brlo .L51
	tst r13
	breq .L51
	clr r13
	rjmp .L54
.L51:
	ldd r30,Y+16
	ldd r31,Y+17
	st Z,r19
	ldd r30,Y+18
	ldd r31,Y+19
	st Z,r18
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r24,r18
	ldd r0,Y+26
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r24,r18
	ldd r0,Y+27
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r24,r18
	ldd r0,Y+28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r20,r24
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r24,Z
	ldd r0,Y+29
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r0
	brpl 1b
	com r18
	and r18,r24
	st Z,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r11
	pop r10
	ret
	.size	_ZN14HardwareSerial5beginEm, .-_ZN14HardwareSerial5beginEm
	.section	.text._ZN14HardwareSerial3endEv,"ax",@progbits
.global	_ZN14HardwareSerial3endEv
	.type	_ZN14HardwareSerial3endEv, @function
_ZN14HardwareSerial3endEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,14
	ld r24,X+
	ld r25,X
	sbiw r26,14+1
	movw r28,r24
	subi r28,lo8(-(64))
	sbci r29,hi8(-(64))
	movw r30,r24
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
.L57:
	ld r18,Y
	ldd r19,Y+1
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L57
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	movw r24,r18
	adiw r26,26
	ld r0,X
	sbiw r26,26
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	movw r24,r18
	adiw r26,27
	ld r0,X
	sbiw r26,27
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r20,Z
	movw r24,r18
	adiw r26,28
	ld r0,X
	sbiw r26,28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	com r24
	and r24,r20
	st Z,r24
	adiw r26,22
	ld r30,X+
	ld r31,X
	sbiw r26,22+1
	ld r24,Z
	adiw r26,29
	ld r0,X
	sbiw r26,29
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r0
	brpl 1b
	com r18
	and r18,r24
	st Z,r18
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
	ld r24,Z
	ldd r25,Z+1
	st -Z,r25
	st -Z,r24
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial3endEv, .-_ZN14HardwareSerial3endEv
	.section	.text._ZN14HardwareSerial9availableEv,"ax",@progbits
.global	_ZN14HardwareSerial9availableEv
	.type	_ZN14HardwareSerial9availableEv, @function
_ZN14HardwareSerial9availableEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z+
	ld r19,Z+
	ld r24,Z
	ldd r25,Z+1
	sub r18,r24
	sbc r19,r25
	andi r18,lo8(63)
	andi r19,hi8(63)
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial9availableEv, .-_ZN14HardwareSerial9availableEv
	.section	.text._ZN14HardwareSerial4peekEv,"ax",@progbits
.global	_ZN14HardwareSerial4peekEv
	.type	_ZN14HardwareSerial4peekEv, @function
_ZN14HardwareSerial4peekEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z
	ldd r19,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L63
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L64
.L63:
	ld r24,X+
	ld r25,X
	add r30,r24
	adc r31,r25
	ld r24,Z
	mov r18,r24
	ldi r19,lo8(0)
.L64:
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4peekEv, .-_ZN14HardwareSerial4peekEv
	.section	.text._ZN14HardwareSerial4readEv,"ax",@progbits
.global	_ZN14HardwareSerial4readEv
	.type	_ZN14HardwareSerial4readEv, @function
_ZN14HardwareSerial4readEv:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	adiw r26,12
	ld r30,X+
	ld r31,X
	sbiw r26,12+1
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z
	ldd r19,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	brne .L67
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L68
.L67:
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r30,r24
	adc r31,r25
	ld r18,Z
	ld r24,X+
	ld r25,X
	sbiw r26,1
	adiw r24,1
	andi r24,lo8(63)
	andi r25,hi8(63)
	adiw r26,1
	st X,r25
	st -X,r24
	ldi r19,lo8(0)
.L68:
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial4readEv, .-_ZN14HardwareSerial4readEv
	.section	.text._ZN14HardwareSerial5flushEv,"ax",@progbits
.global	_ZN14HardwareSerial5flushEv
	.type	_ZN14HardwareSerial5flushEv, @function
_ZN14HardwareSerial5flushEv:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+14
	ldd r25,Z+15
	movw r26,r24
	subi r26,lo8(-(64))
	sbci r27,hi8(-(64))
	movw r30,r24
	subi r30,lo8(-(66))
	sbci r31,hi8(-(66))
.L71:
	ld r18,X+
	ld r19,X
	sbiw r26,1
	ld r24,Z
	ldd r25,Z+1
	cp r18,r24
	cpc r19,r25
	brne .L71
/* epilogue start */
	ret
	.size	_ZN14HardwareSerial5flushEv, .-_ZN14HardwareSerial5flushEv
	.section	.text._ZN14HardwareSerial5writeEh,"ax",@progbits
.global	_ZN14HardwareSerial5writeEh
	.type	_ZN14HardwareSerial5writeEh, @function
_ZN14HardwareSerial5writeEh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	ldd r30,Y+14
	ldd r31,Y+15
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r18,Z
	ldd r19,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	andi r18,lo8(63)
	andi r19,hi8(63)
	movw r26,r30
	subi r26,lo8(-(66))
	sbci r27,hi8(-(66))
.L75:
	ld r24,X+
	ld r25,X
	sbiw r26,1
	cp r18,r24
	cpc r19,r25
	breq .L75
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	ld r24,Z
	ldd r25,Z+1
	subi r30,lo8(-(-64))
	sbci r31,hi8(-(-64))
	add r30,r24
	adc r31,r25
	st Z,r22
	ldd r30,Y+14
	ldd r31,Y+15
	subi r30,lo8(-(64))
	sbci r31,hi8(-(64))
	std Z+1,r19
	st Z,r18
	ldd r30,Y+22
	ldd r31,Y+23
	ld r18,Z
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	ldd r0,Y+29
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
	or r18,r24
	st Z,r18
	ldi r24,lo8(1)
	ldi r25,hi8(1)
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial5writeEh, .-_ZN14HardwareSerial5writeEh
	.section	.text._ZN14HardwareSerialcvbEv,"ax",@progbits
.global	_ZN14HardwareSerialcvbEv
	.type	_ZN14HardwareSerialcvbEv, @function
_ZN14HardwareSerialcvbEv:
/* prologue: function */
/* frame size = 0 */
	ldi r24,lo8(1)
/* epilogue start */
	ret
	.size	_ZN14HardwareSerialcvbEv, .-_ZN14HardwareSerialcvbEv
	.section	.text._GLOBAL__I_rx_buffer,"ax",@progbits
	.type	_GLOBAL__I_rx_buffer, @function
_GLOBAL__I_rx_buffer:
	push r17
/* prologue: function */
/* frame size = 0 */
	sts (Serial+2)+1,__zero_reg__
	sts Serial+2,__zero_reg__
	ldi r18,lo8(1000)
	ldi r19,hi8(1000)
	ldi r20,hlo8(1000)
	ldi r21,hhi8(1000)
	sts Serial+4,r18
	sts (Serial+4)+1,r19
	sts (Serial+4)+2,r20
	sts (Serial+4)+3,r21
	ldi r22,lo8(_ZTV14HardwareSerial+4)
	ldi r23,hi8(_ZTV14HardwareSerial+4)
	sts (Serial)+1,r23
	sts Serial,r22
	ldi r24,lo8(rx_buffer)
	ldi r25,hi8(rx_buffer)
	sts (Serial+12)+1,r25
	sts Serial+12,r24
	ldi r24,lo8(tx_buffer)
	ldi r25,hi8(tx_buffer)
	sts (Serial+14)+1,r25
	sts Serial+14,r24
	ldi r24,lo8(197)
	ldi r25,hi8(197)
	sts (Serial+16)+1,r25
	sts Serial+16,r24
	ldi r24,lo8(196)
	ldi r25,hi8(196)
	sts (Serial+18)+1,r25
	sts Serial+18,r24
	ldi r24,lo8(192)
	ldi r25,hi8(192)
	sts (Serial+20)+1,r25
	sts Serial+20,r24
	ldi r24,lo8(193)
	ldi r25,hi8(193)
	sts (Serial+22)+1,r25
	sts Serial+22,r24
	ldi r24,lo8(198)
	ldi r25,hi8(198)
	sts (Serial+24)+1,r25
	sts Serial+24,r24
	ldi r17,lo8(4)
	sts Serial+26,r17
	ldi r27,lo8(3)
	sts Serial+27,r27
	ldi r26,lo8(7)
	sts Serial+28,r26
	ldi r31,lo8(5)
	sts Serial+29,r31
	ldi r30,lo8(1)
	sts Serial+30,r30
	sts (Serial1+2)+1,__zero_reg__
	sts Serial1+2,__zero_reg__
	sts Serial1+4,r18
	sts (Serial1+4)+1,r19
	sts (Serial1+4)+2,r20
	sts (Serial1+4)+3,r21
	sts (Serial1)+1,r23
	sts Serial1,r22
	ldi r24,lo8(rx_buffer1)
	ldi r25,hi8(rx_buffer1)
	sts (Serial1+12)+1,r25
	sts Serial1+12,r24
	ldi r24,lo8(tx_buffer1)
	ldi r25,hi8(tx_buffer1)
	sts (Serial1+14)+1,r25
	sts Serial1+14,r24
	ldi r24,lo8(205)
	ldi r25,hi8(205)
	sts (Serial1+16)+1,r25
	sts Serial1+16,r24
	ldi r24,lo8(204)
	ldi r25,hi8(204)
	sts (Serial1+18)+1,r25
	sts Serial1+18,r24
	ldi r24,lo8(200)
	ldi r25,hi8(200)
	sts (Serial1+20)+1,r25
	sts Serial1+20,r24
	ldi r24,lo8(201)
	ldi r25,hi8(201)
	sts (Serial1+22)+1,r25
	sts Serial1+22,r24
	ldi r24,lo8(206)
	ldi r25,hi8(206)
	sts (Serial1+24)+1,r25
	sts Serial1+24,r24
	sts Serial1+26,r17
	sts Serial1+27,r27
	sts Serial1+28,r26
	sts Serial1+29,r31
	sts Serial1+30,r30
	sts (Serial2+2)+1,__zero_reg__
	sts Serial2+2,__zero_reg__
	sts Serial2+4,r18
	sts (Serial2+4)+1,r19
	sts (Serial2+4)+2,r20
	sts (Serial2+4)+3,r21
	sts (Serial2)+1,r23
	sts Serial2,r22
	ldi r24,lo8(rx_buffer2)
	ldi r25,hi8(rx_buffer2)
	sts (Serial2+12)+1,r25
	sts Serial2+12,r24
	ldi r24,lo8(tx_buffer2)
	ldi r25,hi8(tx_buffer2)
	sts (Serial2+14)+1,r25
	sts Serial2+14,r24
	ldi r24,lo8(213)
	ldi r25,hi8(213)
	sts (Serial2+16)+1,r25
	sts Serial2+16,r24
	ldi r24,lo8(212)
	ldi r25,hi8(212)
	sts (Serial2+18)+1,r25
	sts Serial2+18,r24
	ldi r24,lo8(208)
	ldi r25,hi8(208)
	sts (Serial2+20)+1,r25
	sts Serial2+20,r24
	ldi r24,lo8(209)
	ldi r25,hi8(209)
	sts (Serial2+22)+1,r25
	sts Serial2+22,r24
	ldi r24,lo8(214)
	ldi r25,hi8(214)
	sts (Serial2+24)+1,r25
	sts Serial2+24,r24
	sts Serial2+26,r17
	sts Serial2+27,r27
	sts Serial2+28,r26
	sts Serial2+29,r31
	sts Serial2+30,r30
	sts (Serial3+2)+1,__zero_reg__
	sts Serial3+2,__zero_reg__
	sts Serial3+4,r18
	sts (Serial3+4)+1,r19
	sts (Serial3+4)+2,r20
	sts (Serial3+4)+3,r21
	sts (Serial3)+1,r23
	sts Serial3,r22
	ldi r24,lo8(rx_buffer3)
	ldi r25,hi8(rx_buffer3)
	sts (Serial3+12)+1,r25
	sts Serial3+12,r24
	ldi r24,lo8(tx_buffer3)
	ldi r25,hi8(tx_buffer3)
	sts (Serial3+14)+1,r25
	sts Serial3+14,r24
	ldi r24,lo8(309)
	ldi r25,hi8(309)
	sts (Serial3+16)+1,r25
	sts Serial3+16,r24
	ldi r24,lo8(308)
	ldi r25,hi8(308)
	sts (Serial3+18)+1,r25
	sts Serial3+18,r24
	ldi r24,lo8(304)
	ldi r25,hi8(304)
	sts (Serial3+20)+1,r25
	sts Serial3+20,r24
	ldi r24,lo8(305)
	ldi r25,hi8(305)
	sts (Serial3+22)+1,r25
	sts Serial3+22,r24
	ldi r24,lo8(310)
	ldi r25,hi8(310)
	sts (Serial3+24)+1,r25
	sts Serial3+24,r24
	sts Serial3+26,r17
	sts Serial3+27,r27
	sts Serial3+28,r26
	sts Serial3+29,r31
	sts Serial3+30,r30
/* epilogue start */
	pop r17
	ret
	.size	_GLOBAL__I_rx_buffer, .-_GLOBAL__I_rx_buffer
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.word	gs(_GLOBAL__I_rx_buffer)
.global	rx_buffer
	.section	.bss.rx_buffer,"aw",@nobits
	.type	rx_buffer, @object
	.size	rx_buffer, 68
rx_buffer:
	.skip 68,0
.global	tx_buffer
	.section	.bss.tx_buffer,"aw",@nobits
	.type	tx_buffer, @object
	.size	tx_buffer, 68
tx_buffer:
	.skip 68,0
.global	rx_buffer1
	.section	.bss.rx_buffer1,"aw",@nobits
	.type	rx_buffer1, @object
	.size	rx_buffer1, 68
rx_buffer1:
	.skip 68,0
.global	tx_buffer1
	.section	.bss.tx_buffer1,"aw",@nobits
	.type	tx_buffer1, @object
	.size	tx_buffer1, 68
tx_buffer1:
	.skip 68,0
.global	rx_buffer2
	.section	.bss.rx_buffer2,"aw",@nobits
	.type	rx_buffer2, @object
	.size	rx_buffer2, 68
rx_buffer2:
	.skip 68,0
.global	tx_buffer2
	.section	.bss.tx_buffer2,"aw",@nobits
	.type	tx_buffer2, @object
	.size	tx_buffer2, 68
tx_buffer2:
	.skip 68,0
.global	rx_buffer3
	.section	.bss.rx_buffer3,"aw",@nobits
	.type	rx_buffer3, @object
	.size	rx_buffer3, 68
rx_buffer3:
	.skip 68,0
.global	tx_buffer3
	.section	.bss.tx_buffer3,"aw",@nobits
	.type	tx_buffer3, @object
	.size	tx_buffer3, 68
tx_buffer3:
	.skip 68,0
.global	Serial
	.section	.bss.Serial,"aw",@nobits
	.type	Serial, @object
	.size	Serial, 31
Serial:
	.skip 31,0
.global	Serial1
	.section	.bss.Serial1,"aw",@nobits
	.type	Serial1, @object
	.size	Serial1, 31
Serial1:
	.skip 31,0
.global	Serial2
	.section	.bss.Serial2,"aw",@nobits
	.type	Serial2, @object
	.size	Serial2, 31
Serial2:
	.skip 31,0
.global	Serial3
	.section	.bss.Serial3,"aw",@nobits
	.type	Serial3, @object
	.size	Serial3, 31
Serial3:
	.skip 31,0
	.weak	_ZTV14HardwareSerial
	.section	.rodata._ZTV14HardwareSerial,"a",@progbits
	.type	_ZTV14HardwareSerial, @object
	.size	_ZTV14HardwareSerial, 16
_ZTV14HardwareSerial:
	.word	0
	.word	0
	.word	gs(_ZN14HardwareSerial5writeEh)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(_ZN14HardwareSerial9availableEv)
	.word	gs(_ZN14HardwareSerial4readEv)
	.word	gs(_ZN14HardwareSerial4peekEv)
	.word	gs(_ZN14HardwareSerial5flushEv)
	.weak	_ZTV6Stream
	.section	.rodata._ZTV6Stream,"a",@progbits
	.type	_ZTV6Stream, @object
	.size	_ZTV6Stream, 16
_ZTV6Stream:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
