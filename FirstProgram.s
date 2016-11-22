	AREA	FirstProgram, CODE, READONLY
	IMPORT	main
	EXPORT	start

start
	MOV r0, #0
	MOV r3, #1
	LDR r1, =test	
	LDRB r2, [r1], #1
	cmp r2, #0
	BEQ firstNULL
	 
notNULL
	cmp r2, #' '
	BNE notspace
	ADD r0, r0, #1
	SUB r0, r0, r3
	MOV r3, #1
notspace
	cmp r2, #' '
	BEQ	space
	MOV r3, #0
space

	LDRB r2, [r1], #1
	cmp r2, #0
	BNE notNULL
		
	ADD r0, r0, #1
	SUB r0, r0, r3
firstNULL

stop	B	stop

	AREA TestData, Data, READWRITE
test DCB "it is                               a beautiful day",0
	END	