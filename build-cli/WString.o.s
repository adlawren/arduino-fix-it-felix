	.file	"WString.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text._ZNK6String6charAtEj,"ax",@progbits
.global	_ZNK6String6charAtEj
	.type	_ZNK6String6charAtEj, @function
_ZNK6String6charAtEj:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r22,r24
	cpc r23,r25
	brsh .L2
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	breq .L2
	add r30,r22
	adc r31,r23
	ld r24,Z
	ret
.L2:
	ldi r24,lo8(0)
	ret
	.size	_ZNK6String6charAtEj, .-_ZNK6String6charAtEj
	.section	.text._ZN6String9setCharAtEjc,"ax",@progbits
.global	_ZN6String9setCharAtEjc
	.type	_ZN6String9setCharAtEjc, @function
_ZN6String9setCharAtEjc:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r22,r24
	cpc r23,r25
	brsh .L7
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	add r30,r22
	adc r31,r23
	st Z,r20
.L7:
	ret
	.size	_ZN6String9setCharAtEjc, .-_ZN6String9setCharAtEjc
	.section	.text._ZN6StringixEj,"ax",@progbits
.global	_ZN6StringixEj
	.type	_ZN6StringixEj, @function
_ZN6StringixEj:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r18,r22
	ldd r24,Z+4
	ldd r25,Z+5
	cp r22,r24
	cpc r23,r25
	brsh .L9
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L10
.L9:
	sts _ZZN6StringixEjE19dummy_writable_char,__zero_reg__
	ldi r22,lo8(_ZZN6StringixEjE19dummy_writable_char)
	ldi r23,hi8(_ZZN6StringixEjE19dummy_writable_char)
	rjmp .L11
.L10:
	add r22,r18
	adc r23,r19
.L11:
	movw r24,r22
/* epilogue start */
	ret
	.size	_ZN6StringixEj, .-_ZN6StringixEj
	.section	.text._ZNK6StringixEj,"ax",@progbits
.global	_ZNK6StringixEj
	.type	_ZNK6StringixEj, @function
_ZNK6StringixEj:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r22,r24
	cpc r23,r25
	brsh .L14
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	breq .L14
	add r30,r22
	adc r31,r23
	ld r24,Z
	ret
.L14:
	ldi r24,lo8(0)
	ret
	.size	_ZNK6StringixEj, .-_ZNK6StringixEj
	.section	.text._ZN6String7replaceEcc,"ax",@progbits
.global	_ZN6String7replaceEcc
	.type	_ZN6String7replaceEcc, @function
_ZN6String7replaceEcc:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	sbiw r30,0
	brne .L23
	ret
.L21:
	cp r24,r22
	brne .L20
	st Z,r20
.L20:
	adiw r30,1
.L23:
	ld r24,Z
	tst r24
	brne .L21
	ret
	.size	_ZN6String7replaceEcc, .-_ZN6String7replaceEcc
	.section	.text._ZNK6String5toIntEv,"ax",@progbits
.global	_ZNK6String5toIntEv
	.type	_ZNK6String5toIntEv, @function
_ZNK6String5toIntEv:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L25
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ldi r20,hlo8(0)
	ldi r21,hhi8(0)
	rjmp .L26
.L25:
	call atol
	movw r18,r22
	movw r20,r24
.L26:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	ret
	.size	_ZNK6String5toIntEv, .-_ZNK6String5toIntEv
	.section	.text._ZN6String4trimEv,"ax",@progbits
.global	_ZN6String4trimEv
	.type	_ZN6String4trimEv, @function
_ZN6String4trimEv:
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
	movw r26,r24
	ld r14,X+
	ld r15,X
	sbiw r26,1
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L37
	adiw r26,4
	ld r28,X+
	ld r29,X
	sbiw r26,4+1
	sbiw r28,0
	breq .L37
	movw r16,r14
	rjmp .L30
.L31:
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.L30:
	movw r30,r16
	ld r24,Z
	clr r25
	sbrc r24,7
	com r25
	call isspace
	or r24,r25
	brne .L31
	sbiw r28,1
	add r28,r14
	adc r29,r15
	rjmp .L32
.L34:
	sbiw r28,1
.L32:
	ld r24,Y
	clr r25
	sbrc r24,7
	com r25
	call isspace
	or r24,r25
	breq .L33
	cp r28,r16
	cpc r29,r17
	brsh .L34
.L33:
	movw r30,r28
	adiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r26,r12
	adiw r26,4+1
	st X,r31
	st -X,r30
	sbiw r26,4
	ld r18,X+
	ld r19,X
	cp r18,r16
	cpc r19,r17
	brsh .L35
	movw r24,r18
	movw r22,r16
	movw r20,r30
	call memcpy
.L35:
	movw r26,r12
	ld r30,X+
	ld r31,X
	sbiw r26,1
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
.L37:
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
	.size	_ZN6String4trimEv, .-_ZN6String4trimEv
	.section	.text._ZN6String11toUpperCaseEv,"ax",@progbits
.global	_ZN6String11toUpperCaseEv
	.type	_ZN6String11toUpperCaseEv, @function
_ZN6String11toUpperCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	brne .L43
	rjmp .L42
.L41:
	clr r25
	sbrc r24,7
	com r25
	call toupper
	st Y+,r24
.L43:
	ld r24,Y
	tst r24
	brne .L41
.L42:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toUpperCaseEv, .-_ZN6String11toUpperCaseEv
	.section	.text._ZN6String11toLowerCaseEv,"ax",@progbits
.global	_ZN6String11toLowerCaseEv
	.type	_ZN6String11toLowerCaseEv, @function
_ZN6String11toLowerCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	brne .L49
	rjmp .L48
.L47:
	clr r25
	sbrc r24,7
	com r25
	call tolower
	st Y+,r24
.L49:
	ld r24,Y
	tst r24
	brne .L47
.L48:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toLowerCaseEv, .-_ZN6String11toLowerCaseEv
	.section	.text._ZNK6String16equalsIgnoreCaseERKS_,"ax",@progbits
.global	_ZNK6String16equalsIgnoreCaseERKS_
	.type	_ZNK6String16equalsIgnoreCaseERKS_, @function
_ZNK6String16equalsIgnoreCaseERKS_:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	cp r24,r22
	cpc r25,r23
	breq .L51
	ldd r18,Z+4
	ldd r19,Z+5
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r18,r24
	cpc r19,r25
	brne .L52
	or r18,r19
	breq .L51
	ld r14,Z
	ldd r15,Z+1
	ld r28,X+
	ld r29,X
	rjmp .L53
.L54:
	clr r25
	sbrc r24,7
	com r25
	call tolower
	movw r16,r24
	ld r24,Y
	clr r25
	sbrc r24,7
	com r25
	call tolower
	cp r16,r24
	cpc r17,r25
	brne .L52
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	adiw r28,1
.L53:
	movw r30,r14
	ld r24,Z
	tst r24
	brne .L54
.L51:
	ldi r24,lo8(1)
	rjmp .L55
.L52:
	ldi r24,lo8(0)
.L55:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZNK6String16equalsIgnoreCaseERKS_, .-_ZNK6String16equalsIgnoreCaseERKS_
	.section	.text._ZNK6String11lastIndexOfERKS_j,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_j
	.type	_ZNK6String11lastIndexOfERKS_j, @function
_ZNK6String11lastIndexOfERKS_j:
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
	movw r30,r24
	movw r10,r22
	movw r14,r20
	movw r26,r22
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L58
	ldd r24,Z+4
	ldd r25,Z+5
	sbiw r24,0
	breq .L58
	cp r24,r18
	cpc r25,r19
	brlo .L58
	cp r20,r24
	cpc r21,r25
	brlo .L59
	movw r14,r24
	sec
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.L59:
	ld r16,Z
	ldd r17,Z+1
	movw r24,r16
	ldi r28,lo8(-1)
	ldi r29,hi8(-1)
	movw r12,r16
	add r12,r14
	adc r13,r15
	rjmp .L60
.L63:
	movw r30,r10
	ld r22,Z
	ldd r23,Z+1
	call strstr
	movw r18,r24
	sbiw r24,0
	breq .L61
	sub r24,r16
	sbc r25,r17
	cp r14,r24
	cpc r15,r25
	brlo .L62
	movw r28,r24
.L62:
	movw r24,r18
	adiw r24,1
.L60:
	cp r12,r24
	cpc r13,r25
	brsh .L63
	rjmp .L61
.L58:
	ldi r28,lo8(-1)
	ldi r29,hi8(-1)
.L61:
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
	.size	_ZNK6String11lastIndexOfERKS_j, .-_ZNK6String11lastIndexOfERKS_j
	.section	.text._ZNK6String11lastIndexOfERKS_,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_
	.type	_ZNK6String11lastIndexOfERKS_, @function
_ZNK6String11lastIndexOfERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	ldd r20,Z+4
	ldd r21,Z+5
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	sub r20,r24
	sbc r21,r25
	movw r24,r30
	call _ZNK6String11lastIndexOfERKS_j
/* epilogue start */
	ret
	.size	_ZNK6String11lastIndexOfERKS_, .-_ZNK6String11lastIndexOfERKS_
	.section	.text._ZNK6String7indexOfERKS_j,"ax",@progbits
.global	_ZNK6String7indexOfERKS_j
	.type	_ZNK6String7indexOfERKS_j, @function
_ZNK6String7indexOfERKS_j:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	ldd r24,Z+4
	ldd r25,Z+5
	cp r20,r24
	cpc r21,r25
	brsh .L72
.L68:
	ld r28,Z
	ldd r29,Z+1
	ld r22,X+
	ld r23,X
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strstr
	movw r18,r24
	sbiw r24,0
	brne .L70
.L72:
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L69
.L70:
	sub r18,r28
	sbc r19,r29
.L69:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String7indexOfERKS_j, .-_ZNK6String7indexOfERKS_j
	.section	.text._ZNK6String7indexOfERKS_,"ax",@progbits
.global	_ZNK6String7indexOfERKS_
	.type	_ZNK6String7indexOfERKS_, @function
_ZNK6String7indexOfERKS_:
/* prologue: function */
/* frame size = 0 */
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call _ZNK6String7indexOfERKS_j
/* epilogue start */
	ret
	.size	_ZNK6String7indexOfERKS_, .-_ZNK6String7indexOfERKS_
	.section	.text._ZNK6String11lastIndexOfEcj,"ax",@progbits
.global	_ZNK6String11lastIndexOfEcj
	.type	_ZNK6String11lastIndexOfEcj, @function
_ZNK6String11lastIndexOfEcj:
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
	ldd r24,Y+4
	ldd r25,Y+5
	cp r20,r24
	cpc r21,r25
	brsh .L80
.L76:
	movw r14,r20
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ld r30,Y
	ldd r31,Y+1
	add r30,r14
	adc r31,r15
	ld r13,Z
	st Z,__zero_reg__
	ld r16,Y
	ldd r17,Y+1
	clr r23
	sbrc r22,7
	com r23
	movw r24,r16
	call strrchr
	movw r18,r24
	add r16,r14
	adc r17,r15
	movw r30,r16
	st Z,r13
	sbiw r24,0
	brne .L78
.L80:
	ldi r30,lo8(-1)
	ldi r31,hi8(-1)
	rjmp .L77
.L78:
	ld r24,Y
	ldd r25,Y+1
	movw r30,r18
	sub r30,r24
	sbc r31,r25
.L77:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
	.size	_ZNK6String11lastIndexOfEcj, .-_ZNK6String11lastIndexOfEcj
	.section	.text._ZNK6String11lastIndexOfEc,"ax",@progbits
.global	_ZNK6String11lastIndexOfEc
	.type	_ZNK6String11lastIndexOfEc, @function
_ZNK6String11lastIndexOfEc:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	call _ZNK6String11lastIndexOfEcj
/* epilogue start */
	ret
	.size	_ZNK6String11lastIndexOfEc, .-_ZNK6String11lastIndexOfEc
	.section	.text._ZNK6String7indexOfEcj,"ax",@progbits
.global	_ZNK6String7indexOfEcj
	.type	_ZNK6String7indexOfEcj, @function
_ZNK6String7indexOfEcj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r20,r24
	cpc r21,r25
	brsh .L88
.L84:
	ld r28,Z
	ldd r29,Z+1
	clr r23
	sbrc r22,7
	com r23
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strchr
	movw r18,r24
	sbiw r24,0
	brne .L86
.L88:
	ldi r18,lo8(-1)
	ldi r19,hi8(-1)
	rjmp .L85
.L86:
	sub r18,r28
	sbc r19,r29
.L85:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String7indexOfEcj, .-_ZNK6String7indexOfEcj
	.section	.text._ZNK6String7indexOfEc,"ax",@progbits
.global	_ZNK6String7indexOfEc
	.type	_ZNK6String7indexOfEc, @function
_ZNK6String7indexOfEc:
/* prologue: function */
/* frame size = 0 */
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call _ZNK6String7indexOfEcj
/* epilogue start */
	ret
	.size	_ZNK6String7indexOfEc, .-_ZNK6String7indexOfEc
	.section	.text._ZNK6String8getBytesEPhjj,"ax",@progbits
.global	_ZNK6String8getBytesEPhjj
	.type	_ZNK6String8getBytesEPhjj, @function
_ZNK6String8getBytesEPhjj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r16,r22
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L95
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L95
	ldd r24,Z+4
	ldd r25,Z+5
	cp r18,r24
	cpc r19,r25
	brlo .L93
	movw r30,r22
	st Z,__zero_reg__
	rjmp .L95
.L93:
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	movw r28,r24
	sub r28,r18
	sbc r29,r19
	cp r20,r28
	cpc r21,r29
	brsh .L94
	movw r28,r20
.L94:
	ld r22,Z
	ldd r23,Z+1
	add r22,r18
	adc r23,r19
	movw r24,r16
	movw r20,r28
	call strncpy
	add r28,r16
	adc r29,r17
	st Y,__zero_reg__
.L95:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZNK6String8getBytesEPhjj, .-_ZNK6String8getBytesEPhjj
	.section	.text._ZNK6String8endsWithERKS_,"ax",@progbits
.global	_ZNK6String8endsWithERKS_
	.type	_ZNK6String8endsWithERKS_, @function
_ZNK6String8endsWithERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	ldd r18,Z+4
	ldd r19,Z+5
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	cp r18,r20
	cpc r19,r21
	brlo .L97
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L97
	ld r22,X+
	ld r23,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L97
	sub r18,r20
	sbc r19,r21
	add r24,r18
	adc r25,r19
	call strcmp
	movw r18,r24
	ldi r24,lo8(0)
	or r18,r19
	brne .L99
	ldi r24,lo8(1)
	ret
.L97:
	ldi r24,lo8(0)
.L99:
	ret
	.size	_ZNK6String8endsWithERKS_, .-_ZNK6String8endsWithERKS_
	.section	.text._ZNK6String6equalsEPKc,"ax",@progbits
.global	_ZNK6String6equalsEPKc
	.type	_ZNK6String6equalsEPKc, @function
_ZNK6String6equalsEPKc:
/* prologue: function */
/* frame size = 0 */
	movw r26,r24
	movw r30,r22
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	or r24,r25
	brne .L102
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L111
.L103:
	ldi r25,lo8(0)
	ld r24,Z
	rjmp .L112
.L102:
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L107
	ldi r25,lo8(0)
	ld r24,X
.L112:
	tst r24
	brne .L106
	rjmp .L111
.L107:
	movw r24,r26
	call strcmp
	movw r18,r24
	ldi r25,lo8(0)
	or r18,r19
	brne .L106
.L111:
	ldi r25,lo8(1)
.L106:
	mov r24,r25
/* epilogue start */
	ret
	.size	_ZNK6String6equalsEPKc, .-_ZNK6String6equalsEPKc
	.section	.text._ZNK6String9compareToERKS_,"ax",@progbits
.global	_ZNK6String9compareToERKS_
	.type	_ZNK6String9compareToERKS_, @function
_ZNK6String9compareToERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r18,r24
	movw r30,r22
	movw r28,r24
	ld r26,Y
	ldd r27,Y+1
	sbiw r26,0
	breq .L114
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L115
.L114:
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	breq .L116
	ldd r24,Z+4
	ldd r25,Z+5
	or r24,r25
	breq .L116
	ld r24,Y
	ldi r25,lo8(0)
	clr r18
	clr r19
	sub r18,r24
	sbc r19,r25
	rjmp .L117
.L116:
	sbiw r26,0
	breq .L118
	movw r30,r18
	ldd r24,Z+4
	ldd r25,Z+5
	or r24,r25
	breq .L118
	ld r24,X
	mov r18,r24
	ldi r19,lo8(0)
	rjmp .L117
.L115:
	movw r24,r26
	call strcmp
	movw r18,r24
	rjmp .L117
.L118:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L117:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String9compareToERKS_, .-_ZNK6String9compareToERKS_
	.section	.text._ZNK6StringgeERKS_,"ax",@progbits
.global	_ZNK6StringgeERKS_
	.type	_ZNK6StringgeERKS_, @function
_ZNK6StringgeERKS_:
/* prologue: function */
/* frame size = 0 */
	call _ZNK6String9compareToERKS_
	mov r24,r25
	com r24
	rol r24
	clr r24
	rol r24
/* epilogue start */
	ret
	.size	_ZNK6StringgeERKS_, .-_ZNK6StringgeERKS_
	.section	.text._ZNK6StringleERKS_,"ax",@progbits
.global	_ZNK6StringleERKS_
	.type	_ZNK6StringleERKS_, @function
_ZNK6StringleERKS_:
/* prologue: function */
/* frame size = 0 */
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(0)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L124
	ldi r18,lo8(1)
.L124:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6StringleERKS_, .-_ZNK6StringleERKS_
	.section	.text._ZNK6StringgtERKS_,"ax",@progbits
.global	_ZNK6StringgtERKS_
	.type	_ZNK6StringgtERKS_, @function
_ZNK6StringgtERKS_:
/* prologue: function */
/* frame size = 0 */
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(0)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L127
	ldi r18,lo8(1)
.L127:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6StringgtERKS_, .-_ZNK6StringgtERKS_
	.section	.text._ZNK6StringltERKS_,"ax",@progbits
.global	_ZNK6StringltERKS_
	.type	_ZNK6StringltERKS_, @function
_ZNK6StringltERKS_:
/* prologue: function */
/* frame size = 0 */
	call _ZNK6String9compareToERKS_
	mov r24,r25
	rol r24
	clr r24
	rol r24
/* epilogue start */
	ret
	.size	_ZNK6StringltERKS_, .-_ZNK6StringltERKS_
	.section	.text._ZNK6String6equalsERKS_,"ax",@progbits
.global	_ZNK6String6equalsERKS_
	.type	_ZNK6String6equalsERKS_, @function
_ZNK6String6equalsERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	ldd r18,Z+4
	ldd r19,Z+5
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r18,r24
	cpc r19,r25
	breq .L133
	ldi r18,lo8(0)
	rjmp .L134
.L133:
	movw r24,r30
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(0)
	or r24,r25
	brne .L134
	ldi r18,lo8(1)
.L134:
	mov r24,r18
/* epilogue start */
	ret
	.size	_ZNK6String6equalsERKS_, .-_ZNK6String6equalsERKS_
	.section	.text._ZNK6String10startsWithERKS_j,"ax",@progbits
.global	_ZNK6String10startsWithERKS_j
	.type	_ZNK6String10startsWithERKS_j, @function
_ZNK6String10startsWithERKS_j:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	ldd r24,Z+4
	ldd r25,Z+5
	sub r24,r18
	sbc r25,r19
	cp r24,r20
	cpc r25,r21
	brlo .L138
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L138
	ld r22,X+
	ld r23,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L138
	add r24,r20
	adc r25,r21
	movw r20,r18
	call strncmp
	movw r18,r24
	ldi r24,lo8(0)
	or r18,r19
	brne .L140
	ldi r24,lo8(1)
	ret
.L138:
	ldi r24,lo8(0)
.L140:
	ret
	.size	_ZNK6String10startsWithERKS_j, .-_ZNK6String10startsWithERKS_j
	.section	.text._ZNK6String10startsWithERKS_,"ax",@progbits
.global	_ZNK6String10startsWithERKS_
	.type	_ZNK6String10startsWithERKS_, @function
_ZNK6String10startsWithERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	movw r26,r22
	ldd r18,Z+4
	ldd r19,Z+5
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r18,r24
	cpc r19,r25
	brsh .L143
	ldi r24,lo8(0)
	ret
.L143:
	movw r24,r30
	ldi r20,lo8(0)
	ldi r21,hi8(0)
	call _ZNK6String10startsWithERKS_j
	ret
	.size	_ZNK6String10startsWithERKS_, .-_ZNK6String10startsWithERKS_
	.section	.text._ZN6String12changeBufferEj,"ax",@progbits
.global	_ZN6String12changeBufferEj
	.type	_ZN6String12changeBufferEj, @function
_ZN6String12changeBufferEj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r16,r22
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	ld r24,Y
	ldd r25,Y+1
	call realloc
	sbiw r24,0
	brne .L147
	ldi r24,lo8(0)
	rjmp .L148
.L147:
	std Y+1,r25
	st Y,r24
	std Y+3,r17
	std Y+2,r16
	ldi r24,lo8(1)
.L148:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6String12changeBufferEj, .-_ZN6String12changeBufferEj
	.section	.text._ZN6String7replaceERKS_S1_,"ax",@progbits
.global	_ZN6String7replaceERKS_S1_
	.type	_ZN6String7replaceERKS_S1_, @function
_ZN6String7replaceERKS_S1_:
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
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r10,r24
	movw r4,r22
	movw r8,r20
	movw r26,r24
	adiw r26,4
	ld r16,X+
	ld r17,X
	sbiw r26,4+1
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L166
	movw r30,r22
	ldd r12,Z+4
	ldd r13,Z+5
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .+2
	rjmp .L166
	movw r26,r20
	adiw r26,4
	ld r6,X+
	ld r7,X
	sbiw r26,4+1
	sub r6,r12
	sbc r7,r13
	movw r30,r24
	ld r14,Z
	ldd r15,Z+1
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L167
	rjmp .L170
.L155:
	movw r26,r8
	ld r22,X
	adiw r26,1
	ld r23,X
	sbiw r26,1
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	mov r24,r28
	call memcpy
	movw r30,r8
	ldd r14,Z+4
	ldd r15,Z+5
	add r14,r28
	adc r15,r29
.L167:
	movw r26,r4
	ld r22,X+
	ld r23,X
	movw r24,r14
	call strstr
	movw r28,r24
	sbiw r24,0
	brne .L155
	rjmp .L166
.L170:
	sbrs r7,7
	rjmp .L156
	movw r12,r14
	rjmp .L157
.L156:
	movw r30,r22
	ld r2,Z
	ldd r3,Z+1
	movw r28,r16
	rjmp .L158
.L161:
	movw r16,r28
	sub r16,r14
	sbc r17,r15
	movw r24,r12
	movw r22,r14
	movw r20,r16
	call memcpy
	add r16,r12
	adc r17,r13
	movw r26,r8
	ld r22,X
	adiw r26,1
	ld r23,X
	sbiw r26,1
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	movw r24,r16
	call memcpy
	movw r30,r8
	ldd r12,Z+4
	ldd r13,Z+5
	add r12,r16
	adc r13,r17
	movw r26,r4
	adiw r26,4
	ld r14,X+
	ld r15,X
	sbiw r26,4+1
	add r14,r28
	adc r15,r29
	movw r30,r10
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r6
	adc r25,r7
	std Z+5,r25
	std Z+4,r24
.L157:
	movw r26,r4
	ld r22,X+
	ld r23,X
	movw r24,r14
	call strstr
	movw r28,r24
	sbiw r24,0
	brne .L161
	movw r24,r12
	movw r22,r14
	call strcpy
	rjmp .L166
.L162:
	movw r14,r22
	add r14,r12
	adc r15,r13
	add r28,r6
	adc r29,r7
.L158:
	movw r24,r14
	movw r22,r2
	call strstr
	movw r22,r24
	sbiw r24,0
	brne .L162
	cp r28,r16
	cpc r29,r17
	brne .+2
	rjmp .L166
	movw r30,r10
	ldd r24,Z+2
	ldd r25,Z+3
	cp r24,r28
	cpc r25,r29
	brlo .+2
	rjmp .L163
	movw r24,r10
	movw r22,r28
	call _ZN6String12changeBufferEj
	tst r24
	brne .L163
	rjmp .L166
.L171:
	movw r24,r10
	movw r22,r4
	movw r20,r18
	call _ZNK6String11lastIndexOfERKS_j
	movw r28,r24
	sbrc r25,7
	rjmp .L166
	movw r26,r10
	ld r22,X+
	ld r23,X
	sbiw r26,1
	movw r30,r4
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r28
	adc r25,r29
	add r22,r24
	adc r23,r25
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	sub r20,r24
	sbc r21,r25
	movw r24,r22
	add r24,r6
	adc r25,r7
	call memmove
	movw r26,r10
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	add r24,r6
	adc r25,r7
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
	ld r30,X+
	ld r31,X
	sbiw r26,1
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	ld r18,X+
	ld r19,X
	add r18,r28
	adc r19,r29
	movw r30,r8
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	movw r24,r18
	call memcpy
	movw r18,r28
	rjmp .L169
.L163:
	movw r26,r10
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
.L169:
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	sbrs r19,7
	rjmp .L171
.L166:
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
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.size	_ZN6String7replaceERKS_S1_, .-_ZN6String7replaceERKS_S1_
	.section	.text._ZN6String7reserveEj,"ax",@progbits
.global	_ZN6String7reserveEj
	.type	_ZN6String7reserveEj, @function
_ZN6String7reserveEj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L173
	ldd r24,Y+2
	ldd r25,Y+3
	cp r24,r22
	cpc r25,r23
	brsh .L174
.L173:
	movw r24,r28
	call _ZN6String12changeBufferEj
	tst r24
	breq .L176
	ldd r24,Y+4
	ldd r25,Y+5
	or r24,r25
	brne .L174
	ld r30,Y
	ldd r31,Y+1
	st Z,__zero_reg__
.L174:
	ldi r24,lo8(1)
.L176:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String7reserveEj, .-_ZN6String7reserveEj
	.section	.text._ZN6String6concatEPKcj,"ax",@progbits
.global	_ZN6String6concatEPKcj
	.type	_ZN6String6concatEPKcj, @function
_ZN6String6concatEPKcj:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r14,r22
	ldd r22,Y+4
	ldd r23,Y+5
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L179
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L183
.L180:
	movw r16,r20
	add r16,r22
	adc r17,r23
	movw r22,r16
	call _ZN6String7reserveEj
	tst r24
	breq .L179
	ld r24,Y
	ldd r25,Y+1
	ldd r18,Y+4
	ldd r19,Y+5
	add r24,r18
	adc r25,r19
	movw r22,r14
	call strcpy
	std Y+5,r17
	std Y+4,r16
.L183:
	ldi r24,lo8(1)
	rjmp .L181
.L179:
	ldi r24,lo8(0)
.L181:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN6String6concatEPKcj, .-_ZN6String6concatEPKcj
	.section	.text._ZN6String6concatEm,"ax",@progbits
.global	_ZN6String6concatEm
	.type	_ZN6String6concatEm, @function
_ZN6String6concatEm:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,11
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 11 */
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r20,r16
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	call ultoa
	movw r30,r16
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r24,r14
	movw r22,r16
	movw r20,r30
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,11
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
	ret
	.size	_ZN6String6concatEm, .-_ZN6String6concatEm
	.section	.text._ZN6String6concatEl,"ax",@progbits
.global	_ZN6String6concatEl
	.type	_ZN6String6concatEl, @function
_ZN6String6concatEl:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 12 */
	movw r14,r24
	movw r24,r22
	movw r22,r20
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r20,r16
	ldi r18,lo8(10)
	ldi r19,hi8(10)
	call ltoa
	movw r30,r16
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r24,r14
	movw r22,r16
	movw r20,r30
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,12
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
	ret
	.size	_ZN6String6concatEl, .-_ZN6String6concatEl
	.section	.text._ZN6String6concatEj,"ax",@progbits
.global	_ZN6String6concatEj
	.type	_ZN6String6concatEj, @function
_ZN6String6concatEj:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 6 */
	movw r14,r24
	movw r24,r22
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r22,r16
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call utoa
	movw r30,r16
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r24,r14
	movw r22,r16
	movw r20,r30
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,6
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
	ret
	.size	_ZN6String6concatEj, .-_ZN6String6concatEj
	.section	.text._ZN6String6concatEi,"ax",@progbits
.global	_ZN6String6concatEi
	.type	_ZN6String6concatEi, @function
_ZN6String6concatEi:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
	movw r14,r24
	movw r24,r22
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r22,r16
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call itoa
	movw r30,r16
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r24,r14
	movw r22,r16
	movw r20,r30
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,7
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
	ret
	.size	_ZN6String6concatEi, .-_ZN6String6concatEi
	.section	.text._ZN6String6concatEh,"ax",@progbits
.global	_ZN6String6concatEh
	.type	_ZN6String6concatEh, @function
_ZN6String6concatEh:
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
	movw r14,r24
	mov r24,r22
	ldi r25,lo8(0)
	movw r16,r28
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
	movw r22,r16
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call itoa
	movw r30,r16
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne .-6
	sbiw r30,1
	sub r30,r16
	sbc r31,r17
	movw r24,r14
	movw r22,r16
	movw r20,r30
	call _ZN6String6concatEPKcj
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
	ret
	.size	_ZN6String6concatEh, .-_ZN6String6concatEh
	.section	.text._ZN6String6concatEc,"ax",@progbits
.global	_ZN6String6concatEc
	.type	_ZN6String6concatEc, @function
_ZN6String6concatEc:
	push r29
	push r28
	push __tmp_reg__
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
	std Y+1,r22
	std Y+2,__zero_reg__
	movw r22,r28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	call _ZN6String6concatEPKcj
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN6String6concatEc, .-_ZN6String6concatEc
	.section	.text._ZN6String6concatEPKc,"ax",@progbits
.global	_ZN6String6concatEPKc
	.type	_ZN6String6concatEPKc, @function
_ZN6String6concatEPKc:
/* prologue: function */
/* frame size = 0 */
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L197
	ldi r24,lo8(0)
	ret
.L197:
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r20,r26
	call _ZN6String6concatEPKcj
	ret
	.size	_ZN6String6concatEPKc, .-_ZN6String6concatEPKc
	.section	.text._ZN6String6concatERKS_,"ax",@progbits
.global	_ZN6String6concatERKS_
	.type	_ZN6String6concatERKS_, @function
_ZN6String6concatERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	call _ZN6String6concatEPKcj
/* epilogue start */
	ret
	.size	_ZN6String6concatERKS_, .-_ZN6String6concatERKS_
	.section	.text._ZN6String10invalidateEv,"ax",@progbits
.global	_ZN6String10invalidateEv
	.type	_ZN6String10invalidateEv, @function
_ZN6String10invalidateEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,0
	breq .L203
	call free
.L203:
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String10invalidateEv, .-_ZN6String10invalidateEv
	.section	.text._ZplRK15StringSumHelperm,"ax",@progbits
.global	_ZplRK15StringSumHelperm
	.type	_ZplRK15StringSumHelperm, @function
_ZplRK15StringSumHelperm:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEm
	tst r24
	brne .L206
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L206:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperm, .-_ZplRK15StringSumHelperm
	.section	.text._ZplRK15StringSumHelperl,"ax",@progbits
.global	_ZplRK15StringSumHelperl
	.type	_ZplRK15StringSumHelperl, @function
_ZplRK15StringSumHelperl:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEl
	tst r24
	brne .L209
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L209:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperl, .-_ZplRK15StringSumHelperl
	.section	.text._ZplRK15StringSumHelperj,"ax",@progbits
.global	_ZplRK15StringSumHelperj
	.type	_ZplRK15StringSumHelperj, @function
_ZplRK15StringSumHelperj:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEj
	tst r24
	brne .L212
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L212:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperj, .-_ZplRK15StringSumHelperj
	.section	.text._ZplRK15StringSumHelperi,"ax",@progbits
.global	_ZplRK15StringSumHelperi
	.type	_ZplRK15StringSumHelperi, @function
_ZplRK15StringSumHelperi:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEi
	tst r24
	brne .L215
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L215:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperi, .-_ZplRK15StringSumHelperi
	.section	.text._ZplRK15StringSumHelperh,"ax",@progbits
.global	_ZplRK15StringSumHelperh
	.type	_ZplRK15StringSumHelperh, @function
_ZplRK15StringSumHelperh:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEh
	tst r24
	brne .L218
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L218:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperh, .-_ZplRK15StringSumHelperh
	.section	.text._ZplRK15StringSumHelperc,"ax",@progbits
.global	_ZplRK15StringSumHelperc
	.type	_ZplRK15StringSumHelperc, @function
_ZplRK15StringSumHelperc:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	call _ZN6String6concatEc
	tst r24
	brne .L221
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L221:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperc, .-_ZplRK15StringSumHelperc
	.section	.text._ZplRK15StringSumHelperPKc,"ax",@progbits
.global	_ZplRK15StringSumHelperPKc
	.type	_ZplRK15StringSumHelperPKc, @function
_ZplRK15StringSumHelperPKc:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L224
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r20,r26
	call _ZN6String6concatEPKcj
	tst r24
	brne .L225
.L224:
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L225:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperPKc, .-_ZplRK15StringSumHelperPKc
	.section	.text._ZplRK15StringSumHelperRK6String,"ax",@progbits
.global	_ZplRK15StringSumHelperRK6String
	.type	_ZplRK15StringSumHelperRK6String, @function
_ZplRK15StringSumHelperRK6String:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	call _ZN6String6concatEPKcj
	tst r24
	brne .L228
	mov r24,r17
	mov r25,r16
	call _ZN6String10invalidateEv
.L228:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZplRK15StringSumHelperRK6String, .-_ZplRK15StringSumHelperRK6String
	.section	.text._ZN6String4copyEPKcj,"ax",@progbits
.global	_ZN6String4copyEPKcj
	.type	_ZN6String4copyEPKcj, @function
_ZN6String4copyEPKcj:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r14,r22
	movw r16,r20
	movw r22,r20
	call _ZN6String7reserveEj
	tst r24
	brne .L231
	movw r24,r28
	call _ZN6String10invalidateEv
	rjmp .L232
.L231:
	std Y+5,r17
	std Y+4,r16
	ld r24,Y
	ldd r25,Y+1
	movw r22,r14
	call strcpy
.L232:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.size	_ZN6String4copyEPKcj, .-_ZN6String4copyEPKcj
	.section	.text._ZN6StringC1EPKc,"ax",@progbits
.global	_ZN6StringC1EPKc
	.type	_ZN6StringC1EPKc, @function
_ZN6StringC1EPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+6,__zero_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L236
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r20,r26
	call _ZN6String4copyEPKcj
.L236:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringC1EPKc, .-_ZN6StringC1EPKc
	.section	.text._ZN6StringC2EPKc,"ax",@progbits
.global	_ZN6StringC2EPKc
	.type	_ZN6StringC2EPKc, @function
_ZN6StringC2EPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+6,__zero_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L239
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r20,r26
	call _ZN6String4copyEPKcj
.L239:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringC2EPKc, .-_ZN6StringC2EPKc
	.section	.text._ZN6StringaSEPKc,"ax",@progbits
.global	_ZN6StringaSEPKc
	.type	_ZN6StringaSEPKc, @function
_ZN6StringaSEPKc:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
	mov r16,r25
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L241
	movw r26,r22
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne .-6
	sbiw r26,1
	sub r26,r22
	sbc r27,r23
	movw r20,r26
	call _ZN6String4copyEPKcj
	rjmp .L242
.L241:
	call _ZN6String10invalidateEv
.L242:
	mov r24,r17
	mov r25,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6StringaSEPKc, .-_ZN6StringaSEPKc
	.section	.text._ZN6StringC1Emh,"ax",@progbits
.global	_ZN6StringC1Emh
	.type	_ZN6StringC1Emh, @function
_ZN6StringC1Emh:
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
	movw r16,r24
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r24,r22
	movw r22,r20
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r20,r14
	ldi r19,lo8(0)
	call ultoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
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
	ret
	.size	_ZN6StringC1Emh, .-_ZN6StringC1Emh
	.section	.text._ZN6StringC2Emh,"ax",@progbits
.global	_ZN6StringC2Emh
	.type	_ZN6StringC2Emh, @function
_ZN6StringC2Emh:
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
	movw r16,r24
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r24,r22
	movw r22,r20
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r20,r14
	ldi r19,lo8(0)
	call ultoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
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
	ret
	.size	_ZN6StringC2Emh, .-_ZN6StringC2Emh
	.section	.text._ZN6StringC1Elh,"ax",@progbits
.global	_ZN6StringC1Elh
	.type	_ZN6StringC1Elh, @function
_ZN6StringC1Elh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,34
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
	movw r16,r24
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r24,r22
	movw r22,r20
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r20,r14
	ldi r19,lo8(0)
	call ltoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,34
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
	ret
	.size	_ZN6StringC1Elh, .-_ZN6StringC1Elh
	.section	.text._ZN6StringC2Elh,"ax",@progbits
.global	_ZN6StringC2Elh
	.type	_ZN6StringC2Elh, @function
_ZN6StringC2Elh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,34
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 34 */
	movw r16,r24
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r24,r22
	movw r22,r20
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r20,r14
	ldi r19,lo8(0)
	call ltoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,34
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
	ret
	.size	_ZN6StringC2Elh, .-_ZN6StringC2Elh
	.section	.text._ZN6StringC1Ejh,"ax",@progbits
.global	_ZN6StringC1Ejh
	.type	_ZN6StringC1Ejh, @function
_ZN6StringC1Ejh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call utoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,17
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
	ret
	.size	_ZN6StringC1Ejh, .-_ZN6StringC1Ejh
	.section	.text._ZN6StringC2Ejh,"ax",@progbits
.global	_ZN6StringC2Ejh
	.type	_ZN6StringC2Ejh, @function
_ZN6StringC2Ejh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,17
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 17 */
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call utoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,17
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
	ret
	.size	_ZN6StringC2Ejh, .-_ZN6StringC2Ejh
	.section	.text._ZN6StringC1Eih,"ax",@progbits
.global	_ZN6StringC1Eih
	.type	_ZN6StringC1Eih, @function
_ZN6StringC1Eih:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call itoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,18
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
	ret
	.size	_ZN6StringC1Eih, .-_ZN6StringC1Eih
	.section	.text._ZN6StringC2Eih,"ax",@progbits
.global	_ZN6StringC2Eih
	.type	_ZN6StringC2Eih, @function
_ZN6StringC2Eih:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,18
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 18 */
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call itoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,18
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
	ret
	.size	_ZN6StringC2Eih, .-_ZN6StringC2Eih
	.section	.text._ZN6StringC1Ehh,"ax",@progbits
.global	_ZN6StringC1Ehh
	.type	_ZN6StringC1Ehh, @function
_ZN6StringC1Ehh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
	movw r16,r24
	mov r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r25,lo8(0)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call utoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,9
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
	ret
	.size	_ZN6StringC1Ehh, .-_ZN6StringC1Ehh
	.section	.text._ZN6StringC2Ehh,"ax",@progbits
.global	_ZN6StringC2Ehh
	.type	_ZN6StringC2Ehh, @function
_ZN6StringC2Ehh:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,9
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 9 */
	movw r16,r24
	mov r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r25,lo8(0)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	movw r22,r14
	ldi r21,lo8(0)
	call utoa
	movw r24,r16
	movw r22,r14
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,9
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
	ret
	.size	_ZN6StringC2Ehh, .-_ZN6StringC2Ehh
	.section	.text._ZN6StringC1Ec,"ax",@progbits
.global	_ZN6StringC1Ec
	.type	_ZN6StringC1Ec, @function
_ZN6StringC1Ec:
	push r29
	push r28
	push __tmp_reg__
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	std Y+1,r22
	std Y+2,__zero_reg__
	movw r22,r28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	call _ZN6StringaSEPKc
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN6StringC1Ec, .-_ZN6StringC1Ec
	.section	.text._ZN6StringC2Ec,"ax",@progbits
.global	_ZN6StringC2Ec
	.type	_ZN6StringC2Ec, @function
_ZN6StringC2Ec:
	push r29
	push r28
	push __tmp_reg__
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	std Y+1,r22
	std Y+2,__zero_reg__
	movw r22,r28
	subi r22,lo8(-(1))
	sbci r23,hi8(-(1))
	call _ZN6StringaSEPKc
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
	.size	_ZN6StringC2Ec, .-_ZN6StringC2Ec
	.data
.LC0:
	.string	""
	.section	.text._ZNK6String9substringEjj,"ax",@progbits
.global	_ZNK6String9substringEjj
	.type	_ZNK6String9substringEjj, @function
_ZNK6String9substringEjj:
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
	mov r16,r24
	mov r11,r25
	movw r12,r22
	movw r14,r20
	movw r28,r18
	cp r18,r20
	cpc r19,r21
	brsh .L269
	movw r28,r20
	movw r14,r18
.L269:
	mov r24,r16
	mov r25,r11
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	movw r26,r12
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r24,r14
	cpc r25,r15
	brlo .L268
	cp r24,r28
	cpc r25,r29
	brsh .L271
	movw r28,r24
.L271:
	movw r26,r12
	ld r30,X+
	ld r31,X
	sbiw r26,1
	add r30,r28
	adc r31,r29
	ld r17,Z
	st Z,__zero_reg__
	ld r22,X+
	ld r23,X
	add r22,r14
	adc r23,r15
	mov r24,r16
	mov r25,r11
	call _ZN6StringaSEPKc
	movw r26,r12
	ld r30,X+
	ld r31,X
	add r30,r28
	adc r31,r29
	st Z,r17
.L268:
	mov r24,r16
	mov r25,r11
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
	.size	_ZNK6String9substringEjj, .-_ZNK6String9substringEjj
	.section	.text._ZNK6String9substringEj,"ax",@progbits
.global	_ZNK6String9substringEj
	.type	_ZNK6String9substringEj, @function
_ZNK6String9substringEj:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r16,r24
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	call _ZNK6String9substringEjj
	movw r24,r16
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZNK6String9substringEj, .-_ZNK6String9substringEj
	.section	.text._ZN6StringaSERKS_,"ax",@progbits
.global	_ZN6StringaSERKS_
	.type	_ZN6StringaSERKS_, @function
_ZN6StringaSERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	movw r30,r22
	cp r24,r22
	cpc r25,r23
	breq .L276
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L277
	ldd r20,Z+4
	ldd r21,Z+5
	call _ZN6String4copyEPKcj
	rjmp .L276
.L277:
	call _ZN6String10invalidateEv
.L276:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringaSERKS_, .-_ZN6StringaSERKS_
	.section	.text._ZN6StringC1ERKS_,"ax",@progbits
.global	_ZN6StringC1ERKS_
	.type	_ZN6StringC1ERKS_, @function
_ZN6StringC1ERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	call _ZN6StringaSERKS_
/* epilogue start */
	ret
	.size	_ZN6StringC1ERKS_, .-_ZN6StringC1ERKS_
	.section	.text._ZN6StringC2ERKS_,"ax",@progbits
.global	_ZN6StringC2ERKS_
	.type	_ZN6StringC2ERKS_, @function
_ZN6StringC2ERKS_:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	call _ZN6StringaSERKS_
/* epilogue start */
	ret
	.size	_ZN6StringC2ERKS_, .-_ZN6StringC2ERKS_
	.section	.text._ZN6StringD1Ev,"ax",@progbits
.global	_ZN6StringD1Ev
	.type	_ZN6StringD1Ev, @function
_ZN6StringD1Ev:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	call free
/* epilogue start */
	ret
	.size	_ZN6StringD1Ev, .-_ZN6StringD1Ev
	.section	.text._ZN6StringD2Ev,"ax",@progbits
.global	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, @function
_ZN6StringD2Ev:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	call free
/* epilogue start */
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
	.section	.bss._ZZN6StringixEjE19dummy_writable_char,"aw",@nobits
	.type	_ZZN6StringixEjE19dummy_writable_char, @object
	.size	_ZZN6StringixEjE19dummy_writable_char, 1
_ZZN6StringixEjE19dummy_writable_char:
	.skip 1,0
