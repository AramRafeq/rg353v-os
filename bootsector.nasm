mov ah,0x0e
mov al, 'R'
int 0x10

mov al, 'G'
int 0x10

mov al, '3'
int 0x10

mov al, '5'
int 0x10

mov al, '3'
int 0x10

mov al, 'V'
int 0x10



mov al, '-'
int 0x10

mov al, 'O'
int 0x10

mov al, 'S'
int 0x10

mov al, 0xA
int 0x10

loop:
    jmp loop

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0

; Magic number
dw 0xaa55 
