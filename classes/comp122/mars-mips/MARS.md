# MARS: Installation and Startup

During the next segment of our class, we will be learning more about the MIPS assemble language.  Moreover, you will need to write a number of programs in MIPS assemble.  To help you with these activities, you will need the use of a MIPS assembler, specifically, MARS.

In this assignment, you will download a copy of MARS and perform a number of exercises to familiarize yourself with this simulator.  

Perform the following steps:

1. Perform a ``git pull`` on the class material repo
   * Software orginiated at: http://courses.missouristate.edu/KenVollmar/MARS/.
   * location: comp122/class-material/mips/mars/

1. Potentially install java (https://www.java.com/)

1. Install the software onto your computer.
  * Several security might arise with installing this software.
  * For example on a Mac, you will need to do the following:
    1. In the Finder on your Mac, locate the app you want to open.
    1. Control-click the app icon, then choose Open from the shortcut menu.
    1. Click Open.

1. Locate the files associated with the MIPS material
  * cd class-material
  * cd mips
  * ls 
    * documentation
    * examples
    * mars

1. Review the files in these subdirectories of the mips folder
   * MARS features.pdf
   * MARS Tutorial.doc

1. Open the MARS simulator
  * click on the icon
  * ``open class-material/mips/mars/Mars4_5.jar``
  * ``java -jar class-material/mips/mars/Mars4_5.jar ``
  * 
    ```
    alias mars="java -jar ~/Desktop/classes/comp122/class-material/mips/mars/Mars4_5.jar"
    mars
    ```
  * You can also run the simulator from the command line
    * ``java -jar class-material/mips/mars/Mars4_5.jar filename.asm``

1. Complete the following exercises

  1. Exercise #1:  Review the Menu Bar.
    * The menu bar is broken down into three major sections: 
    * File operations.  New, open, save
    * Edit operation: Undo, redo, cut, paste, etc.
    * Run operations: Assemble, execute, forward step, backward step, pause, stop, reset.
 
  1. Exercise #2: Load and execute the "empty.asm" code
    1. Load the 'empty.asm' code:  (File -> Open )
    1. Assemble the code: (Run -> Assemble)
    1. Step through your code:  (Run -> Step)
    1. Watch what happens in the Text Segment window
 
  1. Exercise #3: Load and execute the "hello_world" code
    1. Load the 'hello_world.asm' code:  (File -> Open )
    1. Assemble the code: (Run -> Assemble)
    1. Single step through the program until the simulator stops
    1. Watch what happens in the Text Segment and the Register windows
    1. Notice what happens when you encounter the 'syscall' command.
       * This is a trap to the kernel
       * An internal subcommand is executed that prints a string. 
       * The syscall takes two arguments; in our example, the values are stored in two special registers:  $v0 and $a0.  
       * The value of the $v0 register specifies that system should print a string.  
       * The value of the $a0 register contains the address in memory of the string to be printed.
       * When you step over this 'syscall' command, look at the console window where the string "hello world" should be printed.  All I/O results are performed within this window.

  1. Exercise #5: Load and execute the "echo_int" code
     1. Load the 'echo_int.asm' code:  (File -> Open )
     1. Assemble the code: (Run -> Assemble)
     1. Single step through the program until the simulator stops
     1. Watch what happens in the Text Segment and the Register windows
        * In this example, the simulator should stop on the 'syscall' command.  
        * This particular call to the 'syscall' command reads and integer from the console.  
        * You should enter a integer (followed by a return) in the console.  
        * Notice the value of the entered number has been placed into register $v0. 
        * This number is then placed into memory, by the 'sw' instruction, at the address 'num'.  
        * We also move this value into $v0.  This register is subsequently used by the next 'syscall' command to print the integer out to the console.

 
