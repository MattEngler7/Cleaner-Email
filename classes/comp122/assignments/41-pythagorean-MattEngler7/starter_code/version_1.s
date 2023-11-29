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
true_string:  .asciiz "True!\n"
false_string: .asciiz "False!\n"

a_var: 	.byte 3
b_var:	.byte 40
c_var: 	.byte 5


	.text

main:  nop # start of the assignment
   # t0: a
   # t1: b
   # t2: c
   # t3:
   # t4: X
   # t5: Y

   # s0: a*a
   # s1: b*b
   # s2: c*c
   # s3:
   # s4:
   # s5:

   nop # Read my inputs
   nop # Read "a"
   #lbu $t0, a_var
   li $v0, 5
   syscall
   move $t0, $v0

   nop # Read "b"
   #lbu $t1, b_var
   li $v0, 5
   syscall
   move $t1, $v0

   nop # Read "c"
   #lbu $t2, c_var
   li $v0, 5
   syscall
   move $t2, $v0

   nop # evaluate Y (t5)
   mult $t2, $t2 # b**2
   mflo  $s2
   move $t5, $s2
   
   nop # evaluate X (t4)
   mult $t0, $t0   # a**2
   mflo $s0
   
   mult $t1, $t1   # b**2
   mflo $s1

   add $t4, $s0, $s1
   
   
   # compare X == Y,  t4 == t5
   beq $t4, $t5, true_block
   b false_block
   
true_block:   nop  # print string "True!"
   li $v0, 4
   la $a0, true_string 
   syscall
   b if_done


false_block:   nop  # print string "False!"
   li $v0, 4
   la $a0, false_string 
   syscall
   b if_done


if_done: nop   
   nop  # exit()
   li $v0, 10
   syscall
