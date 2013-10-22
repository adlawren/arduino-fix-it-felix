	.file	"Tone.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._Z12disableTimerh,"ax",@progbits
.global	_Z12disableTimerh
	.type	_Z12disableTimerh, @function
_Z12disableTimerh:
/* prologue: function */
/* frame size = 0 */
	cpi r24,lo8(2)
	breq .L5
	cpi r24,lo8(3)
	brsh .L9
	tst r24
	breq .L3
	cpi r24,lo8(1)
	brne .L10
	rjmp .L11
.L9:
	cpi r24,lo8(4)
	breq .L7
	cpi r24,lo8(4)
	brlo .L6
	cpi r24,lo8(5)
	brne .L10
	rjmp .L12
.L3:
	sts 110,__zero_reg__
	ret
.L11:
	lds r24,111
	andi r24,lo8(-3)
	sts 111,r24
	ret
.L5:
	lds r24,112
	andi r24,lo8(-3)
	sts 112,r24
	ldi r24,lo8(1)
	sts 176,r24
	lds r24,177
	andi r24,lo8(-8)
	ori r24,lo8(4)
	sts 177,r24
	sts 179,__zero_reg__
	ret
.L6:
	sts 113,__zero_reg__
	ret
.L7:
	sts 114,__zero_reg__
	ret
.L12:
	sts 115,__zero_reg__
.L10:
	ret
	.size	_Z12disableTimerh, .-_Z12disableTimerh
	.section	.text._Z6noToneh,"ax",@progbits
.global	_Z6noToneh
	.type	_Z6noToneh, @function
_Z6noToneh:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	lds r24,_ZL9tone_pins
	cp r24,r17
	breq .L14
	ldi r25,lo8(-1)
	rjmp .L15
.L14:
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  473 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(-1)
	sts _ZL9tone_pins,r24
.L15:
	mov r24,r25
	call _Z12disableTimerh
	mov r24,r17
	ldi r22,lo8(0)
	call digitalWrite
/* epilogue start */
	pop r17
	ret
	.size	_Z6noToneh, .-_Z6noToneh
	.section	.text.__vector_13,"ax",@progbits
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
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
	lds r24,timer2_toggle_count
	lds r25,(timer2_toggle_count)+1
	lds r26,(timer2_toggle_count)+2
	lds r27,(timer2_toggle_count)+3
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L18
	lds r30,timer2_pin_port
	lds r31,(timer2_pin_port)+1
	ld r24,Z
	lds r25,timer2_pin_mask
	eor r24,r25
	st Z,r24
	lds r24,timer2_toggle_count
	lds r25,(timer2_toggle_count)+1
	lds r26,(timer2_toggle_count)+2
	lds r27,(timer2_toggle_count)+3
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brge .L20
	lds r24,timer2_toggle_count
	lds r25,(timer2_toggle_count)+1
	lds r26,(timer2_toggle_count)+2
	lds r27,(timer2_toggle_count)+3
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts timer2_toggle_count,r24
	sts (timer2_toggle_count)+1,r25
	sts (timer2_toggle_count)+2,r26
	sts (timer2_toggle_count)+3,r27
	rjmp .L20
.L18:
	lds r24,_ZL9tone_pins
	call _Z6noToneh
.L20:
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
	.size	__vector_13, .-__vector_13
	.section	.text._Z4tonehjm,"ax",@progbits
.global	_Z4tonehjm
	.type	_Z4tonehjm, @function
_Z4tonehjm:
	push r2
	push r3
	push r5
	push r6
	push r7
	push r8
	push r9
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
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
	mov r26,r24
	movw r2,r22
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	lds r24,_ZL9tone_pins
	cp r24,r26
	brne .L22
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  122 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r5, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L23
.L22:
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L64
	sts _ZL9tone_pins,r26
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  130 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r5, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r18,lo8(-1)
	cp r5,r18
	brne .+2
	rjmp .L64
	ldi r24,lo8(2)
	cp r5,r24
	brne .+2
	rjmp .L27
	cp r24,r5
	brlt .L31
	tst r5
	breq .L25
	ldi r25,lo8(1)
	cp r5,r25
	breq .+2
	rjmp .L23
	rjmp .L65
.L31:
	ldi r27,lo8(4)
	cp r5,r27
	brne .+2
	rjmp .L29
	cp r5,r27
	brge .+2
	rjmp .L28
	ldi r30,lo8(5)
	cp r5,r30
	breq .+2
	rjmp .L23
	rjmp .L66
.L25:
	out 68-32,__zero_reg__
	out 69-32,__zero_reg__
	in r24,68-32
	ori r24,lo8(2)
	out 68-32,r24
	in r24,69-32
	ori r24,lo8(1)
	out 69-32,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  150 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  150 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer0_pin_port)+1,r25
	sts timer0_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  151 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer0_pin_mask,r24
	rjmp .L32
.L65:
	sts 128,__zero_reg__
	sts 129,__zero_reg__
	lds r24,129
	ori r24,lo8(8)
	sts 129,r24
	lds r24,129
	ori r24,lo8(1)
	sts 129,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  162 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  162 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer1_pin_port)+1,r25
	sts timer1_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  163 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer1_pin_mask,r24
	rjmp .L32
.L27:
	sts 176,__zero_reg__
	sts 177,__zero_reg__
	lds r24,176
	ori r24,lo8(2)
	sts 176,r24
	lds r24,177
	ori r24,lo8(1)
	sts 177,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  174 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  174 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer2_pin_port)+1,r25
	sts timer2_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  175 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer2_pin_mask,r24
	rjmp .L32
.L28:
	sts 144,__zero_reg__
	sts 145,__zero_reg__
	lds r24,145
	ori r24,lo8(8)
	sts 145,r24
	lds r24,145
	ori r24,lo8(1)
	sts 145,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  186 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  186 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer3_pin_port)+1,r25
	sts timer3_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  187 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer3_pin_mask,r24
	rjmp .L32
.L29:
	sts 160,__zero_reg__
	sts 161,__zero_reg__
	lds r24,161
	ori r24,lo8(8)
	sts 161,r24
	lds r24,161
	ori r24,lo8(1)
	sts 161,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  204 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  204 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer4_pin_port)+1,r25
	sts timer4_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  205 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer4_pin_mask,r24
	rjmp .L32
.L66:
	sts 288,__zero_reg__
	sts 289,__zero_reg__
	lds r24,289
	ori r24,lo8(8)
	sts 289,r24
	lds r24,289
	ori r24,lo8(1)
	sts 289,r24
	mov r18,r26
	ldi r19,lo8(0)
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  216 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,lo8(0)
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  216 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts (timer5_pin_port)+1,r25
	sts timer5_pin_port,r24
	subi r18,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r19,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r18
/* #APP */
 ;  217 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer5_pin_mask,r24
	rjmp .L32
.L23:
	sbrc r5,7
	rjmp .L64
.L32:
	mov r24,r26
	ldi r22,lo8(1)
	call pinMode
	tst r5
	breq .L33
	ldi r31,lo8(2)
	cp r5,r31
	breq .+2
	rjmp .L34
.L33:
	movw r6,r2
	clr r8
	clr r9
	ldi r22,lo8(8000000)
	ldi r23,hi8(8000000)
	ldi r24,hlo8(8000000)
	ldi r25,hhi8(8000000)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r10,r18
	movw r12,r20
	movw r16,r12
	movw r14,r10
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r18,lo8(255)
	cp r14,r18
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L35
	ldi r22,lo8(1000000)
	ldi r23,hi8(1000000)
	ldi r24,hlo8(1000000)
	ldi r25,hhi8(1000000)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r24,lo8(2)
	cp r5,r24
	brne .L37
	ldi r25,lo8(255)
	cp r14,r25
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L38
	ldi r22,lo8(250000)
	ldi r23,hi8(250000)
	ldi r24,hlo8(250000)
	ldi r25,hhi8(250000)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r24,lo8(3)
.L37:
	ldi r26,lo8(255)
	cp r14,r26
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L39
	ldi r22,lo8(125000)
	ldi r23,hi8(125000)
	ldi r24,hlo8(125000)
	ldi r25,hhi8(125000)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	tst r5
	brne .L40
	ldi r24,lo8(3)
	rjmp .L41
.L40:
	ldi r27,lo8(2)
	cp r5,r27
	breq .L42
	ldi r24,lo8(4)
	rjmp .L41
.L42:
	ldi r30,lo8(255)
	cp r14,r30
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L43
	ldi r22,lo8(62500)
	ldi r23,hi8(62500)
	ldi r24,hlo8(62500)
	ldi r25,hhi8(62500)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r24,lo8(5)
.L41:
	ldi r31,lo8(255)
	cp r14,r31
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L39
	brlo .L39
	ldi r22,lo8(31250)
	ldi r23,hi8(31250)
	ldi r24,hlo8(31250)
	ldi r25,hhi8(31250)
	movw r20,r8
	movw r18,r6
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	tst r5
	breq .L44
	ldi r24,lo8(6)
	rjmp .L45
.L44:
	ldi r24,lo8(4)
.L45:
	ldi r18,lo8(255)
	cp r14,r18
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L39
	brlo .L39
	movw r24,r12
	movw r22,r10
	ldi r18,lo8(1024)
	ldi r19,hi8(1024)
	ldi r20,hlo8(1024)
	ldi r21,hhi8(1024)
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	tst r5
	breq .L46
	ldi r24,lo8(7)
	rjmp .L47
.L46:
	ldi r24,lo8(5)
	rjmp .L48
.L35:
	ldi r24,lo8(1)
.L39:
	tst r5
	brne .L47
.L48:
	out 69-32,r24
	rjmp .L49
.L38:
	ldi r24,lo8(2)
.L47:
	sts 177,r24
	rjmp .L49
.L34:
	movw r10,r2
	clr r12
	clr r13
	ldi r22,lo8(8000000)
	ldi r23,hi8(8000000)
	ldi r24,hlo8(8000000)
	ldi r25,hhi8(8000000)
	movw r20,r12
	movw r18,r10
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r24,lo8(65536)
	cp r14,r24
	ldi r24,hi8(65536)
	cpc r15,r24
	ldi r24,hlo8(65536)
	cpc r16,r24
	ldi r24,hhi8(65536)
	cpc r17,r24
	brsh .L50
	ldi r25,lo8(1)
	rjmp .L51
.L50:
	ldi r22,lo8(125000)
	ldi r23,hi8(125000)
	ldi r24,hlo8(125000)
	ldi r25,hhi8(125000)
	movw r20,r12
	movw r18,r10
	call __divmodsi4
	movw r14,r18
	movw r16,r20
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	sbc r16,__zero_reg__
	sbc r17,__zero_reg__
	ldi r25,lo8(3)
.L51:
	ldi r26,lo8(1)
	cp r5,r26
	brne .L52
	lds r24,129
	andi r24,lo8(-8)
	or r25,r24
	sts 129,r25
	rjmp .L49
.L52:
	ldi r27,lo8(3)
	cp r5,r27
	brne .L53
	lds r24,145
	andi r24,lo8(-8)
	or r25,r24
	sts 145,r25
	rjmp .L49
.L53:
	ldi r30,lo8(4)
	cp r5,r30
	brne .L54
	lds r24,161
	andi r24,lo8(-8)
	or r25,r24
	sts 161,r25
	rjmp .L49
.L54:
	ldi r31,lo8(5)
	cp r5,r31
	brne .L49
	lds r24,289
	andi r24,lo8(-8)
	or r25,r24
	sts 289,r25
.L49:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L55
	ldi r24,lo8(-1)
	ldi r25,hi8(-1)
	ldi r26,hlo8(-1)
	ldi r27,hhi8(-1)
	rjmp .L56
.L55:
	lsl r2
	rol r3
	movw r22,r2
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	call __mulsi3
	ldi r18,lo8(1000)
	ldi r19,hi8(1000)
	ldi r20,hlo8(1000)
	ldi r21,hhi8(1000)
	call __udivmodsi4
	movw r24,r18
	movw r26,r20
.L56:
	ldi r30,lo8(2)
	cp r5,r30
	breq .L59
	cp r30,r5
	brlt .L63
	tst r5
	breq .L57
	ldi r31,lo8(1)
	cp r5,r31
	breq .+2
	rjmp .L64
	rjmp .L67
.L63:
	ldi r18,lo8(4)
	cp r5,r18
	brne .+2
	rjmp .L61
	cp r5,r18
	brlt .L60
	ldi r30,lo8(5)
	cp r5,r30
	breq .+2
	rjmp .L64
	rjmp .L68
.L57:
	out 71-32,r14
	sts timer0_toggle_count,r24
	sts (timer0_toggle_count)+1,r25
	sts (timer0_toggle_count)+2,r26
	sts (timer0_toggle_count)+3,r27
	lds r24,110
	ori r24,lo8(2)
	sts 110,r24
	rjmp .L64
.L67:
	sts (136)+1,r15
	sts 136,r14
	sts timer1_toggle_count,r24
	sts (timer1_toggle_count)+1,r25
	sts (timer1_toggle_count)+2,r26
	sts (timer1_toggle_count)+3,r27
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	rjmp .L64
.L59:
	sts 179,r14
	sts timer2_toggle_count,r24
	sts (timer2_toggle_count)+1,r25
	sts (timer2_toggle_count)+2,r26
	sts (timer2_toggle_count)+3,r27
	lds r24,112
	ori r24,lo8(2)
	sts 112,r24
	rjmp .L64
.L60:
	sts (152)+1,r15
	sts 152,r14
	sts timer3_toggle_count,r24
	sts (timer3_toggle_count)+1,r25
	sts (timer3_toggle_count)+2,r26
	sts (timer3_toggle_count)+3,r27
	lds r24,113
	ori r24,lo8(2)
	sts 113,r24
	rjmp .L64
.L61:
	sts (168)+1,r15
	sts 168,r14
	sts timer4_toggle_count,r24
	sts (timer4_toggle_count)+1,r25
	sts (timer4_toggle_count)+2,r26
	sts (timer4_toggle_count)+3,r27
	lds r24,114
	ori r24,lo8(2)
	sts 114,r24
	rjmp .L64
.L68:
	sts (296)+1,r15
	sts 296,r14
	sts timer5_toggle_count,r24
	sts (timer5_toggle_count)+1,r25
	sts (timer5_toggle_count)+2,r26
	sts (timer5_toggle_count)+3,r27
	lds r24,115
	ori r24,lo8(2)
	sts 115,r24
	rjmp .L64
.L43:
	ldi r24,lo8(4)
	rjmp .L47
.L64:
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r3
	pop r2
	ret
	.size	_Z4tonehjm, .-_Z4tonehjm
.global	timer0_toggle_count
	.section	.bss.timer0_toggle_count,"aw",@nobits
	.type	timer0_toggle_count, @object
	.size	timer0_toggle_count, 4
timer0_toggle_count:
	.skip 4,0
.global	timer0_pin_port
	.section	.bss.timer0_pin_port,"aw",@nobits
	.type	timer0_pin_port, @object
	.size	timer0_pin_port, 2
timer0_pin_port:
	.skip 2,0
.global	timer0_pin_mask
	.section	.bss.timer0_pin_mask,"aw",@nobits
	.type	timer0_pin_mask, @object
	.size	timer0_pin_mask, 1
timer0_pin_mask:
	.skip 1,0
.global	timer1_toggle_count
	.section	.bss.timer1_toggle_count,"aw",@nobits
	.type	timer1_toggle_count, @object
	.size	timer1_toggle_count, 4
timer1_toggle_count:
	.skip 4,0
.global	timer1_pin_port
	.section	.bss.timer1_pin_port,"aw",@nobits
	.type	timer1_pin_port, @object
	.size	timer1_pin_port, 2
timer1_pin_port:
	.skip 2,0
.global	timer1_pin_mask
	.section	.bss.timer1_pin_mask,"aw",@nobits
	.type	timer1_pin_mask, @object
	.size	timer1_pin_mask, 1
timer1_pin_mask:
	.skip 1,0
.global	timer2_toggle_count
	.section	.bss.timer2_toggle_count,"aw",@nobits
	.type	timer2_toggle_count, @object
	.size	timer2_toggle_count, 4
timer2_toggle_count:
	.skip 4,0
.global	timer2_pin_port
	.section	.bss.timer2_pin_port,"aw",@nobits
	.type	timer2_pin_port, @object
	.size	timer2_pin_port, 2
timer2_pin_port:
	.skip 2,0
.global	timer2_pin_mask
	.section	.bss.timer2_pin_mask,"aw",@nobits
	.type	timer2_pin_mask, @object
	.size	timer2_pin_mask, 1
timer2_pin_mask:
	.skip 1,0
.global	timer3_toggle_count
	.section	.bss.timer3_toggle_count,"aw",@nobits
	.type	timer3_toggle_count, @object
	.size	timer3_toggle_count, 4
timer3_toggle_count:
	.skip 4,0
.global	timer3_pin_port
	.section	.bss.timer3_pin_port,"aw",@nobits
	.type	timer3_pin_port, @object
	.size	timer3_pin_port, 2
timer3_pin_port:
	.skip 2,0
.global	timer3_pin_mask
	.section	.bss.timer3_pin_mask,"aw",@nobits
	.type	timer3_pin_mask, @object
	.size	timer3_pin_mask, 1
timer3_pin_mask:
	.skip 1,0
.global	timer4_toggle_count
	.section	.bss.timer4_toggle_count,"aw",@nobits
	.type	timer4_toggle_count, @object
	.size	timer4_toggle_count, 4
timer4_toggle_count:
	.skip 4,0
.global	timer4_pin_port
	.section	.bss.timer4_pin_port,"aw",@nobits
	.type	timer4_pin_port, @object
	.size	timer4_pin_port, 2
timer4_pin_port:
	.skip 2,0
.global	timer4_pin_mask
	.section	.bss.timer4_pin_mask,"aw",@nobits
	.type	timer4_pin_mask, @object
	.size	timer4_pin_mask, 1
timer4_pin_mask:
	.skip 1,0
.global	timer5_toggle_count
	.section	.bss.timer5_toggle_count,"aw",@nobits
	.type	timer5_toggle_count, @object
	.size	timer5_toggle_count, 4
timer5_toggle_count:
	.skip 4,0
.global	timer5_pin_port
	.section	.bss.timer5_pin_port,"aw",@nobits
	.type	timer5_pin_port, @object
	.size	timer5_pin_port, 2
timer5_pin_port:
	.skip 2,0
.global	timer5_pin_mask
	.section	.bss.timer5_pin_mask,"aw",@nobits
	.type	timer5_pin_mask, @object
	.size	timer5_pin_mask, 1
timer5_pin_mask:
	.skip 1,0
	.section	.data._ZL9tone_pins,"aw",@progbits
	.type	_ZL9tone_pins, @object
	.size	_ZL9tone_pins, 1
_ZL9tone_pins:
	.byte	-1
	.section	.progmem.data,"a",@progbits
	.type	_ZL21tone_pin_to_timer_PGM, @object
	.size	_ZL21tone_pin_to_timer_PGM, 1
_ZL21tone_pin_to_timer_PGM:
	.byte	2
