	.include "macros.asm"

	.data
str:	.asciiz "Hello World\n" # H,e,l,l,o, ,W,o,r,l,d,\,\0

	.text
	.globl main

main:	nop
	print_string(str)
	halt()

	