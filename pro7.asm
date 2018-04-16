dosseg
.model small
.Stack 100h

.data
s1 db 10 dup('$')

.code
main proc
mov si,@data
mov ds,si
mov bx,offset s1
mov cl,'$'
L1: mov ah,1
    int 21h
    cmp al,'$'
    je endd
    mov ah,2
    mov [bx],al
    mov dl,[bx]
    inc bx
    jmp L1

endd: mov ah,9
      mov dx,offset s1
      int 21h
      mov ah,4ch
      int 21h
      main endp
      end main
