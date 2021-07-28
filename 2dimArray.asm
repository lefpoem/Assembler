assume cs:codesg,ds:datasg
datasg segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
datasg ends


codesg segment ;双层循环
start:  
        mov ax,datasg
        mov ds,ax
        mov bx,0
        mov cx,4
s0:     mov ds:[40h],cx ;将外层cx封存，防止，外层cx被内层cx修改
        mov si,0   ；可能发生寄存器不够，改用内存单元保存
        mov cx,3
s:      mov al,[bx+si] ;内层循环
        and al,11011111b
        mov [bx+si],al
        inc si
        loop s

        add bx,16
        mov cx,ds:[40h]
        loop s0

        mov ax,4c00h
        int 21h
codesg ends
end start