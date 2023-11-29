# Quiz #2: Digital Logic 
### Date: April 7, 2022
### Estimated time: 1 hour
### Exam Time-frame
* Start: Friday: 18:00 (6:00pm)
* End: Saturday: 18:00 (6:00pm)


---
## Name: Matthew Engler                                           <!-- response -->
## GitHub Account: MattEngler7                                 <!-- response -->

### Boolean Algebra
1. Convert the following truth table into a Karnaugh map.<br>
   (Make sure you update all of the x-s in the answer template.)
   
   | A | B | C | Output |
   | - | - | - | ------ |
   | 0 | 0 | 0 |   0    |
   | 0 | 0 | 1 |   1    |
   | 0 | 1 | 0 |   1    |
   | 0 | 1 | 1 |   0    |
   | 1 | 0 | 0 |   1    |
   | 1 | 0 | 1 |   1    |
   | 1 | 1 | 0 |   1    |
   | 1 | 1 | 1 |   1    |

   ```
   |   |   | BC | BC | BC | BC |          <!-- response -->
   |   |   | 00 | 01 | 11 | 10 |          <!-- response -->
   |---|---| -- | -- | -- | -- |          <!-- response -->
   | A | 0 | 0  | 1  | 0  | 1  |          <!-- response -->
   | A | 1 | 1  | 1  | 1  | 1  |          <!-- response -->
   ```
   
1. What are the five (5) elements that are defined by an ISA?<br>
   (Add additional response lines to the following enumerated list.)
   1.                                              <!-- response -->


1. Simplify the following Boolean expressions:<br>
   1. ``A * ( B + C) + A' * ( B + C) ``
      * B+C                          <!-- response -->
   1. ``AB' + A'B + AB``
      * A+B                          <!-- response -->
   1. ``(AB' + A'B + AB)'``
      * A'B'                          <!-- response -->

### Circuits

1. Does there exist a combinational circuit for all possible mathematical functions?
      * No                          <!-- response -->
      * Explain your answer:<br>
        (Add additional lines, including the appropriate response tags, in the block below.)
        ```
         There is no specific combinational circuit that can perform all mathmatical calculations becasue of the circuits complexity which enhances delay.                                                  <!-- response -->
        ```
        
1. Can all programs be computed via a combinational ciruit?
     * No                          <!-- response -->
     * Explain your answer:<br>
      (Add additional lines, including the appropriate response tags, in the block below.)
       ```
       Computer programs need memory to store and fetch at a particular moment when the program is being run, since circuits do not have memory to store data it can not perform a program.                                                    <!-- response -->
       ```


1. What is primary usage of a multiplexer within a digital circuit?<br>
   (Add additional lines, including the appropriate response tags, in the block below.)
   ```
    The primary use of a multiplexer is to increase the quality of data that is transmitted with a given bandwidth over a period of time.                                     <!-- response -->
   ```
   
1. You are given the task of building a 4-bit ALU that provides the ability to perform both 4-bit binary addition and 4-bit binary subtraction. As part of this task you are asked to minimize the number of gates in your design.  Explain how you would achieve your task!<br>
   (Add additional lines, including the appropriate response tags, in the block below.)

   ```
                                         <!-- response -->
   ``` 

### Micro-architecture

1. In the MIPS micro-architecture, the PC is incremented for each instruction, during the "Instruction Fetch" stage.  The value of the PC may also be updated later within the "Memory Access" phase.

   * If the value of the PC is: 0x0000 2F1C, what is the value of the PC after you complete the execution of the instruction:  ``addi $t0, $s0, $ra``?
      *                                     <!-- response -->

1. The MIPS I-format includes a 16-bit field, which is used to encode an immediate value.  During the "Instruction Decode" phase this 16-bit value is transformed into a 32-bit value.  For each of the following values, provide 16-bit value that is stored in the instruction and the 32-bit value that is created.
   * 0x7FF7:  
     * 16-bit value:                           <!-- response --> 0111111111110111
     * 32-bit value:                           <!-- response --> 00000000000000000111111111110111
   * 0xAAAA:  
     * 16-bit value:                           <!-- response --> 1010101010101010
     * 32-bit value:                           <!-- response --> 00000000000000001010101010101010
   * -2:                
     * 16-bit value:                           <!-- response --> 1111111111111110
     * 32-bit value:                           <!-- response --> 111111111111111111111111111111110
   * 7:                   
     * 16-bit value:                           <!-- response --> 0000000000000111
     * 32-bit value:                           <!-- response --> 000000000000000000000000000000111
                


1. In the design of the MIPS micro-architecture (as show in class), there are 5 latches.<br>
   What purpose do these latches serve, and why are there 5 such latches?<br>
  (Add additional lines, including the appropriate response tags, in the block below.)
   ```
                                               <!-- response -->
   ```

