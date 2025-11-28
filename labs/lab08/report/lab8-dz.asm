%include 'in_out.asm'
SECTION .data
msgF db "Функция: f(x)=10*x-4",0
msgR db "Результат: ",0
SECTION .text
global _start
_start:
mov eax,msgF
call sprintLF
pop ecx
pop edx
sub ecx,1
mov esi, 0
next:
cmp ecx,0h
jz _end 
pop eax
call atoi
mov ebx,eax
imul ebx,10
sub ebx,4
mov eax,ebx
add esi,eax
loop next
_end:
mov eax, msgR
call sprint
mov eax, esi
call iprintLF
call quit
