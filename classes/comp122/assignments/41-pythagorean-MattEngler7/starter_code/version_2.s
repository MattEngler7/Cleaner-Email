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

# Algorithm:
#
	.data
true_string: .asciiz "True!\n"
false_string: .asciiz "False!\n"
dummy: .asciiz "missing \0 character\n\n"

a:	.byte 3
b:	.byte 5
c: 	.byte 5

	
	.text

main: nop
# map
#   s0: a
#   s1: b
#   s2: c

#  t0: a*a
#  t1: b*b
#  t2: Y = c*c
#  t3: X = t0 + t1

# Algorithm:
# load inputs: a, b, c
#   load a into s0
	lbu $s0, a

#   load b into s1
	lbu $s1, b

#   load c int s2
	lbu $s2, c

        nop # evaluate X:  $s3
	mult $s0, $s0	# $t1 = $s0 * $s0  # a^2
	mflo $t0

	mult $s1, $s1	# $t1 = $s1 * $s1   # b^2
	mflo $t1
	
	mult $s2, $s2	# $t1 = $s2 * $s2  # c^
	mflo $t2
	
	nop # evaluate Y:  $s4
	addu $t3, $t0, $t1  # $t3 = $t0 + $t1
	


	nop # compare
	bne $t2, $t3, false_block


# select output
true_block:   nop # print true
     	
     	li $v0, 4
     	la $a0, true_string
     	syscall
     	b  if_done
     	
false_block: 	nop # print false
 	li $v0, 4
 	la $a0, false_string
 	syscall
 	b if_done

if_done: nop    # terminate()
	li $v0, 10
	syscall
