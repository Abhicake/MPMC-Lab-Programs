; smallest no.

Assume cs:code , ds:data
data segment
data ends
code segment
start:
	mov ax,0ffffh;
	mov si , 0200h;
	mov cx,[si]
	mov cx,[si];
back:
	inc si;
	inc si
	cmp ax,[si]
	JB go
	mov ax,[si]

go:
	loop back
	mov di,0251
	mov [di],ax;
	;mov [di+1] , ah;
	int 03h
	
	code ends
	end start
	
; o/p:
; ax = smallest no.
	
