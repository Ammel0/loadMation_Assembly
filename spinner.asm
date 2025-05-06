.model small
.stack 100h
.data
s db '|','/','-','\'
m db 'Loading: $'
.code
main:
mov ax,@data
mov ds,ax
mov ah,09h
lea dx,m
int 21h
x:
mov cx,4
p:
mov ah,2
mov dl,8
int 21h
mov dl,s[4-cx]
int 21h
mov bx,0FFFFh
d: nop
dec bx
jnz d
loop p
jmp x
end main
