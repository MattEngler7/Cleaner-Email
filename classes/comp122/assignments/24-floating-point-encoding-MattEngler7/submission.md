# Base Conversion and Floating Point Representation
## Due Date: March 8, 2020 at 11:59 PM
--
## Name: Matthew Engler                                <!-- response -->
## GitHub Account: MattEngler7                      <!-- response -->

## Problems:

### 2# - 11.01 x 2^ 1 0010  (unnormalized exponential form)

  1. Convert to base 2: - 11010000000000000000.0        <!-- response -->
  1. Scientific Notation: 2# - 1.101 x 2^ 10011         <!-- response -->
  1. IEEE Binary16: 
     * 1 | error | 1010 0000 00                         <!-- response -->
     * 15 (bias) + 19 = 34 -> 10 0010 
     * Note that you need 6 bits to represent the exponent, but only have 5 bits are allowed.

  1. IEEE Binary32:
     * 1 | 10010010 | 1010 0000 0000 0000 0000 000     <!-- response -->
     * 127 (bias)  127 + 19 = 146 -> 1001 0010                <!-- response -->


### 2# - 0.00010010 

  1. Convert to base 2: 2# - 0.00010010                 <!-- response -->
  1. Scientific Notation: -1.0010 * 2^ -100                              <!-- response -->
  1. IEEE Binary16:
     * 1 | 01010 | 0010 0000 00                                                 <!-- response -->
     * 15 (bias) + -4 = 11 -> 1011                                                 <!-- response -->
  1. IEEE Binary32:
     * 1 | 11110110 | 0010 0000 0000 0000 0000 000                                                <!-- response -->
     * 127 (bias) + -4 = 123 -> 111 1011                                                 <!-- response -->


### 8#  12.34
  1. Convert to base 2: 1010.0111                                <!-- response -->
  1. Scientific Notation: 1.0100111 x 2^11 (3)                             <!-- response -->
  1. IEEE Binary16:
     * 3 + 15 = 18 -> 10010                                                 <!-- response -->
     * 0 | 10010 | 0100 1110 00
  1. IEEE Binary32:
     * 127 + 3 = 130 -> 1000 0010                                                 <!-- response -->
     * 0 | 10000010 | 0100 1110 0000 0000 0000 000

### 16# - 0.0FF
  1. Convert to base 2: -0.000011111111                                <!-- response -->
  1. Scientific Notation: -1.1111111 * 2^ 101 (5)                              <!-- response -->
  1. IEEE Binary16:
     * 15 (bias) + 5 = 20 -> 10100                                                 <!-- response -->
     * 1 | 10100 | 1111 1110 00
  1. IEEE Binary32:
     * 127 (bias) + 5 = 132 -> 1000 0100                                                <!-- response -->
     * 1 | 100000100 | 1111 1110 0000 0000 0000 000


### 10# 3.14
  1. Convert to base 2: 11.00100011110101110001                                <!-- response -->
  1. Scientific Notation: 1.100100011110101110001 * 2^ 1 (1)                              <!-- response -->
  1. IEEE Binary16:
     * 0 | 10000 | 1001 0001 11                                                 <!-- response -->
     * 15 (bias) + 1 = 16 -> 10000
  1. IEEE Binary32:
     * 0 | 10000000 | 1001 0001 1110 1011 1000 100                                                 <!-- response -->
     * 127 (bias) + 1 = 128 -> 1000 0000
