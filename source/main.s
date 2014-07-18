.section .init
.globl _start
_start:

ldr r0,=0x20200000
loop$:
mov r1,#1
lsl r1,#18
str r1,[r0,#4]
mov r1,#1
lsl r1,#16
str r1,[r0,#40]
wait1$:
mov r2,#0x3F0000
sub r2,#1
cmp r2,#0
bne wait1$
mov r1,#1
lsl r1,#18
str r1,[r0,#4]
mov r1,#1
lsl r1,#16
str r1,[r0,#28]
wait2$:
mov r2,#0x3F0000
sub r2,#1
cmp r2,#0
bne wait2$
b loop$
