# Table Encodings:
---
### Name:                                <!-- response -->
### GitHub Account:                      <!-- response -->

## Questions

### Bit-Stream Separation

1. Consider the following bit sequence
 
   ```
   01011010 10101011 11010111 11110101 10110110 11010100
   ```

   Separate the bit sequence into appropriate sized chuncks for each of the following domains. (You do NOT have to decode this bit sequence.)

   1. Octal String:                                    <!-- response -->
   1. Hex String:                                      <!-- response -->
   1. Base64 String:                                   <!-- response -->


1. Before we send a message over the network, we send a string of binary digits to announce our intent.  This string is composed of 14 hexidemical digits (7 octets), each with the value of "16# AA".  This string is then immediately followed by the Start of Frame (SOF) deliminator, which is a 8-bit value of "16# AB".  We then can proceed with sending our message.

   1. For each of the following question, provide the binary string...
      - What is the binary bit pattern of the preamble?
        -                                           <!-- response -->
      - What is the binary bit pattern of the SOF deliminator?
        -                                           <!-- response -->

### Encoding for Powers of 2
For each of the following number, encoding them into a binary string. 

  1. 16# AA AA AA AB 00 00  (Hexidecimal)
     - 2#  1010 1010 1010 1010 1010 1010 1010 1011 0000 0000 0000 0000

  1. 16# FACE (Hexidecimal)
     - 2#                                         <!-- response -->

  1. 8# 5673 (Octal)
     - 2#                                         <!-- response -->

  1. 16# 1011 (Hexidecimal)
     - 2#                                         <!-- response -->

  1. 8# 10101011 (Octal)
     - 2#                                         <!-- response -->
 
  1. 2# 10101110 11101010 01011101  (Binary)
     - 2#                                         <!-- response -->

  1. 4# 1010101 (Quaternary)
     - 2#                                         <!-- response -->

  <!-- Did the Professor talk about base 4?  No, but you should be able to solve it anyways! -->

### Decoding into Powers of 2
For each of the following binary strings, decode them into the identified based number.

  1. 2#  00101110 10010101 01100010
     - 8#                                        <!-- response -->
     - 16#                                       <!-- response -->

  1. 2#  11011010 00110101 00000110
     - 8#                                        <!-- response -->
     - 16#                                       <!-- response -->

  1. 2#  00010010 10101001 01011011
     - 8#                                        <!-- response -->
     - 16#                                       <!-- response -->
     - 4#                                        <!-- response -->

### ASCII Encodings
Use the ASCII table to encode the following character strings as a hexidecimal number.

  1. Example
     - 0x 45 78 61 6d 70 6c 65
  1. Hello
     -                                           <!-- response -->
  1. Easy
     -                                           <!-- response -->
  1. Pie
     -                                           <!-- response -->

### ASCII Decodings
Use the ASCII table to decode the following binary string into a character string.

  1. 0x 6548 6c6c 206f 6f57 6c72 2164 000a 0000
     -                                           <!-- response -->

###  MIPS encodings
Use the encoding tables associate with MIPS, complete the following problems.

  1. Provide the 5-bit encodings for the following registers:
     - $at : 00001    <!-- response -->
     - $a1 :          <!-- response -->
     - $fp :          <!-- response -->
     - $t0 :          <!-- response -->
     - $13 :          <!-- response -->

  1. Provide the 6-bit encodings for the following operations:
     - j :            <!-- response -->
     - jal :          <!-- response -->
     - beq :          <!-- response -->
     - lw :           <!-- response -->
     - addi :         <!-- response -->
 
  1. Provide the 6-bit encoding for the following functions:
     - add :          <!-- response -->
     - and :          <!-- response -->
     - jalr :         <!-- response -->
     - sll :          <!-- response -->
     - syscall :      <!-- response -->
   
