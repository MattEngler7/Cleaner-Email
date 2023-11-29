# The MIPS ISA defines the OS Interface.
#
# This file contains a set of syscall macros. Use of these macros
# will make your programs more readable.
# 
# 
# The "syscall" instruction:
#   A call the the OS always followings the following structure.
#     1. load the code of the OS routine into the $v0 register
#     2. load, if any, arguments for the routine into the "a" registers.
#     3. execute the "syscall" instruction
#     4. move the return value from the $v0 register to the proper location.
#
# For example, 
#   Assume that the integer you want to print is located in the $t0 register
#   Then the following code block woud print the integer in $t0
#
#   li $v0, 1
#   move $a0, $t0
#   syscall
#
#   The code for each primary system call is defined as follows:
#
#   print_int		1
#   print float		2  
#   print double 	3  
#   print string 	4  
#   read integer 	5  
#   read float		6  
#   read double		7  
#   read string		8  
#   allocate_mem	9  
#   exit			10 
#   print character 11 
#   read character 	12 
#   open file		13 
#   read file		14 
#   write to file 	15 
#   close file		16 
#
# Overtime, MARS has been enhanced with a number of other system calls.
# A subset of these system calls include:
#
#  terminated			17
#    - exit with a value
#  print hexidecimal 	34
#  print binary  		35
#  print unsigned int 	36
#
###############################
# This file contains the following macros
#
# halt()
# exit(reg)
# exit_immediate(val)
#
# read_int(reg)
# read_char(reg)
# read_string(reg)
#
# print_int(reg)
# print_hex(reg)
# print_binary(reg)
# print_unsigned(reg)
# print_char(reg)
# print_char_immediate(char)
# print_string(addr)


## Terminate Macros
	.macro halt()
	   li $v0, 10
	   syscall
	.end_macro

	.macro terminate(%v)
	   li $v0, 17
	   move $a0, %v
	   syscall
	.end_macro


## Read Macros
##############
	.macro read_int(%r)
	  li $v0, 5
	  syscall
	  move %r, $v0
	.end_macro

# read_char(reg)
	.macro read_char(%dest)
	  li $v0, 12
	  syscall
      move %dest, $v0
	.end_macro

# read_string(%buff, %count)
    .macro read_string
	  li $v0, 8
	  la $a0, %buff 		# The address of the buffer
	  li $a1, %count 		# This size of the string to read
	  syscall
    .end_macro


# Print Macros
##############
	.macro print_int(%reg)
	  li $v0, 1
  	  move $a0, %reg
	  syscall
	.end_macro

	.macro print_string(%reg)
	  li $v0, 4
	  la $a0, %reg
	  syscall
	.end_macro

	.macro print_char(%reg)
	  li $v0, 11
	  move $a0, %reg
	  syscall
	.end_macro

	.macro print_hex(%reg)
	  li $v0, 34
	  move $a0, %reg
	  syscall
	.end_macro

	.macro print_binary(%reg)
	  li $v0, 35
	  move $a0, %reg
	  syscall
	.end_macro

	.macro print_unsigned(%reg)
	  li $v0, 36
	  move $a0, %reg
	  syscall
	.end_macro





