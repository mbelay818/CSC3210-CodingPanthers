@ arithmetic2 program: Register = val2 + 9 + val3 - val1
.section .data
val1: .word 6		@ 32-bit variable val1 in memory
val2: .word 11		@ 32-bit variable val2 in memory
val3: .word 16		@ 32-bit variable val3 in memory
.section .text
.globl _start
_start:
    ldr r2,=val1	 @ load the memory address of val1 into r2
    ldr r2,[r2]		 @ load the value val1 into r2
    ldr r3,=val2	 @ load the memory address of val2 into r3
    ldr r3,[r3]		 @ load the value val2 into r3
    ldr r4,=val3	 @ load the memory address of val2 into r4
    ldr r4,[r4]		 @ load the value val3 into r4
    sub r4,r4,r2	 @ subtract r2 from r4 and store into r4
    add r4,r4,#9	 @ add 9 to r4 and store into r4
    add r3,r3,r4	 @ add r4 to r3 and store into r3
    mov r1,r3	         @ move r3 to r1

    mov r7,#1		 @ Program Termination: exit syscall
    svc #0		 @ Program Termination: wake kernel
.end
