	.file	"new.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.__cxa_guard_acquire,"ax",@progbits
.global	__cxa_guard_acquire
	.type	__cxa_guard_acquire, @function
__cxa_guard_acquire:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	ld r24,Z
	tst r24
	brne .L2
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L2:
	movw r24,r18
/* epilogue start */
	ret
	.size	__cxa_guard_acquire, .-__cxa_guard_acquire
	.section	.text.__cxa_guard_release,"ax",@progbits
.global	__cxa_guard_release
	.type	__cxa_guard_release, @function
__cxa_guard_release:
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
	ldi r24,lo8(1)
	st Z,r24
/* epilogue start */
	ret
	.size	__cxa_guard_release, .-__cxa_guard_release
	.section	.text.__cxa_guard_abort,"ax",@progbits
.global	__cxa_guard_abort
	.type	__cxa_guard_abort, @function
__cxa_guard_abort:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	__cxa_guard_abort, .-__cxa_guard_abort
	.section	.text.__cxa_pure_virtual,"ax",@progbits
.global	__cxa_pure_virtual
	.type	__cxa_pure_virtual, @function
__cxa_pure_virtual:
/* prologue: function */
/* frame size = 0 */
/* epilogue start */
	ret
	.size	__cxa_pure_virtual, .-__cxa_pure_virtual
	.section	.text._ZdlPv,"ax",@progbits
.global	_ZdlPv
	.type	_ZdlPv, @function
_ZdlPv:
/* prologue: function */
/* frame size = 0 */
	call free
/* epilogue start */
	ret
	.size	_ZdlPv, .-_ZdlPv
	.section	.text._Znwj,"ax",@progbits
.global	_Znwj
	.type	_Znwj, @function
_Znwj:
/* prologue: function */
/* frame size = 0 */
	call malloc
/* epilogue start */
	ret
	.size	_Znwj, .-_Znwj
