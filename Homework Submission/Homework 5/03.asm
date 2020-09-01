.MODEL SMALL
.STACK 100H 

.DATA
    PROMPT_1 DB 'Enter an integer: $'  
    PROMPT_2 DB 0DH,0AH,'The integer is: $' 
    
.CODE
    MAIN PROC   
        
        
        MOV AX, @DATA
        MOV DS, AX  
        
        LEA DX, PROMPT_1
        MOV AH, 9
        INT 21H 
        
        MOV AH, 01H
        INT 21H 
        
        MOV BL, AL 
        
        MOV AH, 01H
        INT 21H 
        MOV CL, AL
        
        MOV AH, 01H
        INT 21H 
         
        MOV AH, 09H
        LEA DX, PROMPT_2
        INT 21H
        
        
        CMP BL, 2DH
        JE @NEGATIVE 
         
        MOV DL, 'P'
        MOV AH, 02H
        INT 21H
        JMP @END   
                
 @NEGATIVE:
        MOV DL, 'N'
        MOV AH, 02H
        INT 21H
                      
@END:   HLT
    
    MAIN ENDP
    END MAIN