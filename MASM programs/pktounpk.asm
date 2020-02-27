; packed to unpacked bcd addition
Assume cs:code , ds:data
data segment
data ends
code segment
start:
	mov al,07h
	mov ah,03h
	mov bl,08h
	mov bh,02h
	add ax,bx
	AAA ; Ascii adjust after addition
	int 03h
	
	code ends
	end start
	
; o/p:
; ax= 0605
; if AAA is not used ax = 050F