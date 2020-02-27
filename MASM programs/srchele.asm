; search a given char in arring
Assume cs:code , ds:data 
data segment
	count equ 05h
	arr db 90h,78h,99h,12h,01h
data ends
code segment
start:
	mov ax,data
	mov ds,ax
	
	mov di,offset arr
	mov cx , count
	mov al,99h
	REPNE SCASB ; REPNE = repeat if not equal ; SCASB = 1)scaan 2)cmp with ax/al 3)dec counter
	int 03h

	code ends
	end start
; not working
;output:
; AX = xx49 ; 49(hexa decimal for 73(ascii of 'I') is ascii value(in hexdecimal) of 'I'
; DI = 0006 ; index of 'I'
; V A S A V I
; 0 1 2 3 4 5