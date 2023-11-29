#
# Program: Pythagorean Theorem Validator
# Input:  three unsigned 8-bit integers: a, b, c
# Process: 
#   - evaluate:  X = a^2 + b^2 
#   - evaluate:  Y = c^2
#   - compare X & Y
# Output a string: 
#   - "True!" , when X == Y
#   - "False!", when X != Y

	.data
true_string: .asciiz "True!\n"
false_string: .asciiz "False!\n"

a_var: .byte 3
b_var: .byte 6
c_var: .byte 5 

	.text

main:  nop  # start of my program
	## Mapping
	# t0: a, a^2
	# t1: b, b^2
	# t2: c, c^2
	# s0: X
	# s1: Y


	# load my variables into register
	
	li $v0, 5   # read int: "a"
	syscall
	move $t0, $v0

	li $v0, 5   # read int: "b"
	syscall
	move $t1, $v0
	
	li $v0, 5   # read int: "c"
	syscall
	move $t2, $v0

	# calculate a^2, b^2, and c^2  (t = c * c)
        nop # compute a^2
        mult $t0, $t0
        mflo $t0
        
        nop # compute b^2
        mult $t1, $t1
        mflo $t1
 
        nop # compute c^2
        mult $t2, $t2
        mflo $t2       

	# calculate X = a^2 + b^2
	addu $s0, $t0, $t1
	
	# calculate Y = c^2
	move $s1, $t2


	nop # select Output
	beq $s0, $s1, true_block
	b false_block
	
	
	
true_block:	nop # print "True!"
	li $v0, 4
	la $a0,  true_string
	syscall
	b if_done

false_block: 	nop # print "False!"
	li $v0, 4
	la $a0,  false_string
	syscall
	b if_done

if_done:  nop

	nop # exit()
        li $v0, 10
        syscall
