	.file	"wiring_shift.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.shiftOut,"ax",@progbits
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
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
	mov r14,r24
	mov r15,r22
	mov r11,r20
	ldi r28,lo8(7)
	ldi r29,hi8(7)
	mov r16,r18
	ldi r17,lo8(0)
	ldi r24,lo8(7)
	mov r12,r24
	mov r13,__zero_reg__
.L4:
	tst r11
	brne .L2
	movw r22,r12
	sub r22,r28
	sbc r23,r29
	movw r24,r16
	rjmp 2f
1:	asr r25
	ror r24
2:	dec r22
	brpl 1b
	movw r22,r24
	rjmp .L7
.L2:
	movw r22,r16
	mov r0,r28
	rjmp 2f
1:	asr r23
	ror r22
2:	dec r0
	brpl 1b
.L7:
	andi r22,lo8(1)
	mov r24,r14
	call digitalWrite
	mov r24,r15
	ldi r22,lo8(1)
	call digitalWrite
	mov r24,r15
	ldi r22,lo8(0)
	call digitalWrite
	sbiw r28,1
	ldi r25,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r25
	brne .L4
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
	ret
	.size	shiftOut, .-shiftOut
	.section	.text.shiftIn,"ax",@progbits
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
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
	mov r15,r24
	mov r16,r22
	mov r14,r20
	ldi r17,lo8(0)
	ldi r28,lo8(7)
	ldi r29,hi8(7)
	ldi r25,lo8(7)
	mov r12,r25
	mov r13,__zero_reg__
.L11:
	mov r24,r16
	ldi r22,lo8(1)
	call digitalWrite
	tst r14
	brne .L9
	mov r24,r15
	call digitalRead
	movw r18,r12
	sub r18,r28
	sbc r19,r29
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r18
	brpl 1b
	rjmp .L14
.L9:
	mov r24,r15
	call digitalRead
	mov r0,r28
	rjmp 2f
1:	lsl r24
	rol r25
2:	dec r0
	brpl 1b
.L14:
	or r17,r24
	mov r24,r16
	ldi r22,lo8(0)
	call digitalWrite
	sbiw r28,1
	ldi r24,hi8(-1)
	cpi r28,lo8(-1)
	cpc r29,r24
	brne .L11
	mov r24,r17
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
	.size	shiftIn, .-shiftIn
