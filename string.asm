dosseg 
.model small
.stack 100h
.data
s1 db "Probattle k jeetay UBIT walay$"
.code

main proc
mov ax,@data
mov ds,ax
mov ah,2
mov bl,1
mov dh,0
mov dl,0

int 10h

mov ah,9
mov dx,offset s1
int 21h

mov ah,4ch
int 21h
main endp
end main





