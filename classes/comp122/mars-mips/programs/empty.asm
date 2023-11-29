# This example MIPS program performs the traditional "no-op" process.
# Simple put, it exercises the following operations
#   1. the startup process for the MIPS environment
#   2. a call to the main subroutine
#   3. the shutdown process for the MIPS environment


        .data           # insert your data declarations

        .text           # insert your code declarations
    
        .globl main     # define your default starting routine

main:   nop             # label for the main program
        li $v0, 10      # v0 = 10 (terminate == 10)
        syscall         # trap: terminate

