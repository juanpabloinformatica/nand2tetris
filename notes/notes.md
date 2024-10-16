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
