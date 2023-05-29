        AREA RESET, DATA, READONLY
        EXPORT __Vectors
__Vectors
        DCD 0x20001000
        DCD Reset_Handler ; reset vector
        ALIGN
        AREA CS2400_Sp23, CODE, READONLY
        ENTRY
        EXPORT Reset_Handler
Reset_Handler
;------------------CODE HERE--------------------
; n! = n(n-1)

MAIN
		MOV R0,#10 ; n value
		BL FACT ; link to LR for fun1
		B stop
FACT
		MOV R1,R0	; R1 = 4
FACT_LOOP
		SUB R0,R0,#1 ; n-1
		MUL R1,R1,R0 ; multiply R1 by R0 to store R0 (4) into R1 then decrese R0 by 1 on next 
		CMP R0,#1 ; compare 4 to 1
		BNE FACT_LOOP
		MOV R0,R1 ; move final value to R0
		BX LR 
		
	ADD R0,R0,#0 ; NOP INSTRUCTIONS
	ADD R0,R0,#0 ; NOP INSTRUCTIONS
		
;------------------CODE HERE--------------------
stop B stop
        END