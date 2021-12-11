  SECTION .text:
  ; we mark the start for this library using following

  GLOBAL _start

  _start:
      ; write the string to console
    mov eax, 0x4                  ; write system call
    mov ebx, 1                    ; para - std output should
    mov ecx, message              ; the string to write
    mov edx, message_length       ; length of the string
    int 0x80                      ; invoke the system call


    ; exit the program
    mov eax, 0x1                  ; exit system call
    mov ebx, 0                    ; exit code (return 0)
    int 0x80                      ; commit out and see 

    ; note that int is NOT right way to do things
    ; (more on this later)


    ;data section here, we can also move it above  .code
    SECTION .data:
      ; 0xA for new line , 0X0 for NULL terminator
      message: db "Dawood Chattha" ; every character will go in 1 byte.mean D = 8 bits, a = 8 bits, and so on 
      message_length: equ 8 ; assemle time directive $-message
      message_length: equ $-message ; best way not worry about character counting
      ; message_length: equ 8
      ; is exactly same as #define message_length 8 