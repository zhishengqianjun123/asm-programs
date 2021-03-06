assume cs:code,ss:stack,ds:data

data segment
    dw 0123H,0456H
data ends

stack segment
    dw 0,0,0,0,0,0,0,0
stack ends

code segment
start:
    mov ax,stack
    mov ss,ax
    mov sp,10H

    mov ax,data
    mov ds,ax

    push ds:[0]
    push ds:[2]
    pop ds:[2]
    pop ds:[0]

    mov ax,4c00H
    int 21H
code ends

end start
