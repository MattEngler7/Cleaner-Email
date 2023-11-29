# Quiz #1: Models of Communication and Computation
### Date: March 9 & 10, 2020
### Estimated time: 1 hour and 45 minutes
### Exam Time-frames
* During Your Assigned Class-time 
  - Wednesday: 9:00 - 10:45
  - Wednesday: 2:00 - 3:45
  - Thursday: 9:00 - 10:45
  - Thursday: 2:00 - 3:45

---
## Name:                                                  <!-- response -->
## GitHub Account:                                        <!-- response -->

### Directions:
In this exam, you may use a calculator and any number of lookup tables.  Such lookup tables should be restricted to the material provided to you via the Professor as part of the class material.


### Encodings
1. Provide the binary encoding for the following values:
   1. The ASCII value:'['
      -  0101 1011                <!-- response -->
   1. The MIPS register: $a0
      -  0 0100                   <!-- response -->
   1. The MIPS 'func' code: add
      -  100 000                  <!-- response -->
   1. The Octal value: 06343
      - 000 110 011 100 011       <!-- response -->
   1. The Hexadeimal value: 0x9A186
      - 1001 1010 0001 1000 0110   <!-- response -->

### UTF-8 Packaging
1. Encode the following character into UTF-8: U+9A186
   - 2# 1001 1010 0001 1000 0110                       <!-- response -->
   - UTF-8: 1111-0010  10-011010 10-000110 10-000110   <!-- response -->
   - UTF-8: 0xF29A8686                                 <!-- response -->
### Conversion: Decimal to Binary

1. When converting ``10# 0.738`` into a base2 number, what is the value associated with ``max``?
   - max:  1000                 <!-- response -->

1. Convert the ``10# 0.738`` into a base2 number that contains at most 5 digits. 
   - 2# 0.10111 <!-- response -->
   - Show your work--you will not get credit otherwise!
     ```
       738 * 2 = 1, 476     <!-- response -->
       476 * 2 = 0, 952     <!-- response -->
       952 * 2 = 1, 904     <!-- response -->
       904 * 2 = 1, 808     <!-- response -->
       808 * 2 = 1, 616     <!-- response -->
     ```

1. Convert  ``10# 171`` into a base2 number. 
   - 2# 10101011   <!-- response -->
   - Show your work--you will not get credit otherwise!
     ```      
     171 / 2 -> 85, 1         <!-- response -->
      85 / 2 -> 42, 1         <!-- response -->
      42 / 2 -> 21, 0         <!-- response -->
      21 / 2 -> 10, 1         <!-- response -->
      10 / 2 ->  5, 0         <!-- response -->
       5 / 2 ->  2, 1         <!-- response -->
       2 / 2 ->  1, 0         <!-- response -->
       1 / 2 ->  0, 1         <!-- response -->
       0 / 2 ->  0, 0         <!-- response -->
     ```

### Floating Point
Use the your answers from the "Conversion: Decimal to Binary" Section to complete this section.

1. Convert ``10# 171.738`` into binary scientific notation. (14 digits is sufficient)
   -  2# 10101011.10111              <!-- response -->
   -  1.010101110111  x 2^ 111 (7)   <!-- response -->

1. Note there was a typo in a previous version of the test. The question erroneously provided here was: Convert ``10# 171.345`` into binary scientific notation. (14 digits is sufficient)
   -  2# 10101011.01001                <!-- response -->
   -  1.010101101001 x 2^ 111 (7)    <!-- response -->
    ```
       345 * 2 = 0, 690     <!-- response -->
       690 * 2 = 1, 380     <!-- response -->
       380 * 2 = 0, 760     <!-- response -->
       760 * 2 = 0, 520     <!-- response -->
       520 * 2 = 1, 040     <!-- response -->
     ```

1. If the exponent is stored with a bias of 15, what is the binary encoding for the exponent?
   - 1 0110 (15 + 7 = 22)           <!-- response -->

1. Encode this 10# 171.738 into binary16 (half)
   - x xxxxx xxxxxxxxxx
   - 0 10110 0101011101  for 171.738   <!-- response -->
   - 0 10110 0101011010  for 171.345   <!-- response -->

