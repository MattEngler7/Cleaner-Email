# print_int(reg)
# - print_hex(reg)
# - print_binary(reg)
# - print_unsigned(reg)
# print_char(reg)
# print_char_i(char)
# print_string(addr)

# terminate()
# terminate(reg)

# read_int(reg)
# read_


# Print Macros
	.text
	.macro print_int(%i)
	  li $v0, 1
  	  move $a0, %i
	  syscall
	.end_macro

	.macro print_string(%s)
	  li $v0, 4
	  la $a0, %s
	  syscall
	.end_macro

	.macro print_char(%r)
	  li $v0, 11
	  move $a0, %r
	  syscall
	.end_macro

	.macro print_char_i(%c)
	  li $v0, 11
	  li $a0, %c
	  syscall
	.end_macro

	.macro print_hex(%r)
	  li $v0, 34
	  move $a0, %r
	  syscall
	.end_macro

	.macro print_binary(%t)
	  li $v0, 35
	  move $a0, %t
	  syscall
	.end_macro

	.macro print_unsigned(%u)
	  li $v0, 36
	  move $a0, %u
	  syscall
	.end_macro


## Read Macros
	.macro read_int(%i)
	  li $v0, 5
	  syscall
	  move %i, $v0
	.end_macro



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




