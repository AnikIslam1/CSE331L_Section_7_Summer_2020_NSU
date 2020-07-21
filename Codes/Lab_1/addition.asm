
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,5
MOV BX,2

ADD AX,BX
MOV CX,AX

ret




