	.file	"Print.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._ZN5Print5writeEPKhj,"ax",@progbits
.global	_ZN5Print5writeEPKhj
	.type	_ZN5Print5writeEPKhj, @function
_ZN5Print5writeEPKhj:
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
	movw r14,r24
	movw r12,r22
	movw r16,r20
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L2
.L3:
	movw r26,r12
	ld r22,X+
	movw r12,r26
	movw r26,r14
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r14
	eicall
	add r28,r24
	adc r29,r25
	subi r16,lo8(-(-1))
	sbci r17,hi8(-(-1))
.L2:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L3
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
	.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
	.section	.text._ZN5Print5printEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print5printEPK19__FlashStringHelper
	.type	_ZN5Print5printEPK19__FlashStringHelper, @function
_ZN5Print5printEPK19__FlashStringHelper:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	movw r16,r22
	ldi r28,lo8(0)
	ldi r29,hi8(0)
.L7:
	movw r30,r16
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
/* #APP */
 ;  47 "/home/cmput296/arduino-ua/arduino-1.0.1/hardware/arduino/cores/arduino/Print.cpp" 1
	lpm r22, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	breq .L6
	movw r26,r14
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r14
	eicall
	add r28,r24
	adc r29,r25
	rjmp .L7
.L6:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print5printEPK19__FlashStringHelper, .-_ZN5Print5printEPK19__FlashStringHelper
	.section	.text._ZN5Print5printEc,"ax",@progbits
.global	_ZN5Print5printEc
	.type	_ZN5Print5printEc, @function
_ZN5Print5printEc:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	eicall
/* epilogue start */
	ret
	.size	_ZN5Print5printEc, .-_ZN5Print5printEc
	.section	.text._ZN5Print5printERK9Printable,"ax",@progbits
.global	_ZN5Print5printERK9Printable
	.type	_ZN5Print5printERK9Printable, @function
_ZN5Print5printERK9Printable:
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	movw r26,r22
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r22
	movw r22,r18
	eicall
/* epilogue start */
	ret
	.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
	.section	.text._ZN5Print7printlnEv,"ax",@progbits
.global	_ZN5Print7printlnEv
	.type	_ZN5Print7printlnEv, @function
_ZN5Print7printlnEv:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r16,r24
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldi r22,lo8(13)
	eicall
	movw r14,r24
	movw r26,r16
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r16
	ldi r22,lo8(10)
	eicall
	movw r18,r24
	add r18,r14
	adc r19,r15
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
	.section	.text._ZN5Print7printlnEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print7printlnEPK19__FlashStringHelper
	.type	_ZN5Print7printlnEPK19__FlashStringHelper, @function
_ZN5Print7printlnEPK19__FlashStringHelper:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print5printEPK19__FlashStringHelper
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEPK19__FlashStringHelper, .-_ZN5Print7printlnEPK19__FlashStringHelper
	.section	.text._ZN5Print7printlnEc,"ax",@progbits
.global	_ZN5Print7printlnEc
	.type	_ZN5Print7printlnEc, @function
_ZN5Print7printlnEc:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	eicall
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
	.section	.text._ZN5Print7printlnERK9Printable,"ax",@progbits
.global	_ZN5Print7printlnERK9Printable
	.type	_ZN5Print7printlnERK9Printable, @function
_ZN5Print7printlnERK9Printable:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	movw r26,r22
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r22
	movw r22,r14
	eicall
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
	.section	.text._ZN5Print5writeEPKc,"ax",@progbits
	.weak	_ZN5Print5writeEPKc
	.type	_ZN5Print5writeEPKc, @function
_ZN5Print5writeEPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r28,r24
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	movw r20,r26
	eicall
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN5Print5writeEPKc, .-_ZN5Print5writeEPKc
	.section	.text._ZN5Print11printNumberEmh,"ax",@progbits
.global	_ZN5Print11printNumberEmh
	.type	_ZN5Print11printNumberEmh, @function
_ZN5Print11printNumberEmh:
	push r4
	push r5
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
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
	movw r4,r24
	mov r7,r20
	movw r24,r22
	cpi r18,lo8(2)
	brsh .L24
	ldi r18,lo8(10)
.L24:
	std Y+33,__zero_reg__
	ldi r19,lo8(33)
	mov r12,r19
	mov r13,__zero_reg__
	add r12,r28
	adc r13,r29
	mov r8,r18
	clr r9
	clr r10
	clr r11
.L28:
	mov r22,r7
	mov r23,r21
	movw r20,r10
	movw r18,r8
	call __udivmodsi4
	movw r14,r18
	movw r16,r20
	movw r24,r16
	movw r22,r14
	movw r20,r10
	movw r18,r8
	call __mulsi3
	mov r20,r7
	sub r20,r22
	sec
	sbc r12,__zero_reg__
	sbc r13,__zero_reg__
	cpi r20,lo8(10)
	brge .L25
	subi r20,lo8(-(48))
	rjmp .L26
.L25:
	subi r20,lo8(-(55))
.L26:
	movw r30,r12
	st Z,r20
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	cpc r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L27
	mov r7,r14
	mov r21,r15
	movw r24,r16
	rjmp .L28
.L27:
	movw r24,r4
	movw r22,r12
	call _ZN5Print5writeEPKc
/* epilogue start */
	adiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
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
	pop r5
	pop r4
	ret
	.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
	.section	.text._ZN5Print5printEmi,"ax",@progbits
.global	_ZN5Print5printEmi
	.type	_ZN5Print5printEmi, @function
_ZN5Print5printEmi:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L31
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
	eicall
	ret
.L31:
	call _ZN5Print11printNumberEmh
	ret
	.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
	.section	.text._ZN5Print7printlnEmi,"ax",@progbits
.global	_ZN5Print7printlnEmi
	.type	_ZN5Print7printlnEmi, @function
_ZN5Print7printlnEmi:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
	.section	.text._ZN5Print5printEji,"ax",@progbits
.global	_ZN5Print5printEji
	.type	_ZN5Print5printEji, @function
_ZN5Print5printEji:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r18,r20
	movw r14,r22
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEmi
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print5printEji, .-_ZN5Print5printEji
	.section	.text._ZN5Print7printlnEji,"ax",@progbits
.global	_ZN5Print7printlnEji
	.type	_ZN5Print7printlnEji, @function
_ZN5Print7printlnEji:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r12,r24
	movw r14,r22
	movw r18,r20
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r12
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
	.section	.text._ZN5Print5printEhi,"ax",@progbits
.global	_ZN5Print5printEhi
	.type	_ZN5Print5printEhi, @function
_ZN5Print5printEhi:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r18,r20
	mov r14,r22
	clr r15
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEmi
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
	.section	.text._ZN5Print7printlnEhi,"ax",@progbits
.global	_ZN5Print7printlnEhi
	.type	_ZN5Print7printlnEhi, @function
_ZN5Print7printlnEhi:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r12,r24
	mov r14,r22
	movw r18,r20
	clr r15
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r12
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
	.section	.text._ZN5Print5printEli,"ax",@progbits
.global	_ZN5Print5printEli
	.type	_ZN5Print5printEli, @function
_ZN5Print5printEli:
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
	movw r12,r20
	movw r14,r22
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L45
	ld r30,Y
	ldd r31,Y+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
	eicall
	rjmp .L50
.L45:
	cpi r18,10
	cpc r19,__zero_reg__
	brne .L51
	sbrs r23,7
	rjmp .L48
	ld r30,Y
	ldd r31,Y+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	ldi r22,lo8(45)
	eicall
	movw r16,r24
	clr r20
	clr r21
	movw r22,r20
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	movw r24,r28
	ldi r18,lo8(10)
	call _ZN5Print11printNumberEmh
	movw r18,r16
	add r18,r24
	adc r19,r25
	rjmp .L46
.L48:
	ldi r18,lo8(10)
.L51:
	call _ZN5Print11printNumberEmh
.L50:
	movw r18,r24
.L46:
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
	ret
	.size	_ZN5Print5printEli, .-_ZN5Print5printEli
	.section	.text._ZN5Print7printlnEli,"ax",@progbits
.global	_ZN5Print7printlnEli
	.type	_ZN5Print7printlnEli, @function
_ZN5Print7printlnEli:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print5printEli
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
	.section	.text._ZN5Print5printEii,"ax",@progbits
.global	_ZN5Print5printEii
	.type	_ZN5Print5printEii, @function
_ZN5Print5printEii:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r22
	movw r18,r20
	clr r16
	sbrc r15,7
	com r16
	mov r17,r16
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEli
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print5printEii, .-_ZN5Print5printEii
	.section	.text._ZN5Print7printlnEii,"ax",@progbits
.global	_ZN5Print7printlnEii
	.type	_ZN5Print7printlnEii, @function
_ZN5Print7printlnEii:
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r12,r24
	movw r14,r22
	movw r18,r20
	clr r16
	sbrc r15,7
	com r16
	mov r17,r16
	movw r22,r16
	movw r20,r14
	call _ZN5Print5printEli
	movw r16,r24
	movw r24,r12
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
	.section	.text._ZN5Print5printEPKc,"ax",@progbits
.global	_ZN5Print5printEPKc
	.type	_ZN5Print5printEPKc, @function
_ZN5Print5printEPKc:
/* prologue: function */
/* frame size = 0 */
	call _ZN5Print5writeEPKc
/* epilogue start */
	ret
	.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
	.data
.LC0:
	.string	"."
	.section	.text._ZN5Print10printFloatEdh,"ax",@progbits
.global	_ZN5Print10printFloatEdh
	.type	_ZN5Print10printFloatEdh, @function
_ZN5Print10printFloatEdh:
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
	movw r8,r24
	movw r14,r20
	movw r16,r22
	mov r7,r18
	movw r24,r22
	movw r22,r20
	ldi r18,lo8(0x0)
	ldi r19,hi8(0x0)
	ldi r20,hlo8(0x0)
	ldi r21,hhi8(0x0)
	call __ltsf2
	sbrc r24,7
	rjmp .L61
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	rjmp .L62
.L61:
	movw r26,r8
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r8
	ldi r22,lo8(45)
	eicall
	movw r28,r24
	bst r17,7
	com r17
	bld r17,7
	com r17
.L62:
	ldi r18,lo8(0x3f000000)
	ldi r19,hi8(0x3f000000)
	ldi r20,hlo8(0x3f000000)
	ldi r21,hhi8(0x3f000000)
	clr r10
	rjmp .L63
.L64:
	movw r24,r20
	movw r22,r18
	ldi r18,lo8(0x41200000)
	ldi r19,hi8(0x41200000)
	ldi r20,hlo8(0x41200000)
	ldi r21,hhi8(0x41200000)
	call __divsf3
	movw r18,r22
	movw r20,r24
	inc r10
.L63:
	cp r10,r7
	brlo .L64
	movw r24,r16
	movw r22,r14
	call __addsf3
	movw r10,r22
	movw r12,r24
	call __fixunssfsi
	movw r14,r22
	movw r16,r24
	movw r24,r8
	movw r22,r16
	movw r20,r14
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	call _ZN5Print5printEmi
	add r28,r24
	adc r29,r25
	tst r7
	breq .L65
	movw r24,r8
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN5Print5writeEPKc
	add r28,r24
	adc r29,r25
.L65:
	movw r24,r16
	movw r22,r14
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	movw r24,r12
	movw r22,r10
	call __subsf3
	rjmp .L66
.L67:
	ldi r18,lo8(0x41200000)
	ldi r19,hi8(0x41200000)
	ldi r20,hlo8(0x41200000)
	ldi r21,hhi8(0x41200000)
	call __mulsf3
	movw r14,r22
	movw r16,r24
	call __fixsfsi
	movw r10,r22
	movw r12,r24
	clr r12
	sbrc r11,7
	com r12
	mov r13,r12
	movw r24,r8
	movw r22,r12
	movw r20,r10
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	call _ZN5Print5printEli
	add r28,r24
	adc r29,r25
	movw r24,r12
	movw r22,r10
	call __floatsisf
	movw r18,r22
	movw r20,r24
	movw r24,r16
	movw r22,r14
	call __subsf3
	dec r7
.L66:
	tst r7
	brne .L67
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
	pop r9
	pop r8
	pop r7
	ret
	.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
	.section	.text._ZN5Print5printEdi,"ax",@progbits
.global	_ZN5Print5printEdi
	.type	_ZN5Print5printEdi, @function
_ZN5Print5printEdi:
/* prologue: function */
/* frame size = 0 */
	call _ZN5Print10printFloatEdh
/* epilogue start */
	ret
	.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
	.section	.text._ZN5Print7printlnEdi,"ax",@progbits
.global	_ZN5Print7printlnEdi
	.type	_ZN5Print7printlnEdi, @function
_ZN5Print7printlnEdi:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print10printFloatEdh
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
	.section	.text._ZN5Print7printlnEPKc,"ax",@progbits
.global	_ZN5Print7printlnEPKc
	.type	_ZN5Print7printlnEPKc, @function
_ZN5Print7printlnEPKc:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print5writeEPKc
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
	.section	.text._ZN5Print5printERK6String,"ax",@progbits
.global	_ZN5Print5printERK6String
	.type	_ZN5Print5printERK6String, @function
_ZN5Print5printERK6String:
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
	movw r12,r22
	ldi r28,lo8(0)
	ldi r29,hi8(0)
	clr r14
	clr r15
	rjmp .L76
.L77:
	movw r26,r10
	ld r30,X+
	ld r31,X
	ld r16,Z
	ldd r17,Z+1
	movw r24,r12
	movw r22,r28
	call _ZNK6StringixEj
	mov r22,r24
	movw r24,r10
	movw r30,r16
	eicall
	add r14,r24
	adc r15,r25
	adiw r28,1
.L76:
	movw r30,r12
	ldd r24,Z+4
	ldd r25,Z+5
	cp r28,r24
	cpc r29,r25
	brlo .L77
	movw r24,r14
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
	.size	_ZN5Print5printERK6String, .-_ZN5Print5printERK6String
	.section	.text._ZN5Print7printlnERK6String,"ax",@progbits
.global	_ZN5Print7printlnERK6String
	.type	_ZN5Print7printlnERK6String, @function
_ZN5Print7printlnERK6String:
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r14,r24
	call _ZN5Print5printERK6String
	movw r16,r24
	movw r24,r14
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN5Print7printlnERK6String, .-_ZN5Print7printlnERK6String
	.weak	_ZTV5Print
	.section	.rodata._ZTV5Print,"a",@progbits
	.type	_ZTV5Print, @object
	.size	_ZTV5Print, 8
_ZTV5Print:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
