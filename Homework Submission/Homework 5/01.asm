.STACK 100H 

.DATA
    PROMPT_1 DB 'Enter the binary value: $'  
    PROMPT_2 DB 0DH,0AH,'SHR by 4 bits: $'
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, PROMPT_1
        MOV AH, 9
        INT 21H
        XOR BL, BL
        MOV CX, 8
        MOV AH, 1
        
@INPUT:
    INT 21H
    CMP AL, 0DH
    JE @END
    AND AL, 0FH
    SHL BL, 1
    OR BL, AL
    LOOP @INPUT
        
@END:
    MOV AL, BL
        
@SHIFTRIGHT:
    MOV CL, 4
    SHR AL, CL
    MOV BL, AL
    
        LEA DX, PROMPT_2
        MOV AH, 9
        INT 21H
        MOV CX, 8
        MOV AH, 2
        
@OUTPUT:
    SHL BL, 1
    JNC @ZERO
    MOV DL, 31H
    JMP @DISPLAY
    
@ZERO:
    MOV DL, 30H
    
@DISPLAY:
    INT 21H
    LOOP @OUTPUT
    
        MOV AH, 4CH
        INT 21H  
        
    MAIN ENDP
END MAIN



