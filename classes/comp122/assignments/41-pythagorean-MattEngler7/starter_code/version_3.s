 .data
prompt1: .asciiz "Enter value for A: "
prompt2: .asciiz "Enter value for B: "
result:  .asciiz "The hypotenuse is: "

    .text
main:
         # save $ra
         addi $sp, $sp, -4
         sw $ra, 0($sp)

         # accept input
         la $a0, prompt1
         addi $v0, $0, 4         # Print prompt1 string
         syscall
         addi $v0, $0, 6         # Read float
         syscall
         add.s $f12, $f5, $f0     # f12 = A(input float)

         la $a0, prompt2
         addi $v0, $0, 4         # Print prompt2 string
         syscall
         addi $v0, $0, 6         # Read float
         syscall
         add.s $f13, $f5, $f0     # f13 = B(input float)

hypotenuse:
    mul.s   $f12, $f12, $f12        # A*A
    mul.s   $f13, $f13, $f13        # B*B
    add.s   $f12, $f12, $f13        # A*A + B*B
    addi    $sp, $sp, -4            # Allocate
    sw  $ra 0($sp)

    add.s   $f0, $f12, $f12
    jal sqrt
    li  $v0, 3      # Print a Double    

    syscall         # Print the area
    lw  $ra 0($sp)
    addi    $sp, $sp, 4         # De-Allocate
    mov.s   $f0, $f12
    jr  $ra

sqrt:   add $t0, $zero, 0   # r := 0
loop:   mul $t0, $v0, $v0   # t0 := r*r
    bgt $t0, $a0, end   # if (r*r > n) goto end
    addi    $v0, $v0, 1 # r := r + 1
    j   loop        # goto loop
end:    addi    $v0, $v0, -1    # r := r - 1
    jr  $ra     # return with r-1 in $v0

# Exit
    li $v0, 10      # loads op code into $v0 to exit program
    syscall         # reads $v0 and exits program