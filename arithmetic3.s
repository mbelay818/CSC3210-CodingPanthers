@ arithmetic3 program: Register = val2 + 3 + val3 - val1
.section .data
val1: .byte -60			@ 8-bit  varaible val1 in memory
val2: .byte 11			@ 8-bit  variable val2 in memory
val3: .byte 16			@ 8-bit  variable val3 in memory
.section .text
.globl _start
_start:
   ldr r1,=val1			@ load the memory adress of val1 into r1
   ldrsb r1,[r1]		@ load the signed value val1 into r1
   ldr r2,=val2			@ load the memory adress of val2 into r2
   ldrb r2,[r2]			@ load the unsigned value val2 into r2
   ldr r3,=val3			@ load the memory adress of val3 into r3
   ldrb r3,[r3]			@ load the unsigned value val3 into r3
   add r2,r2,#3			@ add 3 to r2 and store into r2
   add r3,r3,r2			@ add r2 to r3 and store into r3
   sub r1,r3,r1			@ subtract r1 from r3 and store into r1

   mov r7,#1			@ Program Termination: exit syscall
   svc #0			@ Program Termination: wake kernel
.end
