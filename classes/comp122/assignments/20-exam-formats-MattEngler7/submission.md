# Quiz #1: Models of Communication and Computation
### Date: March 9 & 10, 2020
### Estimated time: 1 hour and 45 minutes
### Exam Time-frames
* During Your Assigned Classtime 
  - Wednesday: 9:00 - 10:45
  - Wednesday: 2:00 - 3:45
  - Thursday: 9:00 - 10:45
  - Thursday: 2:00 - 3:45

---
## Name: Matthew Engler                                                <!-- response -->
## GitHub Account: MattEngler7                                       <!-- response -->

### Directions:
In this exam, you may use a calculator and any number of lookup tables.  Such lookup tables should be restricted to the material provided to you via the Professor as part of the class materials.


### Encodings
1. Provide the binary encoding for the following values:
   1. The ASCII value: '['
      - 0101 1011                   <!-- response -->
   1. The MIPS register: $a0
      - 0 0100                   <!-- response -->
   1. The MIPS 'func' code: add
      -  10 0000                  <!-- response -->
   1. The Ocal value: 06343
      - 1100 1110 0011                   <!-- response -->
   1. The Hexadeimal value: 0x9A186
      - 1001 1010 0001 1000 0110                   <!-- response -->

### UTF-8 Packaging
1. Encode the following charater into UTF-8: U+9A186
   - 2# 1111010010110100100011001000110                         <!-- response -->
   - UTF-8: 1111 0100 1011 0100 10001100 1000 110                     <!-- response -->

### Conversion: Decimal to Binary

1. When converting ``10# 0.738`` into a base2 number, what is the value associated with ``max``?
   - max: 1000                <!-- response -->

1. Convert the ``10# 0.738`` into a base2 number that contains at most 5 digits. 
   - 2# 0.10111                  <!-- response -->
   - Show your work--you will not get credit otherwise!
   ```
     738 x 2 = 1 476                       <!-- response -->
     476 x 2 = 0 952                        <!-- response -->
     952 x 2 = 1 904                        <!-- response -->
     904 x 2 = 1 808                     <!-- response -->
     808 x 2 = 1 616                       <!-- response -->
                             <!-- response -->
   ```

1. Convert  ``10# 171`` into a base2 number. 
   - 2# 1010 1011                 <!-- response -->
   - Show your work--you will not get credit otherwise!
   ```      
    171 / 2 = 85 r 1                        <!-- response -->
    85 / 2 =  42 r 1                      <!-- response -->
    42 / 2 = 21 r 0                        <!-- response -->
    21 / 2 = 10 r 1                    <!-- response -->
    10 / 2 = 5 r 0                  <!-- response -->
    5 / 2 =  2 r 1                <!-- response -->
    2 / 2 = 1 r 0                   <!-- response -->
    1 / 2 = 0 r 1                  <!-- response -->
    0 / 2 = 0 r 0                       <!-- response -->
   ```

### Floating Point
Use the your answers from the "Conversion: Decimal to Binary" Section to complete this section.

1. Convert ``10# 171.738`` into binary scientific notation. (14 digits is sufficient)
   - 2# 10101011.10111                <!-- response -->
   - 1.010101110111 2^0111 (7)            <!-- response -->

1. If the exponent is stored with a bias of 15, what is the binary encoding for the exponent?
   - 15 (bias) + 7 = 22 -> 00010110                   <!-- response -->

1. Encode this 10# 171.345 into binary16 (half)
   - x xxxxx xxxxxxxxxx
   - 0 10111 0101011010                 <!-- response -->
