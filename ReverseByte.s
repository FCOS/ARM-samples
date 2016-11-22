	AREA	FirstProgram, CODE, READONLY
	IMPORT	main
	EXPORT	start

start
	LDR r0, =0xFFFFFFFF
	LDR r2, =0x20	

	MOV r3, r0
	MOV r1, #0
	
while
	BEQ endwh
	MOVS r3, r3, LSL #1
	RRX r1, r1
	SUBS r2, r2, #1
	B while
endwh


stop	B	stop

	END	