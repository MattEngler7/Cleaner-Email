## As taken from: https://stackoverflow.com/questions/17868029/finding-square-root-of-an-integer-on-mips-assembly#17874077
##
##

isqrt:
  # v0 - return / root
  # t0 - bit
  # t1 - num
  # t2,t3 - temps
  move  $v0, $zero        # initalize return
  move  $t1, $a0          # move a0 to t1

  addi  $t0, $zero, 1
  sll   $t0, $t0, 30      # shift to second-to-top bit

isqrt_bit:
  slt   $t2, $t1, $t0     # num < bit
  beq   $t2, $zero, isqrt_loop

  srl   $t0, $t0, 2       # bit >> 2
  j     isqrt_bit

isqrt_loop:
  beq   $t0, $zero, isqrt_return

  add   $t3, $v0, $t0     # t3 = return + bit
  slt   $t2, $t1, $t3
  beq   $t2, $zero, isqrt_else

  srl   $v0, $v0, 1       # return >> 1
  j     isqrt_loop_end

isqrt_else:
  sub   $t1, $t1, $t3     # num -= return + bit
  srl   $v0, $v0, 1       # return >> 1
  add   $v0, $v0, $t0     # return + bit

isqrt_loop_end:
  srl   $t0, $t0, 2       # bit >> 2
  j     isqrt_loop

isqrt_return:
  jr  $ra
