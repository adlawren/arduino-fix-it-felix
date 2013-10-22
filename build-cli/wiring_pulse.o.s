	.file	"wiring_pulse.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.pulseIn,"ax",@progbits
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r26,r24
	ldi r27,lo8(0)
	movw r24,r26
	subi r24,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r25,hi8(-(digital_pin_to_bit_mask_PGM))
	movw r30,r24
/* #APP */
 ;  37 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r8, Z
	
 ;  0 "" 2
/* #NOAPP */
	subi r26,lo8(-(digital_pin_to_port_PGM))
	sbci r27,hi8(-(digital_pin_to_port_PGM))
	movw r30,r26
/* #APP */
 ;  38 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	brne .L2
	clr r9
	rjmp .L3
.L2:
	mov r9,r8
.L3:
	ldi r22,lo8(268435455)
	mov r10,r22
	ldi r22,hi8(268435455)
	mov r11,r22
	ldi r22,hlo8(268435455)
	mov r12,r22
	ldi r22,hhi8(268435455)
	mov r13,r22
	and r10,r18
	and r11,r19
	and r12,r20
	and r13,r21
	mov r22,r24
	ldi r23,lo8(0)
	lsl r22
	rol r23
	subi r22,lo8(-(port_to_input_PGM))
	sbci r23,hi8(-(port_to_input_PGM))
	clr r14
	clr r15
	movw r16,r14
	movw r30,r22
/* #APP */
 ;  48 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L4
.L6:
	cp r14,r10
	cpc r15,r11
	cpc r16,r12
	cpc r17,r13
	brne .+2
	rjmp .L5
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	adc r16,__zero_reg__
	adc r17,__zero_reg__
.L4:
	ld r24,X
	and r24,r8
	cp r24,r9
	breq .L6
	rjmp .L15
.L8:
	cp r14,r10
	cpc r15,r11
	cpc r16,r12
	cpc r17,r13
	brne .+2
	rjmp .L5
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	adc r16,__zero_reg__
	adc r17,__zero_reg__
	rjmp .L14
.L15:
	movw r30,r22
/* #APP */
 ;  53 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r26, Z+
	lpm r27, Z
	
 ;  0 "" 2
/* #NOAPP */
.L14:
	ld r24,X
	and r24,r8
	cp r24,r9
	brne .L8
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
	movw r30,r22
/* #APP */
 ;  58 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r28, Z+
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L9
.L10:
	movw r26,r20
	movw r24,r18
	add r24,r14
	adc r25,r15
	adc r26,r16
	adc r27,r17
	cp r24,r10
	cpc r25,r11
	cpc r26,r12
	cpc r27,r13
	breq .L5
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sbci r20,hlo8(-(1))
	sbci r21,hhi8(-(1))
.L9:
	ld r24,Y
	and r24,r8
	cp r24,r9
	breq .L10
	movw r24,r20
	movw r22,r18
	ldi r18,lo8(21)
	ldi r19,hi8(21)
	ldi r20,hlo8(21)
	ldi r21,hhi8(21)
	call __mulsi3
	movw r18,r22
	movw r20,r24
	subi r18,lo8(-(16))
	sbci r19,hi8(-(16))
	sbci r20,hlo8(-(16))
	sbci r21,hhi8(-(16))
	ldi r24,4
1:	lsr r21
	ror r20
	ror r19
	ror r18
	dec r24
	brne 1b
	rjmp .L11
.L5:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
.L11:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	pop r29
	pop r28
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
	ret
	.size	pulseIn, .-pulseIn
