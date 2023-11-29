# Program: Pythagorean Theorem Validator
# General Process: 
#   - evaluate:  X = a^2 + b^2 
#   - evaluate:  Y = c^2
#   - compare X & Y
#   - based upon the  
#
# This program has 5 distinct versions, defined by their git hub tags
#
#  tag == is_right:  
#    Input:  three unsigned 8-bit integers: a, b, c
#    Outputs: "True!" or "False!" based upon the value of X == Y
#  tag == angle_type
#    Input:  three unsigned 8-bit integers: a, b, c
#    Outputs: "Acute!", "Right!", or "Obtuse!"
#  tag == approximated_hypotenuse
#    Input:  two unsigned 8-bit integers: a, b
#    Outputs: "Nearest right-triangle is where the hypotenuse is: ", d
#  tag == computed_hypotenuse
#    Input:  two unsigned 8-bit integers: a, b
#    Outputs: "The computed value of c is: " c
#  tag == series
#    Inputs: reads a serics of a, b, and for each pair generates an output
#    Outputs: "a ^2 + b ^2 \~= c^2" 

		# .include "include/syscall_macros.s"
		# .include "include/isqrt.s"

      .globl main
         .include "include/syscall_macros.s"
         .include "include/isqrt.s"
.data
    X_Square:  .asciiz  "^2"
    X_Plus_Y:  .asciiz  " + "
    x_aprox_equal:  .asciiz  " ~= "
    next_line: .asciiz "\n"
.text

  main: nop
     jal loop_top
        
    hypotenuse:
        #Save it to Registers  (or Stack) #
        # (8 Slots)
        #Notes: Must be created before jumping to Function Jump-Link
        addi $sp, $sp, -8
        sw $t0, 0($sp)
        sw $t1, 4($sp)
        
        #a ^ a
        mult $s0, $s0
        mflo $t0
   #b ^ b
        mult $s1, $s1
        mflo $t1

        add $t2, $t0, $t1

        #SAVE
        move $a0, $t2
        addi $sp, $sp, -4
        sw $ra, 0($sp)
        
        jal isqrt
        
        #load
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        
        #Move it out, so its global
        move $s2, $v0
        
        jr $ra
        
    loop_top: nop
        li $v0, 5 #user input a 
        syscall
        move $s0, $v0
        li $v0, 5 #user input b
        syscall
        move $s1, $v0
        #Check if A & B Are Zero
        add $t3, $s1, $s0
        beq $t3, $zero, exit_code
        
        #Save it to Chapter (Contents) 1 #
        move $s1, $v0
        #Stores arguments it to Chapter (Contents) 0 #
        move $a0, $s0
        #Stores arguments it to Chapter (Contents) 1 #
        move $a1, $s1

        jal hypotenuse
        
        # Load the Saved Registers
            #More like decode it
        lw $t0, 0($sp)
        lw $t1, 4($sp)
        addi $sp, $sp, 8
        
        move $s2, $v0
        
        jal print_text_output
   
    print_text_output: 
        li $v0, 4
        print_int($s0)
        li $v0, 4
        la $a0, X_Square
        syscall
        li $v0, 4
        la $a0, X_Plus_Y
        syscall
        li $v0, 4
        print_int($s1)
        li $v0, 4
        la $a0, X_Square
        syscall
        li $v0, 4
        la $a0, x_aprox_equal
        syscall
        print_int($s2)
        li $v0, 4
        la $a0, X_Square
        syscall
        li $v0, 4
        la $a0, next_line
        syscall
        
        j loop_top
        
 exit_code: nop
    li $v0, 10
    syscall