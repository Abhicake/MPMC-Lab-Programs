Assume cs:code , ds:data , ss:stack
data segment
	num1 db 05h
	num2 db 06h
	sum db ?
	su db ?
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
	
	mov SP, offset tos
	call addition
	call subtraction
	int 03h
	
	addition proc near
	mov al, num1
	mov bl, num2
	add al,bl
	mov sum,al
	ret
	addition endp
	
	subtraction proc near
	mov al,num1
	mov bl,num2
	sub al,bl
	mov su,al
	ret 
	subtraction endp
	
	code ends
	end start
	