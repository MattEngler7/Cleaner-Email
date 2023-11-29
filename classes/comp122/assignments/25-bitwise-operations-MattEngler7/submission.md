# Bitwise Operations
### Due Date: March 8, 2022 @ 11:59PM PT
---
## Name: Matthew Engler                                                                <!-- response -->
## GitHub Account: MattEngler7                                                       <!-- response -->

Practically every programming language provides a set of operators to manipulate binary values, Java is no exception.  When you program at the assembly level, you often use these operations to great advantage. That is to say, when you use the MIPS ISA, you will use these operators all the time.  Hence, understanding how these Java instructions work is key to programming at the assembly level.

In this exercise, you need to calculate the result of a number of Java assignment statements that utilize common bitwise operations.  Understanding how these operations work is key to be be able to perform efficient operations at the assembly level.  Some simple examples include:

  1. to quickly multiple/divide by a power of two
     -  x * 4 == x << 2 
     -  x / 8 == x >> 3

  1. to separate a word into its individual bytes
     -  byte2 = (word >> 8) & 0x00F0 

  1. to determine if a particular bit is a one
     -  ( x & 8 ) != 0 : the fourth bit (from the right) is set

  1. to flip a single bit within a word
     -  x = x ^ 8  : the fourth bit (from the right) is flipped


### Signed Binary Representation
Recall that integers are encoded as a two's complement number. This encoding allows us to represent both positive and negative numbers.  To compute the two's complement of a number we first take's it one's complement and then add one.  Using 16-bit encoding, the values of 6 and -6 as follows:

   <pre>
   0000 0000 0000 0110 : 6  :
   1111 1111 1111 1001 : -7 : 1's complement of 6
   1111 1111 1111 1010 : -6 : 1's complement of 6 + 1 == 2's complement of 6 
   </pre>

### Java Bitwise Complement (\~)
The Java bitwise complement operator (\~) is used to compute the 1's complement of its operand.  E.g.,

   ```
   X = ~ 5
   ```
 The value of X is defined to be -6.  The following provides the 16-bit encoding of both the value of 5 and -6.

   - 5: 0000 0000 0000 0101
   - X: 1111 1111 1111 1010

For each of the following Java statements, provide:
   - the value of X
   - the 8-bit 2's complement encoding for the operand
   - the 8-bit complement of the operand

Use the first problem as an example on how to construct your responses.

  1. X = \~ 5 
     - X = -6                    <!-- response -->
     - 5:   0000 0101            <!-- response -->
     - \~5: 1111 1010            <!-- response -->

  1. X = \~ 22 
     - X = -23                       <!-- response -->
     - 22: 0010 0010                       <!-- response -->
     - \~5: 1111 1010                           <!-- response -->

  1. X = \~ -16 
     - X = 15                           <!-- response -->
     - -16:  1111 0000                           <!-- response -->
     - \~15: 0000 1111                           <!-- response -->
 
  1. X = \~ -12 
     - X = 11                           <!-- response -->
     - -12: 1110 1100                           <!-- response -->
     - \~11:0001 0011                           <!-- response -->

  1. X = \~ 127 
     - X = -128                           <!-- response -->
     - 127: 01111111                           <!-- response -->
     - \~-128: 10000000                           <!-- response -->
 
Hmm, \~ X == - (X + 1) ?


### Java Shift Operators (<<, >>, >>>)
Java provides three operators to perform a bitwise shift.  These operators are:

   | op  | Description          | MIPS: Description       | MIPS mnemonic |
   |-----|----------------------|-------------------------|---------|
   | <<  | Left Shift           | shift left logical      |   sll   |
   | >>  | Signed Right Shift   | shift right arithmetic  |   sra   |
   | >>> | Unsigned Right Shift | shift right logical     |   srl   |

In each of the following problems, you are provided with a Java statement that conforms to the following general pattern.

  * X = V << S  (sll X, V, S)
  * X = V >> S  (srl X, V, S)
  * X = V >>> S (sra X, V, S)

For each of these problems, provide the following information:

  1. the 8-bit 2's complement representation for V
  2. the 8-bit representation for X (i.e., V >> S)
  3. the 8-bit representation for \~X 
  3. the equivalent base 10 representation for X

Use the first problem as an example on how to construct your responses.

#### Left-Shift: 
  1. X = 5 << 2
     -   5: 0000 0101                 <!-- response -->
     -   X: 0001 0100                 <!-- response -->
     - \~X: 1110 1011                 <!-- response -->
     -   X= 20                         <!-- response -->
  
  1. X = 4 << 3
     - 4: 0000 0100                               <!-- response -->
     - X: 0010 0000                               <!-- response -->
     - \~X: 1101 1111                               <!-- response -->
     - X= 32                               <!-- response -->
  
  1. X = 127 << 1
     - 127: 0111 1111                               <!-- response -->
     - X:  1111 1110                               <!-- response -->
     - \~X:0000 0001                               <!-- response -->
     - X=-2                               <!-- response -->
  
  1. X = 1 << 7
     - 1: 0000 0001                               <!-- response -->
     - X: 1000 0000                               <!-- response -->
     - \~X: 0111 1111                               <!-- response -->
     - X= -128                               <!-- response -->
  
  1. X = -2 << 4
     - -2: 1111 1110                               <!-- response -->
     - X: 1110 0000                               <!-- response -->
     - \~X: 0001 1111                               <!-- response -->
     - X= -32                               <!-- response -->
  

#### Signed Shift-Right: Notice that the sign bit replicates itself

  1. X = -22 >> 2
     -  -22: 1110 1010                <!-- response -->
     -   X:  1111 1010                <!-- response -->
     - \~X:  0000 0101                <!-- response -->
     -   X=  -6                       <!-- response -->
  
  1. X = 16 >> 4
     - 16:0001 0000                               <!-- response -->
     -  X:0000 0001                              <!-- response -->
     - \~X:1111 1110                               <!-- response -->
     - X= 1                               <!-- response -->
  
  1. X = 16 >> 2
     - 16: 0001 0000                               <!-- response -->
     -  X: 0000 0100                             <!-- response -->
     - \~X: 1111 1011                               <!-- response -->
     - X= 4                               <!-- response -->
  
  1. X = 127 >> 6
     - 127: 0111 1111                               <!-- response -->
     - X: 0000 0001                               <!-- response -->
     - \~X: 1111 1110                               <!-- response -->
     - X= 1                               <!-- response -->
  
  1. X = -16 >> 2
     - -16: 1111 0000                               <!-- response -->
     -  X: 1111 1100                              <!-- response -->
     - \~X:0000 0011                               <!-- response -->
     - X= -4                                <!-- response -->
  

#### UnSigned Shift-Right: 

  1. X = -22 >>> 2
     -  -22: 1110 1010                <!-- response -->
     -   X:  0011 1010                <!-- response -->
     - \~X:  1100 0101                <!-- response -->
     -   X=  58                       <!-- response -->
  
  1. X = 16 >>> 4
     - 16: 0001 0000                               <!-- response -->
     -  X: 0000 0001                              <!-- response -->
     - \~X: 1111 1110                               <!-- response -->
     -  X= 1                              <!-- response -->
  
  1. X = 16 >>> 2
     - 16: 0001 0000                               <!-- response -->
     -  X: 0000 0100                              <!-- response -->
     - \~X: 1111 1011                               <!-- response -->
     -   X= 4                             <!-- response -->
  
  1. X = -127 >>> 6
     - -127: 0111 1111                               <!-- response -->
     -    X: 0000 0001                            <!-- response -->
     -  \~X: 1111 1110                              <!-- response -->
     -   X= 1                             <!-- response -->
  
  1. X = -16 >>> 2
     - -16: 1111 0000                               <!-- response -->
     -   X: 0011 1100                             <!-- response -->
     - \~X: 1100 0011                               <!-- response -->
     -   x= 60                              <!-- response -->

Hmm, as compared to the >> operator, only negative numbers work differently!

### Java Bitwise Boolean operations
Java provides three operators to perform a bitwise Boolean manipulations.  These operators are:

   | op  | Description          | MIPS op |
   |-----|----------------------|---------|
   |  &  | Bitwise And          |   and   |
   |  \| | Bitwise Or           |   or    |
   |  ^  | Bitwise Xor          |   xor   |

In each of the following problems, you are provided with a Java statement that conforms to the following general pattern.

  *  X = A & B

For each of these problems, provide the following information:

  1. the 16-bit representation for A and B
  2. the 16-bit representation for X 

Use the first problem as an example on how to construct your responses.

  1. X = 0x4152 & 0xF0
     -  0x4512:  0100 0001 0101 0010       <!-- response -->
     -  0x00F0:  0000 0000 1111 0000       <!-- response -->
     -       X:  0000 0000 0101 0000       <!-- response --> 
  
  1. X = 0x4152 & 0xF00   
     - 0x4152: 0100 0001 0101 0010                                    <!-- response -->
     - 0xF00:  0000 1111 0000 0000                                    <!-- response -->
     -  X:     0000 0001 0000 0000                                    <!-- response -->
  
  1. X = 0x4152 \| 0xAAA
     - 0x4152: 0100 0001 0101 0010                                    <!-- response -->
     - 0xAAA:  0000 1010 1010 1010                                    <!-- response -->
     - X:      0100 1011 1111 1010                                    <!-- response -->
  
  1. X = 0640 \| 0137
     - 0640: 0000 0110 0100 0000                                    <!-- response -->
     - 0137: 0000 0001 0011 0111                                    <!-- response -->
     - X:    0000 0111 0111 0111                                    <!-- response -->
  
  1. X = 0x4152 ^ 0xF0
     - 0x4152: 0100 0001 0101 0010                                    <!-- response -->        
     - 0xF0:   0000 0000 1111 0000                                    <!-- response -->
     - X:      0100 0001 1010 0010                                    <!-- response -->
  
  1. X = 0x4152 ^ 0xAAAA
     - 0x4152: 0100 0001 0101 0010                                    <!-- response -->
     - 0xAAAA: 1010 1010 1010 1010                                    <!-- response -->
     - X:      1110 1011 1111 1000                                    <!-- response -->

### MIPS Practicum

#### IPv Dotted Decimal
An IPv4 address is an 32-bit unsigned integer.  It is more commonly denoted in dotted decimal form, e.g., 130.166.32.238. This number is said to be composed of 4 octets. (Recall an octet is synonymous with a byte.) For the provided example, the four octets are: 130, 166, 32, and 238. This 32-bit unsigned integer is also equivalent to: 0x84A620EE

For this problem you need to isolate the third octet (i.e., 32) from the 32-bit integers. Perform the following steps to achieve the desired results:

  1. Let $t0 hold the value of: 0x84A620EE  (i.e., 130.166.32.238)
  1. Let $t1 hold the value of: 0x0000FF00
  1. Perform the following operation:  and $t2, $t0, $t1  ($t2 = $t0 & $t1)
  1. Perform the following operation:  srl $t3, $t2, 8    ($t3 = $t2 >>> 8)

Your response is provided by providing the 32-bit binary representation of $t0, $t1, $t2, and $t3:

  1. 1000 0100 1010 0110 0010 0000 1110 1110 : $t0    <!-- response -->
  1. 0000 0000 0000 0000 1111 1111 0000 0000 : $t1    <!-- response -->
  1. 0000 0000 0000 0000 0010 0000 0000 0000 : $t2    <!-- response -->
  1. 0000 0000 0000 0000 0000 0000 0100 0000 : $t3    <!-- response -->

#### Base64
When converting a binary string to base64, each 24-bit sequence (which is 3 bytes in length) is converted into 4 6-bit values.  Then each 6-bit value is mapped onto an ASCII character.

For this problem you need to provide the corresponding ASCII character for the second 6-bit sequences.  Perform the following steps to achieve the desired results.

  1. Let $t0 hold the desired 3-byte sequence: 0x32F3AA.
  1. Let $t1 hold an appropriate value to isolate the second 6-bit sequence.
  1. Perform the following operation:  and $t2, $t0, $t1
  1. Perform the following operation:  srl $t3, $t2, X
  1. Use the base64 lookup table to determine the associated ASCII character.
     * [Base64 table](https://docs.google.com/spreadsheets/d/1Jlo2GmWvl4bxlPN9GzXsKnl4acyppBWYQjX2S_Bm9oQ/edit#gid=0)

Provide the appropriate information below to show your work to identify the associated ASCII character:

  1. 0000 0000 0011 0010 1111 0011 1010 1010 : $t0    <!-- response -->
  1. 0000 0000 0000 0011 1111 0000 0000 0000 : $t1    <!-- response -->
  1. 0000 0000 0000 0010 1111 0000 0000 0000 : $t2    <!-- response -->
  1. 0000 0000 0000 0000 0000 0000 0010 1111 : $t3    <!-- response -->
  1. hex value of $t1: 0x03F00                               <!-- response -->
  1. decimal value of X: 12                              <!-- response -->
  1. associated ASCII value: "v"                         <!-- response -->

