	.file	"main.cpp"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	call init
	call setup
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L6:
	call loop
	sbiw r28,0
	breq .L6
	call _Z14serialEventRunv
	rjmp .L6
	.size	main, .-main
	.weak	_Z14serialEventRunv
