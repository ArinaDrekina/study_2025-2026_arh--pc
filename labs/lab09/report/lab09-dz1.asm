%include 'in_out.asm'
SECTION .data
msgF db "Функция: f(x)=10*x-4",0
msgR db "Результат: ",0
section.bss
x: resb 80
res: resd 1
SECTION .text
global _start
_start:
mov eax,msgF
call sprint
mov ecx,x
mov edx,80
call sprint
Архитектура ЭВМ
SECTION .data
msg: DB 'Введите x: ',0
result: DB '2x+7=',0
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x
call atoi
call f_calc ; Вызов подпрограммы _calcul
mov [res],eax
mov eax,result
call sprint
mov eax,[res]
call iprintLF
call quit
f_calc:
mov ebx,10
xor edx,edx
mul ebx
sub eax,4
ret
call quit
