assume cs:pass
pass segment  ;通过设置两个ds和es来避免重复给ds赋值
    mov ax,0ffffh
    mov ds,ax
    mov ax,0020h
    mov es,ax
    mov bx,0 ;初始化偏移量
    mov cx,12
s:  mov al,ds:[bx]
    mov es:[bx],al
    inc bx
    loop s 

    mov ax,4c00h
    int 21h
pass ends
end