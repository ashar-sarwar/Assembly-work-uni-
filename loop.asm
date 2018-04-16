dosseg
.model small
.Stack 100h
.Data
.Code
main proc

mov cx,10
mov ah,2
mov dl,48

L1:int 21h
   inc dl
   loop L1

mov ah,4ch
int 21h

main endp
end main
   