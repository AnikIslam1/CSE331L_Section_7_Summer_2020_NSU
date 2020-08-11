
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   ;#include<stdio.h>

;a DB 10 ;int a = 10
;b DW 15 ;int b = 15 


;MOV AX,K
;ADD AX,K1


;K EQU 10
;K1 EQU 15   


;a DB 10;variable

;a DB 10h,15h,10h,11h,12h; array,int a[10]

 
;b DB 10 DUP(?); int a[10] = {}
; int a[n];

;c DB 5 DUP(1,2) ; 1,2,1,2,1 

;MOV BX,10
;MOV BX, 5
;INC BX ;c++  
;DEC BX ;C-- 


;MOV BX, 35h
;MOV DI, 12h
;LEA SI, [BX+DI] 

a db 0h,2h,0h,4h,0h,6h

ret  ;return 0




