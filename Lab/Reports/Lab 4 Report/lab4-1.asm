org 0x100

jmp start

num1: dw 1, 2, 3, 4, 5 
sum: dw 0

start:

mov ax,0
mov bx,num1
mov cx,5

outerloop:
add ax,[bx]
add bx,2
sub cx,1
jnz outerloop

mov [sum],ax
mov ax,0x4c00
int 0x21

