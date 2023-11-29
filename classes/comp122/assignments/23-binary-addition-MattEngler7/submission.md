# Binary Addition:
---
### Name: Matthew Engler                               <!-- response -->
### GitHub Account: MattEngler7                     <!-- response -->

## Questions


### Binary Addition:

Solve the following addition problems using binary arithmetic. Show your work by modifying the template provided.

1. 2# 1010 + 2# 0010 
   ```
   x 0110                <!-- response: carries -->
     1010                <!-- response: op1 encoding -->
   + 0010                <!-- response: op2 encoding -->
   ------            
   0 1100                <!-- response: sum encoding -->
   ```

1. 2# 1010 1101  +  2# 0010 1010
   ```
   0 0101  0000              <!-- response: carries -->
     1010  1101              <!-- response: op1 encoding -->
   + 0010  1010              <!-- response: op2 encoding -->
   ------  ----          
   0 1101  0111              <!-- response: sum encoding -->
   ```

### Status Bits:
Provide the values of the CPU's status bits after the each of the following additions.  (Note you calulate these additions in the previous section:

1. 2# 1010 + 2# 0010 
  - C:0    <!-- response: -->
  - V:0    <!-- response: -->
  - S:0    <!-- response: -->
  - Z:0    <!-- response: -->

1. 2# 1010 1101  +  2# 0010 1010
  - C:1    <!-- response: -->
  - V:0    <!-- response: -->
  - S:0    <!-- response: -->
  - Z:0    <!-- response: -->

### Base2 Decoding:
1. Convert the following numbers to their base10 equivalent, using expanded notation.
Show your work by following the example.

   1. 2# 0110           
      - 1 x 2^2 = 4    <!-- response -->
      - 1 x 2^1 = 2    <!-- response -->
      - answer: 8      <!-- response -->

   1. 2# 1100          <!-- response: 1100 -->
      - 0 x 2^0 = 0    <!-- response -->
      - 0 x 2^1 = 0    <!-- response -->
      - 1 x 2^2 = 4    <!-- response -->
      - 1 x 2^3 = 8    <!-- response -->
      - answer: 12       <!-- response -->


   1. 2# 1101 0111     <!-- response: 1101 0111 -->
      - 1 x 2^0 = 1    <!-- response -->
      - 1 x 2^1 = 2    <!-- response -->
      - 1 x 2^2 = 4    <!-- response -->
      - 0 x 2^3 = 0    <!-- response -->
      - 1 x 2^4 = 16   <!-- response -->
      - 0 x 2^5 = 0    <!-- response -->
      - 1 x 2^6 = 64   <!-- response -->
      - 1 x 2^7 = 128  <!-- response -->
      - answer: 215    <!-- response -->


### BCD Addition:

Solve the following addition problems using BCD arithmetic. Show your work by modifying the template provided.

1. 325 + 1444                           <!-- response: BCD: 325 + 1444 -->
   ```
   0 0000   0 0000   0 0000   0 1000    <!-- response: carries -->
     0000     0011     0010     0101    <!-- response: op1 encoding -->
   + 0001     0100     0100     0100    <!-- response: op2 encoding -->
   ------    -----    -----    -----
   0 0001   0 0111   0 0110   0 1001    <!-- response: sum encoding -->

   0 0000   0 0000   0 0000   0 0000    <!-- response: corrective step carries -->
   0 0001   0 0111   0 0110   0 1001    <!-- response: sum encoding -->
   + 0000     0000     0000     0000    <!-- response: corrective step -->
   - ----    -----    -----    -----
   0 0001   0 0111   0 0110   0 1001    <!-- response: final sum -->
   ```

1. 3225 + 1816                          <!-- response: BCD: 3225 + 1816  -->
   ```
   0 0110   0 0000   0 0000   0 1000    <!-- response: carries -->
     0011     0010     0010     0101    <!-- response: op1 encoding -->
   + 0001     1000     0001     0110    <!-- response: op2 encoding -->
   ------    -----    -----    -----
   0 0100   0 1010   0 0011   0 1011    <!-- response: sum encoding -->

   0 0001   1 1100   0 0001   1 1100    <!-- response: corrective step carries -->
   0 0100   0 1010   0 0011   0 1011    <!-- response: sum encoding -->
   + 0000     0110     0000     0001    <!-- response: corrective step -->
   - ----    -----    -----    -----
   0 0101     0000     0100     0001    <!-- response: final sum -->
   ```

### BCD Encoding:
1. Encode the following decimal numbers into BCD.

   1. 1769
      - 0001 0111 0110 1001     <!-- response -->
   1. 5041
      - 0101 0000 0100 0001     <!-- response -->
 

