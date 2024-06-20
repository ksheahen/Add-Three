; Chapter 8 Program 1
; Author: Kathryn Sheahen
; Date: 4/28/2024


INCLUDE Irvine32.inc


.data
;First set of values to add
val1 DWORD 12
val2 DWORD 10
val3 DWORD 2
;Second set of values to add
val4 DWORD 5
val5 DWORD 3
val6 DWORD 1
;Third set of values to add
val7 DWORD 45
val8 DWORD 20
val9 DWORD 15

.code
main PROC
	
	push val1		;push val1 to stack
	push val2		;push val2 to stack
	push val3		;push val3 to stack

	call AddThree	;call AddThree procedure
	call WriteInt	;write sum in console
	call Crlf		;new line in console
	
	push val4		;push val4 to stack
	push val5		;push val5 to stack
	push val6		;push val6 to stack

	call AddThree	;call AddThree procedure
	call WriteInt	;write sum in console
	call Crlf		;new line in console

	push val7		;push val7 to stack
	push val8		;push val8 to stack
	push val9		;push val9 to stack

	call AddThree	;call AddThree procedure
	call WriteInt	;write sum in console


main ENDP

AddThree PROC
	
	push ebp			;push ebp register to stack
	mov ebp,esp			;move esp to ebp
	mov eax,[ebp+16]	;move third value to eax
	add eax,[ebp+12]	;add second value to eax
    add eax,[ebp+8]		;add three value to eax
    pop ebp				;pop ebp off the stack
	ret					

AddThree ENDP
END main