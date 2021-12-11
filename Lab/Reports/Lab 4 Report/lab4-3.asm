org 0x100

mov ax,[num1]
mov bx,[num1+2]
add ax,bx
mov [num1+4],ax

num1: dw 15,20,0

mov ax,0x4c00
int 0x21
