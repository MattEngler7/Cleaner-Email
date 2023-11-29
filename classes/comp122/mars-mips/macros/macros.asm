
	.text
	.macro print_string(%s)
	  li $v0, 4
	  la $a0, %s
	  syscall
	.end_macro

	.macro halt()
	   li $v0, 10
	   syscall
	.end_macro


    .macro bic(%rd, %rs, %mask)   # Native in ARM
      li $at, %mask
      nor $at, $at, $zero
      and %rd, %rs, $at
    .end_macro


