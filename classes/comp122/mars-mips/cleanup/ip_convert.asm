# Sample program to convert an encoded IP address
# to it's dotted decimal equivalent

# Example:
#   Input:  -2102989117  (signed value)
#   Output: 130.166.238.195
#   Hex: 0x826eec3

# Algorithm "to_dotted:
#   1. a0 = read integer
#   2. split integer into four bytes
#      - t0 = a0[0:7] 
#      - t1 = a0[8:15] 
#      - t2 = a0[16:23] 
#      - t3 = a0[24:31] 
#   3. print each of the bytes as integers separated with a "."

# Algorithm "from_dotted:
#   1. (a0, a1, a2, a3) = read 4 bytes
#   2. shift the bytes to be in proper position
#   3. merge the bytes together
#   4. print the final value


















	.include "syscall_macros.asm"
	.text
	.globl main

to_dotted:
	# Read Integer
	read_int($s0)	# Read an integer
        
	# Split integer into bytes
	andi $t3, $s0, 0xFF000000
	srl  $t3, $t3, 24

	andi $t2, $s0, 0x00FF0000
	srl  $t2, $t2, 16

	andi $t1, $s0, 0x0000FF00 
	srl  $t1, $t1, 8

	andi $t0, $s0, 0x000000FF
	srl  $t0, $t0, 0

	# Print dotted decimal format
	print_int($t3) 
	li $v0, '.'
	print_char_i('.')

	print_int($t2)
	print_char_i('.')

	print_int($t1)
	print_char_i('.')

	print_int($t0)

	# Halt the program
	halt()

main:
from_dotted:
	# Read Integer
	read_int($t3)	# Read an integer
	read_int($t2)	# Read an integer
	read_int($t1)	# Read an integer
	read_int($t0)
        
	# Shift bytes into position
	sll  $t3, $t3, 24
	sll  $t2, $t2, 16
	sll  $t1, $t1, 8 
	sll  $t0, $t0, 0

	# Merge bytes into word
	move $s0, $zero
	or  $s0, $s0, $t2
	or  $s0, $s0, $t3
	or  $s0, $s0, $t1
	or  $s0, $s0, $t0

	# Print Int
    print_int($s0)
	print_unsigned($s0)
	print_binary($s0)

	# Halt the program
	halt()