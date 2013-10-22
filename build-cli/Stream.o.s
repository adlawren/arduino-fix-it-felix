	.file	"Stream.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._ZN6Stream10setTimeoutEm,"ax",@progbits
.global	_ZN6Stream10setTimeoutEm
	.type	_ZN6Stream10setTimeoutEm, @function
_ZN6Stream10setTimeoutEm:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+4,r20
	std Z+5,r21
	std Z+6,r22
	std Z+7,r23
/* epilogue start */
	ret
	.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
	.section	.text._ZN6Stream9timedPeekEv,"ax",@progbits
.global	_ZN6Stream9timedPeekEv
	.type	_ZN6Stream9timedPeekEv, @function
_ZN6Stream9timedPeekEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L5:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+8
	ldd r31,Z+9
	mov r30,__tmp_reg__
	movw r24,r28
	eicall
	movw r18,r24
	sbrs r25,7
	rjmp .L4
	call millis
	ldd r18,Y+8
	ldd r19,Y+9
	ldd r20,Y+10
	ldd r21,Y+11
	sub r22,r18
	sbc r23,r19
	sbc r24,r20
	sbc r25,r21
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r20,Y+6
	ldd r21,Y+7
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brlo .L5
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
.L4:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
	.section	.text._ZN6Stream13peekNextDigitEv,"ax",@progbits
.global	_ZN6Stream13peekNextDigitEv
	.type	_ZN6Stream13peekNextDigitEv, @function
_ZN6Stream13peekNextDigitEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
.L10:
	movw r24,r28
	call _ZN6Stream9timedPeekEv
	movw r18,r24
	sbrc r25,7
	rjmp .L9
	cpi r24,45
	cpc r25,__zero_reg__
	breq .L9
	sbiw r24,48
	sbiw r24,10
	brlo .L9
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	eicall
	rjmp .L10
.L9:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
	.section	.text._ZN6Stream10parseFloatEc,"ax",@progbits
.global	_ZN6Stream10parseFloatEc
	.type	_ZN6Stream10parseFloatEc, @function
_ZN6Stream10parseFloatEc:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	mov r6,r22
	call _ZN6Stream13peekNextDigitEv
	mov r13,r24
	sbrs r24,7
	rjmp .L13
	ldi r22,lo8(0x0)
	ldi r23,hi8(0x0)
	ldi r24,hlo8(0x0)
	ldi r25,hhi8(0x0)
	rjmp .L14
.L13:
	clr r7
	clr r12
	clr r14
	clr r15
	movw r16,r14
	mov __tmp_reg__,r31
	ldi r31,lo8(0x3f800000)
	mov r8,r31
	ldi r31,hi8(0x3f800000)
	mov r9,r31
	ldi r31,hlo8(0x3f800000)
	mov r10,r31
	ldi r31,hhi8(0x3f800000)
	mov r11,r31
	mov r31,__tmp_reg__
.L24:
	cp r13,r6
	breq .L15
	ldi r24,lo8(45)
	cp r13,r24
	brne .L16
	clr r7
	inc r7
	rjmp .L15
.L16:
	ldi r25,lo8(46)
	cp r13,r25
	brne .L17
	clr r12
	inc r12
	rjmp .L15
.L17:
	mov r24,r13
	subi r24,lo8(-(-48))
	cpi r24,lo8(10)
	brsh .L15
	movw r24,r16
	movw r22,r14
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	ldi r20,hlo8(10)
	ldi r21,hhi8(10)
	call __mulsi3
	movw r14,r22
	movw r16,r24
	mov r24,r13
	clr r25
	sbrc r24,7
	com r25
	mov r26,r25
	mov r27,r25
	add r14,r24
	adc r15,r25
	adc r16,r26
	adc r17,r27
	ldi r24,lo8(-48)
	ldi r25,hi8(-48)
	ldi r26,hlo8(-48)
	ldi r27,hhi8(-48)
	add r14,r24
	adc r15,r25
	adc r16,r26
	adc r17,r27
	tst r12
	breq .L15
	movw r24,r10
	movw r22,r8
	ldi r18,lo8(0x3dcccccd)
	ldi r19,hi8(0x3dcccccd)
	ldi r20,hlo8(0x3dcccccd)
	ldi r21,hhi8(0x3dcccccd)
	call __mulsf3
	movw r8,r22
	movw r10,r24
.L15:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	eicall
	movw r24,r28
	call _ZN6Stream9timedPeekEv
	mov r25,r24
	mov r13,r24
	subi r24,lo8(-(-48))
	cpi r24,lo8(10)
	brsh .+2
	rjmp .L24
	cpi r25,lo8(46)
	brne .+2
	rjmp .L24
	cp r25,r6
	brne .+2
	rjmp .L24
	tst r7
	breq .L19
	com r17
	com r16
	com r15
	com r14
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	adc r16,__zero_reg__
	adc r17,__zero_reg__
.L19:
	tst r12
	breq .L20
	movw r24,r16
	movw r22,r14
	call __floatsisf
	movw r20,r10
	movw r18,r8
	call __mulsf3
	rjmp .L14
.L20:
	movw r24,r16
	movw r22,r14
	call __floatsisf
.L14:
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
	pop r7
	pop r6
	ret
	.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
	.section	.text._ZN6Stream10parseFloatEv,"ax",@progbits
.global	_ZN6Stream10parseFloatEv
	.type	_ZN6Stream10parseFloatEv, @function
_ZN6Stream10parseFloatEv:
/* prologue: function */
/* frame size = 0 */
	ldi r22,lo8(1)
	call _ZN6Stream10parseFloatEc
/* epilogue start */
	ret
	.size	_ZN6Stream10parseFloatEv, .-_ZN6Stream10parseFloatEv
	.section	.text._ZN6Stream8parseIntEc,"ax",@progbits
.global	_ZN6Stream8parseIntEc
	.type	_ZN6Stream8parseIntEc, @function
_ZN6Stream8parseIntEc:
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
	movw r12,r24
	mov r11,r22
	call _ZN6Stream13peekNextDigitEv
	movw r28,r24
	sbrs r25,7
	rjmp .L28
	clr r14
	clr r15
	movw r16,r14
	rjmp .L29
.L28:
	clr r9
	clr r14
	clr r15
	movw r16,r14
	mov r10,r11
	clr r11
	sbrc r10,7
	com r11
.L36:
	cp r28,r10
	cpc r29,r11
	breq .L30
	cpi r28,45
	cpc r29,__zero_reg__
	brne .L31
	clr r9
	inc r9
	rjmp .L30
.L31:
	movw r24,r28
	sbiw r24,48
	sbiw r24,10
	brsh .L30
	movw r24,r16
	movw r22,r14
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	ldi r20,hlo8(10)
	ldi r21,hhi8(10)
	call __mulsi3
	movw r14,r22
	movw r16,r24
	movw r24,r28
	clr r26
	sbrc r25,7
	com r26
	mov r27,r26
	add r14,r24
	adc r15,r25
	adc r16,r26
	adc r17,r27
	ldi r24,lo8(-48)
	ldi r25,hi8(-48)
	ldi r26,hlo8(-48)
	ldi r27,hhi8(-48)
	add r14,r24
	adc r15,r25
	adc r16,r26
	adc r17,r27
.L30:
	movw r26,r12
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r12
	eicall
	movw r24,r12
	call _ZN6Stream9timedPeekEv
	movw r28,r24
	sbiw r24,48
	sbiw r24,10
	brlo .L36
	cp r28,r10
	cpc r29,r11
	breq .L36
	tst r9
	breq .L29
	com r17
	com r16
	com r15
	com r14
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	adc r16,__zero_reg__
	adc r17,__zero_reg__
.L29:
	movw r22,r14
	movw r24,r16
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
	ret
	.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
	.section	.text._ZN6Stream8parseIntEv,"ax",@progbits
.global	_ZN6Stream8parseIntEv
	.type	_ZN6Stream8parseIntEv, @function
_ZN6Stream8parseIntEv:
/* prologue: function */
/* frame size = 0 */
	ldi r22,lo8(1)
	call _ZN6Stream8parseIntEc
/* epilogue start */
	ret
	.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
	.section	.text._ZN6Stream9timedReadEv,"ax",@progbits
.global	_ZN6Stream9timedReadEv
	.type	_ZN6Stream9timedReadEv, @function
_ZN6Stream9timedReadEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L41:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	eicall
	movw r18,r24
	sbrs r25,7
	rjmp .L40
	call millis
	ldd r18,Y+8
	ldd r19,Y+9
	ldd r20,Y+10
	ldd r21,Y+11
	sub r22,r18
	sbc r23,r19
	sbc r24,r20
	sbc r25,r21
	ldd r18,Y+4
	ldd r19,Y+5
	ldd r20,Y+6
	ldd r21,Y+7
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brlo .L41
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
.L40:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6Stream9timedReadEv, .-_ZN6Stream9timedReadEv
	.data
.LC0:
	.string	""
	.section	.text._ZN6Stream15readStringUntilEc,"ax",@progbits
.global	_ZN6Stream15readStringUntilEc
	.type	_ZN6Stream15readStringUntilEc, @function
_ZN6Stream15readStringUntilEc:
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r16,r24
	mov r15,r25
	movw r12,r22
	mov r17,r20
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	movw r24,r12
	call _ZN6Stream9timedReadEv
	movw r22,r24
	mov r28,r17
	clr r29
	sbrc r28,7
	com r29
	rjmp .L45
.L47:
	mov r24,r16
	mov r25,r15
	call _ZN6String6concatEc
	movw r24,r12
	call _ZN6Stream9timedReadEv
	movw r22,r24
.L45:
	sbrc r23,7
	rjmp .L44
	cp r22,r28
	cpc r23,r29
	brne .L47
.L44:
	mov r24,r16
	mov r25,r15
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	ret
	.size	_ZN6Stream15readStringUntilEc, .-_ZN6Stream15readStringUntilEc
	.section	.text._ZN6Stream10readStringEv,"ax",@progbits
.global	_ZN6Stream10readStringEv
	.type	_ZN6Stream10readStringEv, @function
_ZN6Stream10readStringEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	movw r28,r22
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	rjmp .L53
.L51:
	mov r24,r17
	mov r25,r16
	call _ZN6String6concatEc
.L53:
	movw r24,r28
	call _ZN6Stream9timedReadEv
	movw r22,r24
	sbrs r25,7
	rjmp .L51
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream10readStringEv, .-_ZN6Stream10readStringEv
	.section	.text._ZN6Stream14readBytesUntilEcPcj,"ax",@progbits
.global	_ZN6Stream14readBytesUntilEcPcj
	.type	_ZN6Stream14readBytesUntilEcPcj, @function
_ZN6Stream14readBytesUntilEcPcj:
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
	movw r10,r24
	movw r14,r20
	movw r16,r18
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L55
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L56
.L55:
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	mov r12,r22
	clr r13
	sbrc r12,7
	com r13
	rjmp .L57
.L58:
	movw r24,r10
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L56
	cp r24,r12
	cpc r25,r13
	breq .L56
	movw r30,r14
	st Z+,r24
	movw r14,r30
	adiw r28,1
.L57:
	cp r28,r16
	cpc r29,r17
	brlo .L58
.L56:
	movw r24,r28
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
	ret
	.size	_ZN6Stream14readBytesUntilEcPcj, .-_ZN6Stream14readBytesUntilEcPcj
	.section	.text._ZN6Stream9readBytesEPcj,"ax",@progbits
.global	_ZN6Stream9readBytesEPcj
	.type	_ZN6Stream9readBytesEPcj, @function
_ZN6Stream9readBytesEPcj:
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
	movw r12,r24
	movw r16,r22
	movw r14,r20
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L61
.L63:
	movw r24,r12
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L62
	movw r30,r16
	st Z+,r24
	movw r16,r30
	adiw r28,1
.L61:
	cp r28,r14
	cpc r29,r15
	brlo .L63
.L62:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN6Stream9readBytesEPcj, .-_ZN6Stream9readBytesEPcj
	.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",@progbits
.global	_ZN6Stream9findUntilEPcjS0_j
	.type	_ZN6Stream9findUntilEPcjS0_j, @function
_ZN6Stream9findUntilEPcjS0_j:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r6,r24
	movw r14,r22
	movw r8,r20
	movw r10,r18
	movw r12,r16
	movw r30,r22
	ld r24,Z
	tst r24
	breq .L66
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L70
.L72:
	movw r30,r14
	add r30,r28
	adc r31,r29
	ld r24,Z
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	breq .L68
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L68:
	movw r30,r14
	add r30,r28
	adc r31,r29
	ld r24,Z
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	brne .L69
	adiw r28,1
	cp r28,r8
	cpc r29,r9
	brsh .L66
.L69:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .L70
	movw r30,r10
	add r30,r16
	adc r31,r17
	ld r24,Z
	clr r25
	sbrc r24,7
	com r25
	cp r18,r24
	cpc r19,r25
	brne .L70
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	cp r16,r12
	cpc r17,r13
	brlo .L75
	rjmp .L71
.L70:
	ldi r16,lo8(0)
	ldi r17,hi8(0)
.L75:
	movw r24,r6
	call _ZN6Stream9timedReadEv
	movw r18,r24
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L72
	rjmp .L71
.L66:
	ldi r24,lo8(1)
	rjmp .L73
.L71:
	ldi r24,lo8(0)
.L73:
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
	pop r7
	pop r6
	ret
	.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
	.section	.text._ZN6Stream9findUntilEPcS0_,"ax",@progbits
.global	_ZN6Stream9findUntilEPcS0_
	.type	_ZN6Stream9findUntilEPcS0_, @function
_ZN6Stream9findUntilEPcS0_:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r18,r20
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	movw r20,r26
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	sub r20,r22
	sbc r21,r23
	movw r26,r18
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r18
	sbc r27,r19
	movw r16,r26
	call _ZN6Stream9findUntilEPcjS0_j
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
	.section	.text._ZN6Stream4findEPc,"ax",@progbits
.global	_ZN6Stream4findEPc
	.type	_ZN6Stream4findEPc, @function
_ZN6Stream4findEPc:
/* prologue: function */
/* frame size = 0 */
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call _ZN6Stream9findUntilEPcS0_
/* epilogue start */
	ret
	.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
	.section	.text._ZN6Stream4findEPcj,"ax",@progbits
.global	_ZN6Stream4findEPcj
	.type	_ZN6Stream4findEPcj, @function
_ZN6Stream4findEPcj:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	call _ZN6Stream9findUntilEPcjS0_j
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
