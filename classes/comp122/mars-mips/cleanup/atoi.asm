


      .text
atoi:
      # A leaf subroutine:  int atoi(char *);
      #
	   # a0 : str : the address current character being examined
      # v0 : v : the numeric value of the string
      # -- 
	   # t0 : d : the numeric value of the current char
      # t1 : 9 : the value '9'
      # t2 : 10 : the  value '10'
   
      # Java pseudo code
      # v = 0;
      # d = str[0] - '0'
      # while (0 <= d && d <= 9) {
      #   v = v * 10 + d;
      #   str ++;
      #   d = str[0]- '0';
      # }
      # return v;
   
      li $t1, 9
      li $t2, 10
      li $v0, 0
   
      lb $t0, 0($a0)                  # d = str[0] - '0';
      subi $t0, $t0, '0'
   
top1: nop
      blt $t0, $zero, done1
      bgt $t0, $t1, done1
         mult $v0, $t2                # v = v * 10 + d;
         mflo $v0
         add $v0, $v0, $t0  
   
         addi $a0, $a0, 1             # str ++;
   
         lb $t0, 0($a0)               # d = c - '0';
         subi $t0, $t0, '0'
      j top1
done1:
   
	   jr $ra   
