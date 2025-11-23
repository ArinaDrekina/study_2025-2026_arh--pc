%include 'in_out.asm'
section .data
msgX db 'Введите x: ',0h
msgA db 'Введите a: ',0h
msgR db 'Результат f(x): ',0h
section .bss
x resb 10
a resb 10
res resd 10
section .text
global _start
_start:
mov eax,msgX
call sprint
mov ecx,x
mov edx,10
call sread
mov eax,x
call atoi
mov [x],eax
mov eax,msgA
call sprint
mov ecx,a
mov edx,10
call sread
mov eax,a
call atoi
mov [a],eax
mov eax,[x]
mov ebx,[a]
cmp eax,ebx
jl check_B
mov [res],ebx
jmp fin
check_B:
add eax,ebx
mov [res], eax
fin:
mov eax,msgR
call sprint
mov eax,[res]
call iprintLF
call quit
