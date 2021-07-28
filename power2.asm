assume cs:abc
power2 segment ;计算2*2
    mov ax,2h
    add ax,ax

    mov ax,4c00h ;返回到cmd
    int 21h
power2 ends

end