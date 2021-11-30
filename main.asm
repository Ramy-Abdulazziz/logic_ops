init:
	ldi r16, 0x00
	out VPORTC_DIR, r16
	ldi r16, 0xFF
	out VPORTD_DIR, r16
	out VPORTD_OUT, r16

main: 
	in r16, VPORTC_IN
	
	mov r18, r16
	andi r18, 0xE0
	mov r19, r18
	
	mov r18, r16
	andi r18, 0x1C
	mov r20, r18

	lsl r20
	lsl r20
	lsl r20

	mov r18, r16
	andi r18, 0x03
	
	cpi r18, 0x00
	breq and_func
	cpi r18, 0x01
	breq or_func
	cpi r18, 0x02
	breq xor_func

not_funcn:
	com r19
	mov r21, r19
	rjmp output

or_func:
	or r19, r20
	mov r21, r19
	rjmp output

and_func:
	and r19, r20
	mov r21, r19
	rjmp output

xor_func:
	eor r19, r20
	mov r21, r19
	
output: 
	andi r21, 0xE0
	com r21
	out VPORTD_OUT, r21
	rjmp main 
	
