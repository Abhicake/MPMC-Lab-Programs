; BCD to BINARY using procedures
Assume cs:code , ds:data , ss:stack
data segment
	bcdin db 17h
	binout db ?
data ends
stack segment
	stk dw 50 dup(0)
	tos label word
stack ends
code segment
start:
	mov ax,data
	mov ds,ax
	mov ax,stack
	mov ss,ax
	mov sp,offset tos
	lea si,bcdin
	lea di,binout
	call bcdtobin
	int 03h
	
bcdtobin proc near
	mov al,[si]
	mov bl,al
	and bl,0Fh
	and al,0f0h
	mov cl,04h
	ror al,cl
	mov bh,0Ah
	mul bh
	add al,bl
	mov [di],al
	ret
	
	bcdtobin endp
	
	code ends
	end start
	
; o/p:
; -d ds:0000
; 17 11

	
	
	