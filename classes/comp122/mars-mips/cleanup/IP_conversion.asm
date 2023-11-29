# Sample program to convert the encoding of an IP address
#   integer --> dotted-decimal
#   dotted-decimal -> integer
# to it's dotted decimal equivalent


# Example dd2i:
#   Input: 130 166 238 195
#   Output: 0x826eec3

# Algorithm dd2i:
#   0. include some support code: syscall_macros.asm
#   1. (t0, t1, t2, t3) = read 4 bytes (each 0..2^8)
#   2. shift the each byte to be appropropriately postioned
#   3. merge the words together
#   4. print the resulting integer
# 
# Steps:
#   t0 = 170, t1=240, t2=240, 250
#   t0 = 1010 1010, t1=1111 0000, t2=1111 0000, t3= 1111 1010


# Example i2dd:
#   Input:  -2102989117  (0x826eec3)
#   Output: 130.166.238.195

# Algorithm i2dd:
#   0. include some support code: syscall_macros.asm
#   1. X = read integer (0..2^32)
#   2. split integer into four bytes
#      - t0 = X[0:7] 
#      - t1 = X[8:15] 
#      - t2 = X[16:23] 
#      - t3 = X[24:31] 
#   3. print each of the bytes as integers separated with a "."
#
# Steps:
#   X = 1010 1010  1111 0000  1111 0000  1111 1010


