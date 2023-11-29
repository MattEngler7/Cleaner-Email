# Exam #4: Assembly Programming
### Date: May 11 & 12, 2022
### Estimated time: 1 hour and 45 minutes
### Exam Time-frames
* During Your Assigned Class time 
  - Wednesday: 9:00 - 10:45
  - Wednesday: 2:00 - 3:45
  - Thursday: 9:00 - 10:45
  - Thursday: 2:00 - 3:45

---
## Name: Matthew Engler                                                                  <!-- response -->
## GitHub Account: MattEngler7                                                        <!-- response -->

### Notes: 
* There are a lot more free form answers that need to be provided.  Make sure you add the "\<!-- response -->" line to each of your lines that contains information that is part of your answer.

* I will also be grading your exam based upon the neatness of your .md file.
  - Proper indication, alignment, etc. leads to improved readability of programs.
  - Such readability is not limited to code but also to comments/documentation!
  - Producing readable code, comments, documentation is an essential component of your chosen discipline.

# Decoding

1. The $t0 contains the decimal value of 250, and $t1 contains the decimal value of -250.  
   1. The 16-bit binary encoding for 250 is: 0000 0000 1111 1010                              <!-- response -->
      - Provide your work to receive appropriate credit
        ```
          250/2 =125+0                                                     <!-- response -->
          125/2 =62+1
          62/2 = 31+0
          31/2 = 15+1
          15/2 = 7+1
          7/2 = 3+1
          3/2 = 1+1
          1/2 = 0+1                                                        <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
        ```

   1. The 16-bit two's complement encoding for 250 is: 0000 0000 1111 1010                     <!-- response -->
      - Provide your work to receive appropriate credit
      ```
          250/2 = 125+0
          125/2 = 62+1
          62/2 = 31+0
          31/2 = 15+1
          15/2 = 7+1
          7/2 = 3+1
          3/2 = 1+1
          1/2 = 0+1                                                        <!-- response -->
                                                                           <!-- response -->
      ```

   1. The 16-bit two's complement encoding for -250 is: 1111 1111 0000 0110                   <!-- response --> 
      - Provide your work to receive appropriate credit
      ```
         1/2 = 0+1                                                                 <!-- response -->
         3/2 = 1+1
         7/2 = 3+1
         15/2 = 7+1
         31/2 = 15+1
         62/2 = 31+0
         125/2 = 62+1
         250/2 = 125+0                                                                  <!-- response -->

      ```

1. Consider the following Java code in which most of the instructions have been commented out.
   ```java
   /* A */
   for ( /* B */ ; x <= 0 ; /* D */) {
      /* E */
   }
   /* F */
   ```
   * Convert the above Java code into MIPS assemble code, including the comments. 
     ```mips
                  # t0: x                                                  <!-- response -->
                                                                           <!-- response -->
     a:           # A                                                      <!-- response -->
                  b for_loop                                               <!-- response -->
                                                                           <!-- response -->
     for_loop:    nop                                                      <!-- response -->
       init:      #                                                        <!-- response -->
         ble $t0, 0, exit                                                  <!-- response -->
         b for_loop                                                        <!-- response -->
                                                                           <!-- response -->
      exit:                                                                <!-- response -->
                                                                           <!-- response -->
      b:            #B                                                     <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
      d:            #D                                                     <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
     f: # F                                                                <!-- response -->
     ```
   Your answer must illustrate your understanding basic blocks and control flow. Hence, do not rely on implicit goto-s within your answer.

1. You are tasked with creating a MIPS subroutine that computes both the integer division and modulus operations of its two input values (w = a/b, r = a%b). <br><br>
Using the template provided complete the implementation of this subroutine.
   ```mips
   sub:       nop
              # a0: a                                                      <!-- response -->
              # a1: b                                                      <!-- response -->
              # v0: w                                                      <!-- response -->
              # v1: r                                                      <!-- response -->
               div $v0, $a0, $a1                                           <!-- response -->
               mod $v1, $a0, $a1                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
                                                                           <!-- response -->
              jr $ra                                                       <!-- response -->
   ```

1. In the process of transition to and from subroutines, the values stored in any shared resource (i.e., registers) must be saved.  For each of the following groups of registers, indicate who is responsible for saving and restoring the registers: Caller (Client), Callee (Producer), or Neither

   1. return value registers ($v0, $v1): Neither                                  <!-- response -->
   1. argument registers ($a0 .. $a3): Neither                                    <!-- response -->
   1. temporary registers ($t0 .. $t9): Caller                                   <!-- response -->
   1. save registers ($s0..$s7): Callee                                          <!-- response -->
   1. kernel registers ($k0, $k2): Neither                                        <!-- response -->
   1. $sp, $fp, $gp, $ra registers: Neither                                       <!-- response -->

1. Consider the following MIPS code, in which the Professor neglected to provide the equivalent high-level code as comments.
   ```mips                                                                 <!-- response -->
     main:    nop                                                          <!-- response -->
              li $t0, 1  #start = 1                                        <!-- response -->
              li $t1, 8  #end = 8                                          <!-- response -->
              li $t2, 1  #count = 1                                        <!-- response -->
                                                                           <!-- response -->
      top:    bgt $t0, $t1, done    #while (start <= 8)                    <!-- response -->
              addiu $t2, $t2, 1    #count ++                               <!-- response -->  
              addiu $t0, $t0, 1    #start ++                               <!-- response -->
              b top                #go back up to top loop                 <!-- response -->
                                                                           <!-- response -->
      done:   nop                                                          <!-- response -->
              move $a0, $t2          # answer= save count in $a0           <!-- response -->
              li $v0, 10             # exit()                              <!-- response -->
              syscall                                                      <!-- response -->
    ```

    * What is the value of $a0, at the end of the program? 9                <!-- response -->
    * Add comments to the above code to provide the missing high-level code.

1. Provide a template for a subroutine that is a leaf-node within a call graph.
   * Your answer needs to appropriately illustrate:  
     * register bookkeeping,
     * marshaling and de-marshaling of arguments, and
     * saving and restore state.
   * You may use macros, without defining them, as long as your macros clearly illustrate your knowledge of subroutine construction.

   ```mips
   leaf_sub:    nop                                                        <!-- response -->
      save_s_registers $s0, $s1, $s2, $s3
      move $s0, $a0                                                        <!-- response -->
      move $s1, $a1                                                        <!-- response -->
      move $s2, $a2                                                        <!-- response -->
      move $s3, $a3                                                        <!-- response -->
      move $a0, $s3                                                        <!-- response -->
      move $a1, $s2                                                        <!-- response -->
      move $a2, $s1                                                        <!-- response -->
      move $a3, $s0                                                        <!-- response -->
      save_t_registers $t1, $t2                                            <!-- response -->
      jal sum                                                              <!-- response -->
      restore_t_registers $t1, $t2
      move $a0, $t1                                                        <!-- response -->
      move $a0, $s1                                                        <!-- response -->
      move $a0, $s3                                                        <!-- response -->
      move $a0, $s0                                                        <!-- response -->
      save_t_registers $t1, $t2
      jal min
      restore_t_registers $t1, $t2
      move $t2, $v0                                                        <!-- response -->
      mv $v0, $s0                                                          <!-- response -->
                                                                           <!-- response -->
      restore_s+registers $s0, $s1, $s2, $s3                                                                  <!-- response -->
                jr $ra                                                     <!-- response -->
   ```