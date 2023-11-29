# Quiz #2: Digitial Logic 
### Date: November 9, 2021
### Allocated time: 1.5 hours (with a 10 minute cushion)
### Exam Times
* Morning Class:  9:05am -- 10:45  
* Afternoon Class:  2:05pm -- 3:45

---
## Name: Matt Engler                                           <!-- answer -->
## GitHub Account: MattEngler7                                 <!-- answer -->

### Boolean Algebra
1. Given the following circuit, provide the equivalent Boolean expression:
   *  S = A + B, C = A * B                                   <!-- answer -->
   ![circuit](circuit.png)

 
1. Given the following truth table, provide the equivalent Boolean expression:
   * B'(A + C)+ BC'                                     <!-- answer -->

  | A  | B  | C | Output |
  | -- | -- |-- | -- |
  | 0| 0 | 0  | 0 |
  | 0 | 0 | 1 | 1 |
  | 0 | 1 | 0 | 1 |
  | 0 | 1 | 1 | 0 |
  | 1 | 0 | 0 | 1 |
  | 1 | 0 | 1 | 1 |
  | 1 | 1 | 0 | 1 |
  | 1 | 1 | 1 | 0 |

### Combinational Circuits
1. What is the difference between a control line and a data line?
   * The difference between a control line and a data line is that a data line is an electrical line or circuit that carries data that can either determine whether a bit represents a 0 or a 1, while the control line only controls something.                                     <!-- answer -->

1. You have been asked to produce a combinational circuit that can select exactly 1 output from 16 different possible inputs.
   1. What basic combinational ciruit should be used?
      * multiplexer                                  <!-- answer -->
   1. How many selector lines will this circuit have?
      * 4                                  <!-- answer -->

1. You have a CPU that has 120 registers. (Yes, 120 registers!)
   1. How many selector lines are included in this circuit
      * 45                                 <!-- answer -->

1. Consider the following circuit

   ![what is it?](whatisit.png)

   1. What is the type of this circuit?
      * 2-4 decoder                                 <!-- answer -->

1. You are provided with a 5-32 Decoder.
   1. What is the role of the "E"nable line?
      * "enable" is a line used to activate a circuit.                                <!-- answer -->

   3. What is the total number of inputs to this circuit?
      * 5                                 <!-- answer -->

   5. What is the total number of outputs from this circuit?
      * 32                                 <!-- answer -->

### Sequential Circuits

1. Explain the primary difference between a combinational and a sequential circuit.
   * The primary difference between a combinational citrcuit and a sequential circuit is that a combinational circuit's are based on boolean algebra but a sequential circuit infuses a memory component into combinational circuits.                                    <!-- answer -->
2. What is the primary difference between a SR-latch and a D-latch?
   * The difference between an SR-latch and a D-latch is that an SR-latch sets and resets circuits, while D-latch forces functions to be complements.                                     <!-- answer -->

### Microarchitecture

1. A CPU is an example of a sequential circuit, where different parts of the circuit is executed in well defined steps.  Answer the following questions related to such a sequential circuit.
   1. For the MIPS microarchitcture, enumerate and describe briefly what each of these steps does:
      1. IF: Instruction fetch from memory.                                <!-- answer -->
      1. EX: Execute operation or calculate address.                                <!-- answer -->
      1. MEM: Access memory operand.                                <!-- answer -->
      1. ID: Instruction decode & regiter read.                                <!-- answer -->
      1. WB: Write results back to register.                                <!-- answer -->
      <!-- Feel free to add or remove additional answer lines as needed. -->
 
   1. What type of digital component is used between each of these steps?
      * Each step that is used has buffers, registers, or latches that will hold informtation for the next step.                                  <!-- answer -->
 
   1. Why is the value of the PC incremented by 4 in each "fetch" stage?  
      * The value is increased each time becasue the instructions require that 4 bytes be encoded.                                  <!-- answer -->


