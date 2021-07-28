assume cs:power11
power11 segment
    mov ax,2h
    mov cx,11
s:  add ax,ax
    loop s
    mov ax,4c00h
    int 21h
power11 ends
end