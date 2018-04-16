dosseg
.model small
.Stack 100h
.Data
v1 db ?
v2 db '?'
v3 db 1
v4 db '1'
v5 db 'ubit'
.code
main proc
mov ax,@data
mov ds,ax
mov bx,offset v5 
mov ah,2
mov dl,[bx]
int 21h
inc bx
mov dl,[bx]
int 21h
inc bx
mov dl,[bx]
int 21h
mov ah,4ch
int 21h
main endp
end main

