org 0x100

mov ax, [num1]
mov bx, [num2]
add ax, bx
mov [sum], ax

num1: dw 5
num2: dw 15
sum: dw 0

mov ax, 0x4c00
int 0x21