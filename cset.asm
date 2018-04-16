dosseg 
.model small
.stack 100h
.data
.code

main proc
mov ah,9
mov al,'a'
mov bh,0
mov bl,11111100b
mov cx,3
int 10h


mov ah,4ch
int 21h
main endp
end main





