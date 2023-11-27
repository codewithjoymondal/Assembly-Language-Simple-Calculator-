;Joy Mondal .I Am A Computer Science Engineer  
;This Is Assembly-Simple-Calculator     
;**** I Am Joy Mondal .I special Thank You  For Test My Term Paper Project ****



.Model Small
.Stack 100h
.Data
JOYMONDAL DB 'For ADD Type : '1'$'
JOYMONDAL1 DB 10,13,10,13,'For SUB Type : '2'$'
JOYMONDAL2 DB 10,13,10,13,'For ODD&EVEN Type : '3'$'
JOYMONDAL3 DB 10,13,10,13,'For Number Size Type : '4'$'
JOYMONDAL4 DB 10,13,10,13,'Choose Any One : $'
JOYMONDAL5 DB 10,13,10,13,'Enter 1st Number : $'
JOYMONDAL6 DB 10,13,10,13,'Enter 2nd Number : $'
JOYMONDAL7 DB 10,13,10,13,'Enter Number For Cheak ODD&EVEN : $'
JOYMONDAL8 DB 10,13,10,13,'The Equation Is : $'
JOYMONDAL9 DB 10,13,10,13,'The Number is ODD. $'
JOYMONDAL10 DB 10,13,10,13,'The Number is EVEN. $'
JOYMONDAL11 DB 10,13,10,13,'1st number is greater than 2nd.$'
JOYMONDAL12 DB 10,13,10,13,'1st number is less than 2nd.$'
JOYMONDAL13 DB 10,13,10,13,'Two Numbers Are Equal. $'
JOYMONDAL14 DB 10,13,10,13,'#### My Github: https://github.com/codewithjoymondal #### $'
JOYMONDAL15 DB 10,13,10,13,'#### I Am Joy Mondal .I special Thank You  For Test My Term Paper Project #### $'    
                                                                                                                                   

.Code

Main proc
 Mov AX,@Data
 Mov DS,AX

 Lea DX ,JOYMONDAL
 Mov AH,9
 Int 21H

 Lea DX ,JOYMONDAL1
 Mov AH,9
 Int 21H

 Lea DX ,JOYMONDAL2
 Mov AH,9
 Int 21H

 Lea DX ,JOYMONDAL3
 Mov AH,9
 Int 21H
 Lea DX ,JOYMONDAL4
 Mov AH,9
 Int 21H

 Mov AH,1
 Int 21H
 Mov BH,AL
 SUB BH,48

 CMP BH ,1
 JE ADD

 CMP BH,2
 JE SUB

 CMP BH ,3
 JE ODD&EVEN

 CMP BH,4
 JE NUMBER_SIZE


 ADD:
 LEA DX,JOYMONDAL5 

 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 MOV BL,AL

 LEA DX,JOYMONDAL6
 MOV AH,9
 INT 21H



 MOV AH,1
 INT 21H
 MOV CL,AL

 ADD AL,BL
 MOV AH,0
 AAA


 MOV BX,AX
 ADD BH,48
 ADD BL,48


 LEA DX,JOYMONDAL8
 MOV AH,9
 INT 21H


 MOV AH,2
 MOV DL,BH
 INT 21H

 MOV AH,2
 MOV DL,BL
 INT 21H

 ;LEA DX,JOYMONDAL14
 ;MOV AH,9
 ;INT 21H 


 JMP EXIT_P
 SUB:
 LEA DX,JOYMONDAL5
 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 MOV BL,AL

 LEA DX,JOYMONDAL6
 MOV AH,9
 INT 21H



 MOV AH,1
 INT 21H
 MOV CL,AL

 SUB BL,CL
 ADD BL,48




 LEA DX,JOYMONDAL8
 MOV AH,9
 INT 21H


 MOV AH,2
 MOV DL,BL
 INT 21H



 ;LEA DX,JOYMONDAL14
 ;MOV AH,9
 ;INT 21H
 



 JMP EXIT_P
 ODD&EVEN:

 DISPLAY MACRO MSG
 MOV AH,9
 LEA DX,MSG
 INT 21H
 ENDM
 ASSUME CS:CODE,DS:DATA
 MOV AX,DATA
 MOV DS,AX
 DISPLAY JOYMONDAL7
 MOV AH,1
 INT 21H
 MOV AH,0
 CHECK: MOV DL,2
 DIV DL
 CMP AH,0
 JNE ODD
 EVEN:
 DISPLAY JOYMONDAL10

 ;LEA DX,JOYMONDAL14
 ;MOV AH,9
 ;INT 21H


 JMP EXIT_P
 JMP EXIT

 ODD:
 DISPLAY JOYMONDAL9

 JMP EXIT_P

 NUMBER_SIZE:

 LEA DX,JOYMONDAL5
 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 MOV BL,AL

 LEA DX,JOYMONDAL6
 MOV AH,9
 INT 21H

 MOV AH,1
 INT 21H
 MOV CL,AL


 L1:
 CMP BL,CL
 JE EQUAL
 MOV DL, 10
 MOV AH, 2
 INT 21H
 MOV DL, 13
 INT 21H
 CMP BL, CL
 JGE GREATER
 MOV DX, OFFSET JOYMONDAL12
 MOV AH, 9
 INT 21H

 ;LEA DX,JOYMONDAL14

 ;MOV AH,9
 ;INT 21H

 JMP EXIT_P

 JMP EXIT
 GREATER:
 MOV DX, OFFSET JOYMONDAL11
 MOV AH, 9
 INT 21H

 ;LEA DX,JOYMONDAL14
 ;MOV AH,9
 ;INT 21H

 JMP EXIT_P

 JMP EXIT
 EQUAL:
 MOV DL, 10
 MOV AH, 2
 INT 21H
 MOV DL, 13
 MOV AH, 2
 INT 21H
 MOV DX, OFFSET JOYMONDAL13
 MOV AH, 9
 INT 21H

 ;LEA DX,JOYMONDAL14
 ;MOV AH,9
 ;INT 21H

 JMP EXIT_P
 jmp EXIT


EXIT_P:

 LEA DX,JOYMONDAL14
 MOV AH,9
 INT 21H





 EXIT:
 MOV AH,4CH
 INT 21H

 MAIN ENDP
END MAIN
