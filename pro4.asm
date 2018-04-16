dosseg
.model small
.Stack 100h
.Data
v1 db ?
v2 db '?'
v3 db 1
v4 db '1'
v5 db 255
.code
main proc
mov ax,@data
mov ds,ax 
mov ds,ax
mov ah,2
mov dl,v2
int 21h
mov ah,4ch
int 21h
main endp
end main

