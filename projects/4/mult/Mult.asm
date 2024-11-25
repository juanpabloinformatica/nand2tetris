// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
// so I have to multiplied what is in register0 and what is in register2 and put it in register2
// as I don't have * I can do a simulation with a for loop


@0
  D=A
@i
  M=D // i = 0
@0
  D=A
@sum
  M=D // sum =0
@R1
  D=M
@n
  M=D
@0
  D=A
// if not done, the test doesn't pass
@R2
  M=D
(LOOP)
  @n
  D=M
  @i
  D=D-M
  @STOP
  D;JLE
  @R0
  D=M
  @sum
  M=M+D
  @i
  M=M+1
  @LOOP
  0;JMP
(STOP)
  @sum
  D=M
  @R2
  M=D
(END)
  @END
  0;JMP









