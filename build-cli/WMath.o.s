	.file	"WMath.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._Z3maplllll,"ax",@progbits
.global	_Z3maplllll
	.type	_Z3maplllll, @function
_Z3maplllll:
	push r2
	push r3
	push r4
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
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
	movw r6,r22
	movw r8,r24
	movw r2,r18
	movw r4,r20
	ldd r22,Y+22
	ldd r23,Y+23
	ldd r24,Y+24
	ldd r25,Y+25
	sub r22,r10
	sbc r23,r11
	sbc r24,r12
	sbc r25,r13
	sub r6,r18
	sbc r7,r19
	sbc r8,r20
	sbc r9,r21
	movw r20,r8
	movw r18,r6
	call __mulsi3
	sub r14,r2
	sbc r15,r3
	sbc r16,r4
	sbc r17,r5
	movw r20,r16
	movw r18,r14
	call __divmodsi4
	add r18,r10
	adc r19,r11
	adc r20,r12
	adc r21,r13
	movw r22,r18
	movw r24,r20
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	_Z3maplllll, .-_Z3maplllll
	.section	.text._Z8makeWordj,"ax",@progbits
.global	_Z8makeWordj
	.type	_Z8makeWordj, @function
_Z8makeWordj:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	_Z8makeWordj, .-_Z8makeWordj
	.section	.text._Z8makeWordhh,"ax",@progbits
.global	_Z8makeWordhh
	.type	_Z8makeWordhh, @function
_Z8makeWordhh:
/* prologue: function */
/* frame size = 0 */
	ldi r23,lo8(0)
	mov r19,r24
	ldi r18,lo8(0)
	or r22,r18
	or r23,r19
	movw r24,r22
/* epilogue start */
	ret
	.size	_Z8makeWordhh, .-_Z8makeWordhh
	.section	.text._Z6randoml,"ax",@progbits
.global	_Z6randoml
	.type	_Z6randoml, @function
_Z6randoml:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r22
	movw r16,r24
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L8
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
	rjmp .L9
.L8:
	call random
	movw r20,r16
	movw r18,r14
	call __divmodsi4
	movw r20,r24
	movw r24,r22
	movw r26,r20
	movw r18,r24
	movw r20,r26
.L9:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_Z6randoml, .-_Z6randoml
	.section	.text._Z6randomll,"ax",@progbits
.global	_Z6randomll
	.type	_Z6randomll, @function
_Z6randomll:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r22
	movw r16,r24
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brge .L12
	sub r18,r22
	sbc r19,r23
	sbc r20,r24
	sbc r21,r25
	movw r24,r20
	movw r22,r18
	call _Z6randoml
	add r14,r22
	adc r15,r23
	adc r16,r24
	adc r17,r25
.L12:
	movw r22,r14
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_Z6randomll, .-_Z6randomll
	.section	.text._Z10randomSeedj,"ax",@progbits
.global	_Z10randomSeedj
	.type	_Z10randomSeedj, @function
_Z10randomSeedj:
/* prologue: function */
/* frame size = 0 */
	sbiw r24,0
	breq .L16
	movw r22,r24
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	call srandom
.L16:
	ret
	.size	_Z10randomSeedj, .-_Z10randomSeedj
