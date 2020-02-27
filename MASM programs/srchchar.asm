; search a given char in string
Assume cs:code , ds:data , es:data
data segment
	count equ 06h
	str db 'VASAVI'
data ends
code segment
start:
	mov ax,data
	mov ds,ax
	mov es,ax
	mov di,offset str
	mov cx , count
	mov al,'A'
	REPNE SCASB ; REPNE = repeat if not equal ; SCASB = 1)scaan 2)cmp with ax/al 3)dec counter
	int 03h

	code ends
	end start

;output:
; AX = xx49 ; 49(hexa decimal for 73(ascii of 'I') is ascii value(in hexdecimal) of 'I'
; DI = 0006 ; index of 'I'
; V A S A V I
; 0 1 2 3 4 5