dosseg
.model small
.Stack 100h
.Data
s1 db "num is odd$"
s2 db "num is even$"
s3 db "num is invalid"
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

cmp bl,masm48
jl endd
cmp bl,'9'
jg endd

endd:
   mov ah,9
   mov dx,offset s3
   int 21h
   mov ah,4ch
   int 21h

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










