; Author: Talson Slayman 

global _start

section .text                   ; the section defines the code
_start:                         ; define an entry point. Like the main func in a C program.

section .data                   ; the section holdes variables
  message: db "Hello World!"    ; db for Define Data
