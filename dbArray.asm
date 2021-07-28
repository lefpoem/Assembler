assume cs:codesg,ds:datasg
datasg segment
    db 'BaSiC'
    db 'MinIX'
datasg ends
codesg segment ;转换大小写
start:  mov ax,datasg
        mov ds:ax
        mov bx,0
        mov cx,5
s:      mov al,[bx]
        and al,11011111b ;与运算，小写变为大写
        mov [bx],al
        inc bx
        loop s 

        mov bx,5
        mov cx,5
s0:     mov al,[bx]
        or  al,00100000b ;大写变小写
        mov [bx],al
        inc bx
        loop s0

        mov ax,4c00h
        int 21h
codesg ends
end start
