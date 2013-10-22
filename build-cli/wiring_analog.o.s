	.file	"wiring_analog.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.analogReference,"ax",@progbits
.global	analogReference
	.type	analogReference, @function
analogReference:
/* prologue: function */
/* frame size = 0 */
	sts analog_reference,r24
/* epilogue start */
	ret
	.size	analogReference, .-analogReference
	.section	.text.analogRead,"ax",@progbits
.global	analogRead
	.type	analogRead, @function
analogRead:
/* prologue: function */
/* frame size = 0 */
	mov r19,r24
	cpi r24,lo8(54)
	brlo .L4
	subi r19,lo8(-(-54))
.L4:
	lds r18,123
	mov r24,r19
	lsr r24
	lsr r24
	lsr r24
	ldi r25,lo8(0)
	andi r24,lo8(1)
	andi r25,hi8(1)
	ldi r20,3
1:	lsl r24
	rol r25
	dec r20
	brne 1b
	andi r18,lo8(-9)
	or r18,r24
	sts 123,r18
	andi r19,lo8(7)
	lds r24,analog_reference
	swap r24
	lsl r24
	lsl r24
	andi r24,lo8(-64)
	or r24,r19
	sts 124,r24
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L5:
	lds r24,122
	sbrc r24,6
	rjmp .L5
	lds r18,120
	lds r20,121
	mov r25,r20
	ldi r24,lo8(0)
	ldi r19,lo8(0)
	or r18,r24
	or r19,r25
	movw r24,r18
/* epilogue start */
	ret
	.size	analogRead, .-analogRead
	.section	.text.analogWrite,"ax",@progbits
.global	analogWrite
	.type	analogWrite, @function
analogWrite:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	movw r28,r22
	ldi r22,lo8(1)
	call pinMode
	sbiw r28,0
	brne .+2
	rjmp .L35
.L9:
	cpi r28,255
	cpc r29,__zero_reg__
	brne .+2
	rjmp .L31
.L11:
	mov r30,r17
	ldi r31,lo8(0)
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  118 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_analog.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpi r24,lo8(9)
	brne .+2
	rjmp .L20
	cpi r24,lo8(10)
	brsh .L28
	cpi r24,lo8(4)
	breq .L16
	cpi r24,lo8(5)
	brsh .L29
	cpi r24,lo8(2)
	breq .L14
	cpi r24,lo8(3)
	brsh .L15
	cpi r24,lo8(1)
	breq .+2
	rjmp .L12
	rjmp .L36
.L29:
	cpi r24,lo8(7)
	brne .+2
	rjmp .L18
	cpi r24,lo8(8)
	brlo .+2
	rjmp .L19
	cpi r24,lo8(6)
	breq .+2
	rjmp .L12
	rjmp .L37
.L28:
	cpi r24,lo8(13)
	brne .+2
	rjmp .L24
	cpi r24,lo8(14)
	brsh .L30
	cpi r24,lo8(11)
	brne .+2
	rjmp .L22
	cpi r24,lo8(12)
	brlo .+2
	rjmp .L23
	rjmp .L38
.L30:
	cpi r24,lo8(16)
	brne .+2
	rjmp .L26
	cpi r24,lo8(17)
	brne .+2
	rjmp .L27
	cpi r24,lo8(15)
	breq .+2
	rjmp .L12
	rjmp .L39
.L36:
	in r24,68-32
	ori r24,lo8(-128)
	out 68-32,r24
	out 71-32,r28
	rjmp .L32
.L14:
	in r24,68-32
	ori r24,lo8(32)
	out 68-32,r24
	out 72-32,r28
	rjmp .L32
.L15:
	lds r24,128
	ori r24,lo8(-128)
	sts 128,r24
	sts (136)+1,r29
	sts 136,r28
	rjmp .L32
.L16:
	lds r24,128
	ori r24,lo8(32)
	sts 128,r24
	sts (138)+1,r29
	sts 138,r28
	rjmp .L32
.L37:
	lds r24,176
	ori r24,lo8(-128)
	sts 176,r24
	sts 179,r28
	rjmp .L32
.L18:
	lds r24,176
	ori r24,lo8(32)
	sts 176,r24
	sts 180,r28
	rjmp .L32
.L19:
	lds r24,144
	ori r24,lo8(-128)
	sts 144,r24
	sts (152)+1,r29
	sts 152,r28
	rjmp .L32
.L20:
	lds r24,144
	ori r24,lo8(32)
	sts 144,r24
	sts (154)+1,r29
	sts 154,r28
	rjmp .L32
.L38:
	lds r24,144
	ori r24,lo8(8)
	sts 144,r24
	sts (156)+1,r29
	sts 156,r28
	rjmp .L32
.L22:
	lds r24,160
	ori r24,lo8(-128)
	sts 160,r24
	lds r24,160
	andi r24,lo8(-65)
	sts 160,r24
	sts (168)+1,r29
	sts 168,r28
	rjmp .L32
.L23:
	lds r24,160
	ori r24,lo8(32)
	sts 160,r24
	sts (170)+1,r29
	sts 170,r28
	rjmp .L32
.L24:
	lds r24,160
	ori r24,lo8(8)
	sts 160,r24
	sts (172)+1,r29
	sts 172,r28
	rjmp .L32
.L39:
	lds r24,288
	ori r24,lo8(-128)
	sts 288,r24
	sts (296)+1,r29
	sts 296,r28
	rjmp .L32
.L26:
	lds r24,288
	ori r24,lo8(32)
	sts 288,r24
	sts (298)+1,r29
	sts 298,r28
	rjmp .L32
.L27:
	lds r24,288
	ori r24,lo8(8)
	sts 288,r24
	sts (300)+1,r29
	sts 300,r28
	rjmp .L32
.L12:
	cpi r28,128
	cpc r29,__zero_reg__
	brge .L31
.L35:
	mov r24,r17
	ldi r22,lo8(0)
	rjmp .L34
.L31:
	mov r24,r17
	ldi r22,lo8(1)
.L34:
	call digitalWrite
.L32:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	analogWrite, .-analogWrite
.global	analog_reference
	.section	.data.analog_reference,"aw",@progbits
	.type	analog_reference, @object
	.size	analog_reference, 1
analog_reference:
	.byte	1
