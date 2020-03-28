@ ControlStructue1 Program

.section .data
x:.word 1       @ 32-bit signed integer
.section .text
.globl _start
_start:
          ldr r1,=x     @ load the memory address of x into r1
	  ldr r1,[r1]	@ load the value x into r1

	  cmp r1,#3
	  ble thenpart	@ branch (jump) if true to the thenpart
	  sub r1,r1,#2	@ subtract 2 from r1 and store it into r1
	  b endofif	@ branch (jump) if false to the end of IF statement body(branch always)
thenpart:
	  sub r1,r1,#1	@ subtract 1 from r1 and store it into r1
endofif:
	  mov r7,#1	@ Program Termination: exit syscall
	  svc #0	@ Program Termination:wake kernel
	  .end
