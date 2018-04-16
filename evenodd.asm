dosseg
.model small
.Stack 100h
.Data
s1 db "num is odd$"
s2 db "num is even$"
.Code
main proc
mov si,@data
mov ds,si
mov ah,1
int 21h
mov bl,al
cmp bl,'1'
je odd
cmp bl,'3'
je odd
cmp bl,'5'
je odd
cmp bl,'7'
je odd
cmp bl,'9'
je odd

evenn:
   mov ah,9
   mov dx,offset s2
   int 21h
   mov ah,4ch
   int 21h

odd:
    mov ah,9
    mov dx,offset s1
    int 21h
    mov ah,4ch
    int 21h

main endp
end main









