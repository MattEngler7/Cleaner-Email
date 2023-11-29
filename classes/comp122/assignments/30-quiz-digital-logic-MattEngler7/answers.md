# Quiz #2: Digital Logic 
### Date: April 7, 2022
### Estimated time: 1 hour
### Exam Time-frame
* Start: Friday: 18:00 (6:00pm)
* End: Saturday: 18:00 (6:00pm)


---
## Name:                                            <!-- response -->
## GitHub Account:                                  <!-- response -->

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
   1. Supported instructions and there semantics       <!-- response -->
   1. Supported data types                             <!-- response -->
   1. Registers: size, number, and purpose             <!-- response -->
   1. Memory Model: layout, addressing, alignment, endianness   <!-- response -->
   1. OS Interface                                              <!-- response -->


1. Simplify the following Boolean expressions:<br>
   1. ``A * ( B + C) + A' * ( B + C) ``
      * B + C                     <!-- response -->
   1. ``AB' + A'B + AB``
      * A + B                     <!-- response -->
   1. ``(AB' + A'B + AB)'``
      * (A + B)'                  <!-- response -->

### Circuits

1. Does there exist a combinational circuit for all possible mathematical functions?
      * Yes                         <!-- response -->
      * Explain your answer:<br>
        (Add additional lines, including the appropriate response tags, in the block below.)
        ```
        A mathematical function is a mapping from a set of inputs to outputs, and such functions can be described via Boolean Algebra.  Combinational Circuits are equivalent to Boolean Algebra                                                   <!-- response -->
        ```
        
1. Can all programs be computed via a combinational circuit?
     * No                          <!-- response -->
     * Explain your answer:<br>
      (Add additional lines, including the appropriate response tags, in the block below.)
       ```
       A Turning machine is required to compute all programs that are computable.  Such a machine requires "state" which, by definition, are not provided via a combinational circuits.     <!-- response -->
       ```


1. What is primary usage of a multiplexer within a digital circuit?<br>
   (Add additional lines, including the appropriate response tags, in the block below.)
   ```
   To select one output from a set of inputs from other digital circuits. We saw the multiplexer used to select the output for the ALU.            <!-- response -->
   ```
   
1. You are given the task of building a 4-bit ALU that provides the ability to perform both 4-bit binary addition and 4-bit binary subtraction. As part of this task you are asked to minimize the number of gates in your design.  Explain how you would achieve your task!<br>
   (Add additional lines, including the appropriate response tags, in the block below.)

   ```
   Note that A - B ==  A + (~ B + 1).  I would use a 4-bit adder coupled with the ability to negate the individual values of the second operand (B).  I would also set the initial carry-in value of the adder to be 1.                   <!-- response -->
   ``` 

### Micro-architecture

1. In the MIPS micro-architecture, the PC is incremented for each instruction, during the "Instruction Fetch" stage.  The value of the PC may also be updated later within the "Memory Access" phase.

   * If the value of the PC is: 0x0000 2F1C, what is the value of the PC after you complete the execution of the instruction:  ``addi $t0, $s0, $ra``?
      * 0x0000 2F20                                 <!-- response -->

1. The MIPS I-format includes a 16-bit field, which is used to encode an immediate value.  During the "Instruction Decode" phase this 16-bit value is transformed into a 32-bit value.  For each of the following values, provide 16-bit value that is stored in the instruction and the 32-bit value that is created.
   * 0x7FF7:  
     * 16-bit value: 0111 1111 1111 0111                      <!-- response -->
     * 32-bit value: 0000 0000 0000 0000 0111 1111 1111 0111  <!-- response -->
   * 0xAAAA:  
     * 16-bit value: 1010 1010 1010 1010                      <!-- response -->
     * 32-bit value: 1111 1111 1111 1111 1010 1010 1010 1010  <!-- response -->
   * -2:                
     * 16-bit value: 1111 1111 1111 1110                      <!-- response -->
     * 32-bit value: 1111 1111 1111 1111 1111 1111 1111 1110  <!-- response -->
   * 7:                   
     * 16-bit value: 0000 0000 0000 0111                      <!-- response -->
     * 32-bit value: 0000 0000 0000 0000 0000 0000 0000 0111  <!-- response -->


1. In the design of the MIPS micro-architecture (as show in class), there are 5 latches.<br>
   What purpose do these latches serve, and why are there 5 such latches?<br>
  (Add additional lines, including the appropriate response tags, in the block below.)
   ```
   The micro-architecture is an example of a sequential circuit. Latches are placed in between each of the five sequential steps of the circuit:  Fetch, Decode, Execute, Memory, Write-back. A clock signal then allows state to be saved between each of the steps.                  <!-- response -->
   ```

