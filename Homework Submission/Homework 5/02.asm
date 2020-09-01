.MODEL SMALL 
.STACK 100H 
.DATA 
    PROMPT_1 DB "Enter num 1: $" 
    PROMPT_2 DB 0AH, 0DH, "Enter num 2: $" 
    PROMPT_3 DB 0AH, 0DH, "Sum: $" 
    
    VALUE_1 DB ?
    VALUE_2 DB ?
.CODE 
    MAIN PROC
        MOV AX, @DATA 
        MOV DS, AX 
         
        LEA DX, PROMPT_1 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV BL, AL
         
        LEA DX, PROMPT_2 
        MOV AH, 09H 
        INT 21H 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
        MOV CH, AL 
         
        MOV AH, 01H 
        INT 21H 
         
        SUB AL, 30H 
         
         
        ADD AL,BL  
         
          
       
        MOV AH, 00H 
        AAA 
         
        MOV CL, AL
        MOV VALUE_1,AH  
         
        ADD VALUE_1,BH 
        ADD VALUE_1,CH 
         
        MOV AL, VALUE_1 
        MOV AH, 00H 
        AAA 
         
         
         MOV VALUE_1, AH
         MOV VALUE_2, AL
         
        LEA DX, PROMPT_3 
        MOV AH, 09H 
        INT 21H 
         
        MOV DL, VALUE_1 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, VALUE_2 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
         
        MOV DL, CL 
        ADD DL, 30H 
        MOV AH, 02H 
        INT 21H 
     
        MOV AH, 04CH 
        INT 21H
        
    MAIN ENDP 
   END MAIN

