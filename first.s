//Michael Merid

@ first program
.section .data 
.section .text
.globl _start
_start:
    mov r1,#5	    @ load r1 with 5
    sub r1,r1,#1    @ subtract 1 from r1
    add r1,r1,#4    @ add 4 to r1

    mov r7,#1	    @ Program Termination: exit syscall
    svc #0	    @ Program Termination : wake kernel
.end

//Michael Merid

.section .data
.section .text
.global _start
_start:
  mov r1, #5
  sub r1, r1, #1
  add r1, r1, #4
  mov r7, #1
  svc #0

.end


>>>>>>> ae51e9bf14872288c0f8c34bd9514311c9b67c29
