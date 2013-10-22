	.file	"IPAddress.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._ZN9IPAddressC2Ehhhh,"ax",@progbits
.global	_ZN9IPAddressC2Ehhhh
	.type	_ZN9IPAddressC2Ehhhh, @function
_ZN9IPAddressC2Ehhhh:
	push r16
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r22
	std Z+3,r20
	std Z+4,r18
	std Z+5,r16
/* epilogue start */
	pop r16
	ret
	.size	_ZN9IPAddressC2Ehhhh, .-_ZN9IPAddressC2Ehhhh
	.section	.text._ZN9IPAddressC1Ehhhh,"ax",@progbits
.global	_ZN9IPAddressC1Ehhhh
	.type	_ZN9IPAddressC1Ehhhh, @function
_ZN9IPAddressC1Ehhhh:
	push r16
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r22
	std Z+3,r20
	std Z+4,r18
	std Z+5,r16
/* epilogue start */
	pop r16
	ret
	.size	_ZN9IPAddressC1Ehhhh, .-_ZN9IPAddressC1Ehhhh
	.section	.text._GLOBAL__I__ZN9IPAddressC2Ev,"ax",@progbits
	.type	_GLOBAL__I__ZN9IPAddressC2Ev, @function
_GLOBAL__I__ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	sts (_ZL11INADDR_NONE)+1,r25
	sts _ZL11INADDR_NONE,r24
	sts _ZL11INADDR_NONE+2,__zero_reg__
	sts _ZL11INADDR_NONE+3,__zero_reg__
	sts _ZL11INADDR_NONE+4,__zero_reg__
	sts _ZL11INADDR_NONE+5,__zero_reg__
/* epilogue start */
	ret
	.size	_GLOBAL__I__ZN9IPAddressC2Ev, .-_GLOBAL__I__ZN9IPAddressC2Ev
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.word	gs(_GLOBAL__I__ZN9IPAddressC2Ev)
	.section	.text._ZNK9IPAddress7printToER5Print,"ax",@progbits
.global	_ZNK9IPAddress7printToER5Print
	.type	_ZNK9IPAddress7printToER5Print, @function
_ZNK9IPAddress7printToER5Print:
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
	movw r8,r24
	movw r12,r22
	movw r14,r24
	clr r10
	clr r11
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L8:
	movw r24,r12
	movw r30,r14
	ldd r22,Z+2
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call _ZN5Print5printEhi
	movw r16,r24
	movw r24,r12
	ldi r22,lo8(46)
	call _ZN5Print5printEc
	add r16,r24
	adc r17,r25
	add r10,r16
	adc r11,r17
	adiw r28,1
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	cpi r28,3
	cpc r29,__zero_reg__
	brne .L8
	movw r24,r12
	movw r30,r8
	ldd r22,Z+5
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call _ZN5Print5printEhi
	movw r18,r10
	add r18,r24
	adc r19,r25
	movw r24,r18
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
	.size	_ZNK9IPAddress7printToER5Print, .-_ZNK9IPAddress7printToER5Print
	.section	.text._ZN9IPAddresseqEPKh,"ax",@progbits
.global	_ZN9IPAddresseqEPKh
	.type	_ZN9IPAddresseqEPKh, @function
_ZN9IPAddresseqEPKh:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	movw r24,r22
	movw r22,r18
	ldi r20,lo8(4)
	ldi r21,hi8(4)
	call memcmp
	movw r18,r24
	ldi r24,lo8(0)
	or r18,r19
	brne .L12
	ldi r24,lo8(1)
.L12:
	ret
	.size	_ZN9IPAddresseqEPKh, .-_ZN9IPAddresseqEPKh
	.section	.text._ZN9IPAddressaSEm,"ax",@progbits
.global	_ZN9IPAddressaSEm
	.type	_ZN9IPAddressaSEm, @function
_ZN9IPAddressaSEm:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
	movw r30,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN9IPAddressaSEm, .-_ZN9IPAddressaSEm
	.section	.text._ZN9IPAddressaSEPKh,"ax",@progbits
.global	_ZN9IPAddressaSEPKh
	.type	_ZN9IPAddressaSEPKh, @function
_ZN9IPAddressaSEPKh:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	movw r30,r22
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r30,r18
	std Z+2,r24
	std Z+3,r25
	std Z+4,r26
	std Z+5,r27
	movw r24,r18
/* epilogue start */
	ret
	.size	_ZN9IPAddressaSEPKh, .-_ZN9IPAddressaSEPKh
	.section	.text._ZN9IPAddressC1EPKh,"ax",@progbits
.global	_ZN9IPAddressC1EPKh
	.type	_ZN9IPAddressC1EPKh, @function
_ZN9IPAddressC1EPKh:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	movw r30,r22
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	movw r26,r18
	st X+,r24
	st X,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r30,r18
	std Z+2,r24
	std Z+3,r25
	std Z+4,r26
	std Z+5,r27
/* epilogue start */
	ret
	.size	_ZN9IPAddressC1EPKh, .-_ZN9IPAddressC1EPKh
	.section	.text._ZN9IPAddressC2EPKh,"ax",@progbits
.global	_ZN9IPAddressC2EPKh
	.type	_ZN9IPAddressC2EPKh, @function
_ZN9IPAddressC2EPKh:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	movw r30,r22
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	movw r26,r18
	st X+,r24
	st X,r25
	ld r24,Z
	ldd r25,Z+1
	ldd r26,Z+2
	ldd r27,Z+3
	movw r30,r18
	std Z+2,r24
	std Z+3,r25
	std Z+4,r26
	std Z+5,r27
/* epilogue start */
	ret
	.size	_ZN9IPAddressC2EPKh, .-_ZN9IPAddressC2EPKh
	.section	.text._ZN9IPAddressC1Em,"ax",@progbits
.global	_ZN9IPAddressC1Em
	.type	_ZN9IPAddressC1Em, @function
_ZN9IPAddressC1Em:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN9IPAddressC1Em, .-_ZN9IPAddressC1Em
	.section	.text._ZN9IPAddressC2Em,"ax",@progbits
.global	_ZN9IPAddressC2Em
	.type	_ZN9IPAddressC2Em, @function
_ZN9IPAddressC2Em:
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN9IPAddressC2Em, .-_ZN9IPAddressC2Em
	.section	.text._ZN9IPAddressC1Ev,"ax",@progbits
.global	_ZN9IPAddressC1Ev
	.type	_ZN9IPAddressC1Ev, @function
_ZN9IPAddressC1Ev:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
/* epilogue start */
	ret
	.size	_ZN9IPAddressC1Ev, .-_ZN9IPAddressC1Ev
	.section	.text._ZN9IPAddressC2Ev,"ax",@progbits
.global	_ZN9IPAddressC2Ev
	.type	_ZN9IPAddressC2Ev, @function
_ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
/* epilogue start */
	ret
	.size	_ZN9IPAddressC2Ev, .-_ZN9IPAddressC2Ev
	.weak	_ZTV9IPAddress
	.section	.rodata._ZTV9IPAddress,"a",@progbits
	.type	_ZTV9IPAddress, @object
	.size	_ZTV9IPAddress, 6
_ZTV9IPAddress:
	.word	0
	.word	0
	.word	gs(_ZNK9IPAddress7printToER5Print)
	.section	.bss._ZL11INADDR_NONE,"aw",@nobits
	.type	_ZL11INADDR_NONE, @object
	.size	_ZL11INADDR_NONE, 6
_ZL11INADDR_NONE:
	.skip 6,0
	.weak	_ZTV9Printable
	.section	.rodata._ZTV9Printable,"a",@progbits
	.type	_ZTV9Printable, @object
	.size	_ZTV9Printable, 6
_ZTV9Printable:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
