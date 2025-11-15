;--------------------------------
; Программа вычисления выражения
;--------------------------------
%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
div: DB 'Вычисление выражения y=10+(31*x-5)',0
msg: DB 'Введите x',0
rem: DB 'Результат',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax,div
call sprintLF
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x 
call atoi
mov ebx,31
mul ebx
add eax, -5
add eax, 10
mov ebx, eax
mov eax, rem
call sprint
mov eax, ebx
call iprintLF
call quit
