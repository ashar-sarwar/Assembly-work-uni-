dosseg
.model small
.Stack 100h
.Data
v1 db ?
v2 db '?'
v3 db 1
v4 db '1'
v5 db 'ubit$'
.code
main proc
mov si,@data
mov ds,si
mov ah,9
mov dx,offset v5 
int 21h
mov ah,4ch
int 21h
main endp
end main

