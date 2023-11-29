	.text
	
	.include "syscall_macros.asm"
	.include "subroutine_macros.asm"

	
main: nop
      # a0 - $t0 = Num_args
      # a1 - $t1 = array of strings
      # $t2: func  0($a1)  but this is a string
      # $t3: count
      # $t4: sum
      # $t5: product
      # s0 : next first arg to add_four
      # s1 : next second arg
      # s2 : ditto
      # s3 : ditto
      
      move $t0, $a0
      move $t1, $a1
      lw   $t2, 0($t1)   # func
      subi $t3, $t0, 1   # This is the number of numbers to process
      move $t4, $zero
      addi $t5, $zero, 1
      
top:  beq $t3, $zero, done

        # load args
        ## pull args from memory and place into S regs
        lw $s0, 0($t1)
        lb $s0, 0($s0)
        subi $s0, $s0, '0'
   
        lw $s1, 4($t1)
        lb $s1, 0($s1)
        subi $s1, $s1, '0'
   
        
        lw $s2, 8($t1)
        lb $s2, 0($s2)
        subi $s2, $s2, '0'
   
        
        lw $s3, 12($t1)
        lb $s3, 0($s3)
        subi $s3, $s3, '0'
   
        
        
        
        ## place into s registers
        move $a0, $s0
        move $a1, $s1
        move $a2, $s2
        move $a3, $s3
        
        # call func
        ## precall
        save_t_registers
        jal add_four
        restore_t_registers
        ## postcall
        
        # apply return value
        add $t4, $t4, $v0
        
        # decrement by four
        subi $t3, $t3, 4
        
        # goto top
        j top
 
done:  
      print_int($t4)
      #while (count != 0)
      #   sum += add_four(a, b, c, d)
      #   count = count - 4;
      #}
      #print sum
      
      halt()





#
#     1. int add_four(one, two, three, four);
#        * return value is one + two + three + four
#     1. int mult_four(one, two, three, four);
#        * return value is one * two * three * four

add_four: nop   # int add_four(one, two, three, four);
          nop   # * return value is one + two + three + four
          
          # setup
          save_s_registers
          
          move $t0, $a0
          move $t1, $a1
          move $t2, $a2
          move $t3, $a3
          
          add $t0, $t0, $t1
          add $t0, $t0, $t2
          add $t0, $t0, $t3
          
          #cleanup
          move $v0, $t0
          restore_s_registers

          jr $ra

  
 mult_four: nop   # int mult_four(one, two, three, four);
            nop   # * return value is one * two * three * four
          
          # setup
          save_s_registers
          
          move $t0, $a0
          move $t1, $a1
          move $t2, $a2
          move $t3, $a3
          
          mult $t0, $t1
          mflo $t0
          mult $t0, $t2
          mflo $t0
          mult $t0, $t3
          mflo $t0
          
          #cleanup
          move $v0, $t0
          restore_s_registers

          jr $ra  