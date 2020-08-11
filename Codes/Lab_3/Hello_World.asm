

DATA SEGMENT
    MSG DB "HELLO WORLD$"
        
MAIN:

   MOV AX, DATA
   MOV DS, AX
   LEA DX, MSG   
              
              
   MOV AH,9
   INT 21H
   
   MOV AH, 4CH
   INT 21H
   

END MAIN

 ; Hello World
 ; Assembly Language CSE331