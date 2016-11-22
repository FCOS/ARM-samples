	AREA	FirstProgram, CODE, READONLY
	IMPORT	main
	EXPORT	start

start
	LDR r0, =0x003
	
	MOV r3, r0
	MOV r1, #0
	MOV r2, #9
	
	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0

	MOVS r3, r3, LSR #1
	ADC r1, r1, #0
	
	SUB r2, r2, r1	
	
stop	B	stop

	END	