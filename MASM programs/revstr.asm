; REverse string
Assume cs:code , ds:data , es:data

data segment
	str db 'VASAVI'
	len equ ($-str)
	str2 db len dup()
data ends

code segment
start:
	mov ax,data
	mov ds,ax
	mov es,ax
	lea si,str
	add si,len-1
	lea di,str2
	mov cx,len
back:
	mov al,[si]
	mov [di],al
	dec si
	inc di
	loop back
	
	int 03h

	code ends
	end start

;output:
;-d ds:0
; VASAVIIVASAV