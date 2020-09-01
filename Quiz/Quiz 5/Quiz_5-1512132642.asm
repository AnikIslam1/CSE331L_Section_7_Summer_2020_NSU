
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL

.stack 100H

.DATA                                                 
                                                       

    VAL1    DB  ?                                       
    NL1     DB  0AH,0DH, 'ENTER AN INTEGER LESS THAN 9: ','$'             
    NL2     DB  0AH,0DH, 'The number is X`','$'         
    NL3     DB  0AH,0DH, 'The number us X','$'             

.CODE                                            
                                                       
MAIN:

    MOV AX,@DATA                                       
    MOV DS,AX                                          

    LEA DX,NL1                                        
    MOV AH,09H                                         
    INT 21H                                           

    MOV AH,01H                                        
    INT 21H                                           
    SUB AL,30H                                         
    MOV VAL1,AL                                        

    MOV AH,00                                        

    MOV CL,2                                          
    DIV CL                                            
    MOV CL,AL                                       

LBL1:

    CMP CL,1
    JBE LBL3
    
    MOV AH,00
    MOV AL,VAL1
    DIV CL
    CMP AH,00
    JZ LBL2
    DEC CL
    JMP LBL1                                           

LBL2:

    MOV AH,09H                                       
    LEA DX,NL2                                        
    INT 21H                                           
    JMP EXIT                                          

LBL3:

    MOV AH,09H                                        
    LEA DX,NL3                                        
    INT 21H                                            

EXIT:

    MOV AH,4CH                                         
    INT 21H                                            

    END MAIN                                           

ret




