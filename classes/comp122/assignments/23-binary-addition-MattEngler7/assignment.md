# Binary Addition:
---
### Name:                                <!-- response -->
### GitHub Account:                      <!-- response -->

## Questions


### Binary Addition:

Solve the following addition problems using binary arithmetic. Show your work by modifying the template provided.

1. 2# 1010 + 2# 0010 
   ```
   x xxxx                <!-- response: carries -->
     xxxx                <!-- response: op1 encoding -->
   + xxxx                <!-- response: op2 encoding -->
   ------            
   y yyyy                <!-- response: sum encoding -->
   ```

1. 2# 1010 1101  +  2# 0010 1010
   ```
   x xxxx  xxxx              <!-- response: carries -->
     xxxx  xxxx              <!-- response: op1 encoding -->
   + xxxx  xxxx              <!-- response: op2 encoding -->
   ------  ----          
   y yyyy  yyyy              <!-- response: sum encoding -->
   ```

### Status Bits:
Provide the values of the CPU's status bits after the each of the following additions.  (Note you calulate these additions in the previous section:

1. 2# 1010 + 2# 0010 
  - C:    <!-- response: -->
  - V:    <!-- response: -->
  - S:    <!-- response: -->
  - Z:    <!-- response: -->

1. 2# 1010 1101  +  2# 0010 1010
  - C:    <!-- response: -->
  - V:    <!-- response: -->
  - S:    <!-- response: -->
  - Z:    <!-- response: -->

### Base2 Decoding:
1. Convert the following numbers to their base10 equivalent, using expanded notation.
Show your work by following the example.

   1. 2# 0110           
      - 1 x 2^2 = 4    <!-- response -->
      - 1 x 2^1 = 2    <!-- response -->
      - answer: 8      <!-- response -->

   1. 2# 1100          <!-- response: 1100 -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      - answer:        <!-- response -->


   1. 2# 1101 0111     <!-- response: 1101 0111 -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      -                <!-- response -->
      - answer:        <!-- response -->


### BCD Addition:

Solve the following addition problems using BCD arithmetic. Show your work by modifying the template provided.

1. 325 + 1444                           <!-- response: BCD: 325 + 1444 -->
   ```
   x xxxx   x xxxx   x xxxx   x xxxx    <!-- response: carries -->
     xxxx     xxxx     xxxx     xxxx    <!-- response: op1 encoding -->
   + xxxx     xxxx     xxxx     xxxx    <!-- response: op2 encoding -->
   ------    -----    -----    -----
   y yyyy   y yyyy   y yyyy   y yyyy    <!-- response: sum encoding -->

   x xxxx   x xxxx   x xxxx   x xxxx    <!-- response: corrective step carries -->
   y yyyy   y yyyy   y yyyy   y yyyy    <!-- response: sum encoding -->
   + 0xx0     0xx0     0xx0     0xx0    <!-- response: corrective step -->
   - ----    -----    -----    -----
   x xxxx     xxxx     xxxx     xxxx    <!-- response: final sum -->
   ```

1. 3225 + 1816                          <!-- response: BCD: 3225 + 1816  -->
   ```
   x xxxx   x xxxx   x xxxx   x xxxx    <!-- response: carries -->
     xxxx     xxxx     xxxx     xxxx    <!-- response: op1 encoding -->
   + xxxx     xxxx     xxxx     xxxx    <!-- response: op2 encoding -->
   ------    -----    -----    -----
   y yyyy   y yyyy   y yyyy   y yyyy    <!-- response: sum encoding -->

   x xxxx   x xxxx   x xxxx   x xxxx    <!-- response: corrective step carries -->
   y yyyy   y yyyy   y yyyy   y yyyy    <!-- response: sum encoding -->
   + 0xx0     0xx0     0xx0     0xx0    <!-- response: corrective step -->
   - ----    -----    -----    -----
   x xxxx     xxxx     xxxx     xxxx    <!-- response: final sum -->
   ```

### BCD Encoding:
1. Encode the following decimal numbers into BCD.

   1. 1769
      - xxxx xxxx xxxx xxxx     <!-- response -->
   1. 5041
      - xxxx xxxx xxxx xxxx     <!-- response -->
 

