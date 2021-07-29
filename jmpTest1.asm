assume cs:codesg
codesg segment
start:  mov ax,0
        jmp short s ;跳到标号处执行
        add ax,1
    s:  inc ax  ；ax只增加一次。

    mov ax,4c00h
    int 21h
codesg ends
end start