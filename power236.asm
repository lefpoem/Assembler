assume cs:power236
power236 segment
    mov ax,0
    mov cx,236
s:  add ax,123
    loop s
    mov ax,4c00h；程序返回命令，细说应该是中断机制
    int 21h
power236 ends
end