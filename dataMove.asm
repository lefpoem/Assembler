;目的是实现数据从ffff:0~ffff:b到0:200~0:200
assume cs:pass
pass segment
    mov bx,0 ;初始化bx
    mov cs,12 ;设置循环次数12
s:  mov ax,0ffffh
    mov ds,ax
    mov dl,[bx]
    mov ax,0
    mov ds,ax
    mov [bx],dl
    inc bx
    loop s 
    mov ax,4c00h
    int 21h
pass ends
end