; Author: Talson Slayman 

global _start

section .text                   ; the section defines the code
_start:                         ; define an entry point. Like the main func in a C program.
  mov eax, 0x4                  ; invoke syscall stdin to eax reg. 
  mov ebx, 0x1                  ; invoke syscall stdout to ebx reg.
  mov ecx, message              ; point to the "message" string.
  mov edx, mlen                 ; move message lengths to edx reg.
  int 0x80                      ; issue systemcall
  
  mov eax, 0x1
  mov ebx, 0x5
  int 0x80                      ; exit the program gracefully
  
section .data                   ; the section holdes variables
  message: db "Hello World!"    ; db for Define Data
  mlen  equ $-message           ; define the byte lengths of the message
