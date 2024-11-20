# Description

This are the notes for the course nand2tetris, idea is understanding how computer works
here is an overall image of the course

[!overall course](./img/nand2tetrisOverall.png)

# week_1

computers -> 0 and 1
how to deals with 0 and 1
0 == f == N
1 == T == Y

what can we do with 0 and 1
boolean operations
AND
OR
NOT
Boolean expressions
composition of boolean expresions
boolean functions
is boolean expresion with parameters

Any boolean function can be represented using nand operations

is demonstrated from a truth table that taking the 1 values of the rows
it will be a comb of (x and y) or (z and t) ......

So we need to demonstrate that nand can be either and, not and or

so we know that

(x or y) == not(x) and not(y)
== (x nand x) and (y nand y)
==

so now we know that or can be expressed with not and "and" operations

and then keeping in mind that nand == not(x and y)
so if and is

---AND---

x|y|r
0|0|0
0|1|0
1|0|0
1|1|1

---NAND---
x|y|r
0|0|1
0|1|1
1|0|1
1|1|0

so now

NOT(x) == (x nand x)

and now that we know that or could be represented and not could be represented as well we can demonstrate
and

(x AND y) == NOT(x NAND y)

(x AND y) == (x NAND y) NAND (x NAND y)

for demonstrating it a table can be done

+---+---+-----------------+----------+---------+
| x | y | (x nand y) as t | t nand t | x and y |
+---+---+-----------------+----------+---------+
| 0 | 0 | 1 | 0 | 0 |
+---+---+-----------------+----------+---------+
| 0 | 1 | 1 | 0 | 0 |
+---+---+-----------------+----------+---------+
| 1 | 0 | 1 | 0 | 0 |
+---+---+-----------------+----------+---------+
| 1 | 1 | 0 | 1 | 1 |
+---+---+-----------------+----------+---------+

perfect just with nand everything can be done -- boolean logic

---

Before this boolean functions, now encapsulating this in chips will be the next step

Logic gates ->
-> stand alone chip that give a functionalitie
-> interface answers the question what

HDL hardware description languague

interface == unique
implementatin => varies

Why do we need Or8way gate????

I forgot i had mux16 but i want to uderstand why nested mux can give the result of a mux16 how the bits are added check that?
the bits are added because in the out we place bit by bit using out[x]
for example a[0] and b[0] if we want to keep a we do sel 0 and will take that bit of a an put it in out[0]
end ----- Project 1 ------

## Project 2

### ALU

Von neumman computer architecture
[!Computer architecture](./img/VonNeumannArch.png)

Writting alu

### Project 3

## Sequential logic

- Before doing combinational logic

  - The meaning of time was not existant

- We need time

  - Same hardware for compute the same thing (resuse hardware).
  - **Remember things** for the pass (intermediate result ).
  - Deal with speed.

- Convert continous physical time to descript time
- Good image explaining this

  - [!image the clock](./img/theclock.png)

- The delays are considered and handled by the clock frequence

- So before combinatorial logic -> out[t] = function(in[t])
- Now is sequential logic -> state[t] = function(in[t-1])
- So basically sequential depend on present inputs + past outputs (a counter is a good example) ==> Flip Flops (Needs a memory)

## Flip Flops

- This will create the missing part to keep the previous output

## How everything will be design from now

- Basically for building the future gates, for different functionalities
- This will be the settup
- [! sequential logic implementtion](./img/sequentialLogic.png)

## Memory units

- Memory

  - Main memory RAM
  - Secondary memory: disk,..
  - Volatile/non-volatile???

- Ram

  - Data (of a program)
  - Instructions (of a program)

- Perspectives
  - Physical
  - **Logical**
- logical considerations
- Ram unit
- Before RAM there is register
- Register

  - load + mutex + d flip-flop == register

- A register image:
  - [!1 bit register image](./img/dflipflop1bitregister.png)

## Machine languague (week4)

- What we can do with the computer.
- Computers can do many things.
- Von Neuman, we can put the software in the hardware.
- We are going to handle machine languaue, modern programming languagues
- Takes the code and the compiler translate it to machine languague
- Machine languagues (sequences of bits ==> 110010101...)
- Is good to use Mnemonics -> assembly languaue
- So basically what happens is that we are going to use a tool (an assembler ) that
  will do a translation of nmenonics that makes easier to code in machine languague, then this tool
- Will translate this to bits 0 or 1s.
- Machine languague is one if not the most importance interface, due to its give us the
  possibility to interact between software and hardware.
- Memory hierarchy
  - Accessing memory location is costly
  - From quicker to longer, from shorter to bigger
  - cpu => registers -> cache -> main memory -> disk
  - Registers smallest memory unit
  - CPU usually contain a few easily accessed "registers".
  - Data registers
    - Add R1,R2
  - Address registers
    - Store R1,@A
  - Addressing modes
    - Register
      - Add R1, R2 -> R2=R2+R1
    - Direct
      - Add R1,M[200] -> Mem[200] = Mem[200] + R1
    - Indirect
      - Add R1,@A -> Mem[A] = Mem[A] + R1
    - Immediate
      - Add 73, R1 -> R1=R1+73
  - Flow control
    - Usually CPU executes instructions in sequence
    - Sometimes we need to jump unconditionally
    - Jump for simulating loops (We can use labels taking advantage of assebly)
    - Jump with condition can simulte if else
- # The hack machine languague

  - Hardware design and machine languague design goes by hand.
  - Hack computer -> instruction memory -> CPU -> data memory.
  - Data memory -> RAM -> sequence of 16 bit registers
  - Instruction memory -> separtae memory space -> (ROM) sequence of 16 bits registers.
  - CPU -> is able to perform instructions thanks to ALU
  - Instruction bus/ data bus/address buses -> moves the data through RAM = CPU = ROM
  - How we control this computer -> with software -> Machine languague.
  - Hack machine language
    - 16 bit A- instructions
    - 16 bit C- instructions
  - Hack program is a sequence of instructions written in the hack machine languague.
  - The computer has a reset button.
  - # Control:
    - The ROM (instruction memory) is loaded with a Hack program. (how the program is loaded into the ROM?)
    - the reset button is pushed
    - the program starts running
  - The hack computer has

    - CPU -> A register -> holds 16 bit value (data value or address)
      -> D register -> holds 16 bit value
      RAM -> M register -> M represents the 16 bit RAM register addresed by A

  - The A instruction
    - Syntax @value
    - Semantics
      - Sets the A register to value
      - **Side effect: RAM[A] becomes the selected RAM register.**
    - example
      - @21
        -> the A register is setted to 21
      - the RAM[21] becomes the selected RAM register
      - // Set RAM[100] to -1
        @100 // 1 = 100
        Register a = 100
        RAM[100] is in M
        m = -1
  - The C instruction
    - dest = comp; jump (both dest and jump are optional)
    - store or jump
    - comp: -> 0, 1, -1, D, A ............
    - dest = null, M, D, MD, A AM, AD, AMD -> more than one is storing simultaneously. -> M -> refers to RAM[A]
    - jump: null, JGT, JEQ, JGE, JLT, JNE, JLE, JMP -> if (comp jump 0) jump to execute the instruction in ROM[A] -> those 8 possible conditions , they always compare the result of the computation to zero.
    - If the boolean expression (comp jump 0) is true, jumps to execute the instruction stored in ROM[A].
    - # Example
      - // if (D-1==0) jump to execute the instruction stored in ROM[56]

- # Pointers
  -
