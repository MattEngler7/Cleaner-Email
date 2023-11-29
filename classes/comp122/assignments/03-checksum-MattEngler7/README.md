# Checksum
### COMP122 Pre-assessment Program: Generating a checksum value.

```
check·sum | ˈCHekˌsəm |
noun
a digit representing the sum of the correct digits in a piece of stored or transmitted 
digital data, against which later comparisons can be made to detect errors in the data.
```


# Purpose:
This program is being assigned to start you programming right away in COMP 122. The program is also being used as an assessment instrument for the professor.  Via your solutions, the professor will be able to adjust the content the introductory material of the class a bit to review or to reinforce various topics covered in COMP110 (which is a prerequiste for this class). 


# Assignment:
1. Write a Java program that computes a simple checksum of 8-bit integers.  This program is *based* upon the calculation of the checksum value of a IPv4 header, defined by RFC791. 

1. Time the execution of your program, as well as two other programs provided by the professor.

This program should conform to the following specification:

  * Program name: checksum.java
  * Reads 10 non-negative integers from standard input (stdin), with each integer value in the range of 0..2^8-1 (I.e., 0..255). 
  * Stores the 6th input integer into a variable called "checksum", and resets this input value to zero (0).
  * Stores the sum of the integers read from stdin into a variable called "sum".
  * Performs integer division on this sum using 2^8 as the divisor to yield both a quotient and a remainder. These values are then stored in the variables "quotient" and "remainder", respectively.
  * Adds the values of "quotient" and "remainder" together, and stores this value into the variable "sum".
  * Subtracts this new value of "sum" from 2^8-1, and stores the result in a variable called "complement".
  * Outputs the value of "checksum" and "complement" to standard output (System.out).
  * If the value of "checksum" and "complement" are not the same, outputs the string "Error Detected!" to standard error (stderr).


### Minimum Validation Checks:
* Ensure that all input values are the correct range.  You may abort the program otherwise.

### Starter Code:

```
import java.util.Scanner;

class checksum  
{  

  public static void main(String args[]) {

    final int max_int = 255;  // The maximum size for the input
    int count = 10;           // The number of integers to read from stdin
    int sum = 0;              // Note that the "sum" might exceed max_int
    int checksum = 0;         // The value of the 6th input integer
    int quotient;             // The result of evaluating the assignment:  quotient   = sum / (max_int + 1);
    int remainder;            // The result of evaluating the assignment:  remainder  = sum % (max_int + 1 );
    int complement;           // The result of evaluating the assignment: complement = max_int - sum;

    Scanner stdin = new Scanner(System.in);
```

```
  System.out.printf("Stored Checksum: %d, Computed Checksum: %d\n", checksum, complement);
  if (checksum != complement ) {
    System.err.printf("Error Detected!\n");  
  }
  
}
```

### Testing:
Use the following to test your program.

```
$ java checksum < 156.txt
Stored Checksum: 156, Computed Checksum: 156
```

```
$ java checksum < 229.txt
Stored Checksum: 229, Computed Checksum: 132
Error Detected!
```

```
$ java checksum < 81.txt
Stored Checksum: 81, Computed Checksum: 81
```

The file "47201.txt" is a correct test case for the enhanced program using 16-bit integers.

### Timing the Program:
Once you have your program working, you need to time the execution of the program. Moreover, you should compare your time to the execution time of two other programs written by the professor.  The first program was written in Java, and the second in C.  You should expect to see that the Java programs run much slower that the corresponding C program.

For this part of the assignment, you need to ensure your program works correctly on the ssh.sandbox.csun.edu server.  Thsi is the server in which the executing times will be perform.

```
$ scp checksum.java ssh.sandbox.csun.edu:    # Secure copy your program to the ssh.sandbox.csun.edu server.
$ scp 156.txt ssh.sandbox.csun.edu:          # Secure copy the 156 test case to the ssh.sandbox.csun.edu server.
$ ssh ssh.sandbox.csun.edu                   # Log into the ssh.sandbox.csun.edu server
$ javac checksum.java                        # Compile your checksum program
```

Now that you have a working program on the server, let's time and compare execution times.  Here we use the 'script' program to record this activity. The file 'timing

```
$ script checksum.typescript                 # Start and record a session, with the session recorded in the checksum.typescript file
$ java checksum < 156.txt                    # Run your checksum program to make sure things are working
$ pushd ~steve/comp122/checksum              # Temporarily change the working directory to utilize his version
$ time java checksum < 156.txt               # Time the execution of the professor's Java version
$ time ./checksum < 156.txt                  # Time the execution of the professor's C version
$ popd                                       # Change the working directory back
$ time java checksum < 156.txt               # Time the execution of your Java version
$ exit                                       # Exit the script program
```


### Submission:
Use github classroom to accept and to submit your solution.

Here are the steps you should follow:
1. Make a directory for your labs:  mkdir -p ~/classes/comp122/labs
1. Accept this assignment via GitHub Classroom
   - A URL will be provided to you via slack
   - Link you github account with you CSUN my.csun.edu
1. Clone the assignment into the directory ~/classes/cit384/labs/getting-start
1. Develop your Java program
   - periodically push your solution to the repository

#### Files to be added to the repository
You need to add the following files to the repository
1. The checksum.java source code
1. The checksum.script file

#### Git Commands to remember
1. git clone: to create a local repository (and working directory) of your remote repository
2. git pull: a command to perform a *fetch* and *merge* in one step 
   - git fetch: to copy all new informtion from the remote repository into the local repository
   - git merge: to merge all new information from the local repository into the working directory
4. git add: to add a file to the staging area 
5. git commit: to place all stage files into the local repository
6. git push: to copy all new information from the local repository into the remote repository
7. git status: provides a recap of your current working directory, staging, and branch information




# Program Enhancements:
1. Modify the program and your test cases to use 16-bit integers (i.e., input numbers can now be (I.e., 0..64k, or 0..65535)
1. Use the first input number to determine the number of integers to be read and store this value in the variable "count".  
  * The value of "count" is determined by the following java assignment `count = ((number >> 8) & 0x0F)*2;` where number is the first input number read.
1. Name the enhanced program: checksum16.java
1. Add the necessary additional files to the repository.

# Other Information and Resources:
This program is based upon the structure if a IPv4 packet.  Although you do not need to understand this structure to complete this assignment, you may want to review some of the material associated with IPv4.  More information will be provided in the lecture.
* https://en.wikipedia.org/wiki/IPv4
* https://en.wikipedia.org/wiki/IPv4_header_checksum

### Notes:
* The IPv4 header utilizes a checksum field that is 16-bit quanity. This program reduces the size in half to a 8-bit quantity.  Correspondingly, the following changes are made to keep things consistent: 
* The IPv4 header, without any options, has a total size of 20 bytes. This program reduces the size in half to a 10 byte size.
* This checksum value is stored in the 11th & 12th byte of the IPv4 header. This program assigns its location to the 6th byte.


