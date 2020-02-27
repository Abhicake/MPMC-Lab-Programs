; sorting in descending
Assume cs:code , ds:data 
data segment
	Array db 90h,78h,99h,12h,01h
data ends

code segment
start:
	mov ax,data
	mov ds,ax
	xor ax,ax
	mov cl,05h
	mov dl,cl
	dec cl
	
lup2:
	mov bx,offset array ; bx is a pointer to array
lup1:
	mov al,[bx]
	cmp [bx+1],al ; +ve xchg , -ve continue
	jc continue
	xchg al,[bx+1]
	mov [bx],al
	
continue:
	inc bx
	loop lup1
	dec dl
	mov cl,dl
	loop lup2
	int 03h
	
	code ends
	end start
;
;output:
;-d ds:0000
;99 90 78 12 01


