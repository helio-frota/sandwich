; the variable area
; for declarations and initializations.
section .data
msg db 'hello world', 0AH
len equ $-msg
; the instruction/statements area.
section .text
; the start label where the program will start from.
; using the global directive, means this can be used
; externally.
global _start
; the program starts here.
_start: mov edx, len
        mov ecx, msg
        mov ebx, 1
        mov eax, 4
        int 80h

        mov ebx, 0
        mov eax, 1
        int 80h