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

@sum
M=0
@i
M=1
(LOOP)
    @i
    D=M
    @R1
    D = A -
    @STOP

    @sum
    D=M
    @i
    M=M+1
    @LOOP
    0;JMP



(STOP)
(END)









