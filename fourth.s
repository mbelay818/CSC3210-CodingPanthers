@ Fourth program
@ This program compute the following if statement construct
	@ intx;
	@ inty;
	@ if(x == 0)
	@ y = 1;
.section .data
x:.word 0 	@ 32-bit variable x in memory
y:.word 0	@ 32-bit variable y in memory
.section .text
.globl _start
_start:
	  ldr r1,=x	@ load the memory address of x into r1
	  ldr r1,[r1]	@ load the value x into r1

	  cmp r1,#0	@ compare r1 and 0
	  bne endofif 	@ branch (jump) if true (X == 0) to the endofif

thenpart: mov r2,#1	@ mov 1 to r2
	  ldr r3,=y	@ load the memory address of y into r3
	  str r2,[r3]   @ store r2 register value into y memory address
endofif:
	  mov r7,#1	@ Program Termination: exit syscall
	  svc #0	@ Program Termination: wake kernel
	  .end
