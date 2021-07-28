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
s:      mov al,0[bx]
        and al,11011111b ;与运算，小写变为大写
        mov [bx],al

        mov al,5[bx]
        or  al,00100000b ;大写变小写
        mov [bx],al

        inc bx
        loop s

        mov ax,4c00h
        int 21h
codesg ends
end start
