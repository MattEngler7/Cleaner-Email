# This example MIPS program performs the traditional "hello-world" example.
# 
#   1. the "Hello World" string is placed into the .data segment
#   2. a system call (#4) is used to print the string
#   3. a system call (#10) is used to terminate the process


        .data
str:    .asciiz "Hello World\n" # H,e,l,l,o, ,W,o,r,l,d,\n,\0

        .text
        .globl main

main:   nop
        li $v0, 4       # v0 = 4 (print_string == 4)
        la $a0, str     # a0 = & str
        syscall         # trap: print_string(str)
    
        li $v0, 10      # v0 = 10 (terminate == 10)
        syscall         # trap: terminate

