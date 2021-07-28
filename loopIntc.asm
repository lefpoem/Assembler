assume cs:load
load segment
    mov ax,0fff0h ;字母开头的十六进制，需要加0
    mov ds,ax
    mov bx,0 ;初始化ds:bx
    mov dx,0 ;初始化累加寄存器
    mov cx,12;初始化循环计数寄存器
s:  mov al,[bx] ;取ds:bx内容赋值给al
    mov ah,0
    add dx,ax
    inc bx ;bx增加1
    loop s 
load ends
end