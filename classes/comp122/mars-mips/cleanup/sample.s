# This example MIPS program performs a set of different operations in various ways.
# The main purpose of this program is 
#   - to learn about various MIPS statements, and
#   - to learn how the MARS program can be used


main:   nop # Starting point of the program
        nop

sum:    nop                     ######################################################  
        nop                     # Example: add three values to produce a sum
        li $t1, 1               # Store three immediate values into three registers
        li $t2, 2
        li $t3, 3
        
        nop                     # Add these values together and placing the sum into $t4
        move $t4, $zero
        add $t4, $t4, $t1  
        add $t4, $t4, $t2
        add $t4, $t4, $t3
        nop
T:      
loop:   nop                     ########################################################        
        nop                     # Example: loop a predetermined number of times 
                                # counter = 0 ; while (count < 10) { null ; counter ++ };

        nop                     # Store the initial values of the loop
        li $t6, 0               # $t6 : counter
        li $t7, 10              # $t7 : 10 
        
top:  nop                     # The top of the loop            
        bge $t6, $t7, done      # The test of the loop
            nop                 # The body of the loop (empty)
            add $t6, $t6, 1     # the next of the loop, just add 1 to the counter
        j top                   # The end of the body & next of the loop
done:   nop                     # 

        
        
        .data
X:      .word 5
array:  .word 0xdeface00, 0xdeface01, 0xdeface02, 0xdeface03, 0xdeface04        
        
        .text
load:   nop                     ##############################################################  
        nop                     # Example: load some values into registers from main memory 
                
        lw  $a0, X              # load the value of X using direct addressing
        la  $a1, array          # load the address of array into a register

        lw  $s0, array          # load the array[0] into a register using direct addressing
        nop                     # load the array values via indirect addressing
        lw  $s0, 0($a1)         # load array[0] into a register 
        lw  $s1, 4($a1)         # load array[1] into a register
        lw  $s2, 8($a1)         # load array[2] into a register
        lw  $s3, 12($a1)        # load array[3] into a register
        lw  $s4, 16($a1)        # load array[3] into a register

        nop                     # reload the same values again but with direct+offset addressing
        lw  $s0, array+0        # load array[0] into a register 
        lw  $s1, array+4        # load array[1] into a register 
        lw  $s2, array+8        # load array[2] into a register
        lw  $s3, array+12       # load array[3] into a register 
        lw  $s4, array+16       # load array[4] into a register

reset:  nop                     ##############################################################
        nop                     # reset the values in the register so they can be stored into main memory
        li $s0, 4
        li $s1, 8 
        li $s2, 16
        li $s3, 32
        li $s4, 64
        nop


store:  nop                     ###################@@@@@@#########################################
        nop                     # Example: store some values into main memory from the registers
        sw $s0, 0($a1) 
        sw $s1, 4($a1) 
        sw $s2, 8($a1)
        sw $s3, 12($a1)
        sw $s4, 16($a1)
        nop                     # Validate the values are stored correctly in memory
        nop
        

        
double_memory: nop              ##################################################################
        nop                     # Example: via a loop, increment the values of the array 
        lw  $a0, X              # load the value of X, which is the number of data elements
        la  $a1, array          # load the address of array into a register
        nop
        li $t0, 0               # t0 is the counter for the loop
        li $t1, 0               # t1 is the index to the array (which must be incremented by 4
        nop
        
double_top: nop                         # the top of the inc_memory loop          
        bge $t0, $a0, double_done       # The test of the loop
            nop                         # The body of the loop
            nop                             
            lw $v0, array($t1)          # read array[t0]
            sll $v0, $v0, 1             # double the value
            sw $v0, array($t1)          # write array[t0]
            add $t0, $t0, 1             # update the counter by 1
            add $t1, $t1, 4             # update the index by 4
        j double_top                    # go to the otop of the loop
        nop
        
double_done:   nop                      # We completed the for-loop
        nop
        
        
        
        
