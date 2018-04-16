dosseg
.model small
.Stack 100h
.Data
.Code



divide proc
mov cx,0
mov ax,251
mov bx,10

L1:
   mov dx,0
   div bx
   push dx
   inc cx
   cmp ax,0
   jne L1

L2:
   pop dx
   add dx,48
   mov ah,2
   int 21h
   loop L2

mov ah,4ch
int 21h

ret
divide endp


main proc
call divide

main endp
end main