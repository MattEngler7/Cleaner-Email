# Base Conversion and Floating Point Representation

### Name:                                <!-- response -->
### GitHub Account:                      <!-- response -->

---
## Problems:
### 2#  - 11.01 x 2^ 1 0010  (unnormalized exponential form)

  1. Convert to base 2: - 11010000000000000000.0     <!-- response -->

  1. Scientific Notation: - 1.101 x 2^ 10011 (19)    <!-- response -->

  1. IEEE Binary16: 
     * 1 | error | 1010 0000 00                      <!-- response -->
     * 15 (bias) + 19 = 34 -> 10 0010                <!-- response -->
     * Note that you need 6 bits to represent the exponent, but only have 5 bits are allowed.

  1. IEEE Binary32:
     * 1 | 1001 0010 | 1101 0000 0000 0000 0000 000  <!-- response -->
     * 127 (bias) + 19 = 146 -> 1001 0010            <!-- response -->

### 2# - 0.00010010 

  1. Convert to base 2: 2# - 0.00010010              <!-- response -->

  1. Scientific Notation: - 1.0010 x 2^ -100 (-4)    <!-- response -->

  1. IEEE Binary16:
     * 1 | 0 1011 | 0010 0000 00                     <!-- response -->
     * 15 (bias) + -4 = 11 -> 1011                   <!-- response -->

  1. IEEE Binary32:
     * 1 | 0111 1011 | 0010 0000 0000 0000 0000 000   <!-- response -->
     * 127 (bias) + -4 = 123 -> 111 1011             <!-- response -->


### 8#  12.34

  1. Convert to base 2: 2# 001 010.011 100           <!-- response -->

  1. Scientific Notation: 1.010 011 100 x 2^ 11 (3)  <!-- response --> 

  1. IEEE Binary16:
     * 0 | 1 0010 | 0100 1110 00                     <!-- response --> 
     * 15 (bias) + 3 = 18 -> 1 0010                  <!-- response -->

  1. IEEE Binary32:
     * 0 | 1000 0010 | 0100 1110 0000 0000 0000 000  <!-- response -->
     * 127 (bias) + 3 = 130 -> 1000 0010             <!-- response -->


### 16# - 0.0FF

  1. Convert to base 2: - 0000.0000 1111 1111        <!-- response -->

  1. Scientific Notation: - 1.111 1111 x 2^ - 101 (-5) <!-- response --> 

  1. IEEE Binary16:
     * 1 | 0 1010 | 1111 1110 00                     <!-- response -->
     * 15 (bias) + -5 = 10 -> 0 1010                 <!-- response -->

  1. IEEE Binary32:
     * 1 | 0111 1010 | 1111 1110 0000 0000 0000 00   <!-- response -->
     * 127 (bias) + -5 = 122 -> 0111 1010            <!-- response -->


### 10# 3.14
  1. Convert to base 2: 11.00100011110101110000101000111101           <!-- response -->

  1. Scientific Notation: 1.100100011110101110000101000111101 x 2^ 1    <!-- response --> 

  1. IEEE Binary16:
     * 0 | 1 0000 | 1001 0001 11                     <!-- response -->
     * 15 (bias) + 1 = 16 -> 1 0000                  <!-- response -->

  1. IEEE Binary32:
     * 0 | 1000 0000 | 1001 0001 1110 1011 1000 01   <!-- response -->
     * 127 (bias) + 1 = 128 -> 1000 0000             <!-- response -->

