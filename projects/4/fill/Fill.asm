// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.

//// Replace this comment with your code.
(LOOP1)
  // location of the keyboard or RAM[24576]
  @24576
  D=M
  @FALSE
  D;JEQ
  (POSITIVE) // a key is pressed so the screen needs to be dark
  @0
  D=A
  @i
  M=D
  // area of the screen
  @8192
  D=A
  @n
  M=D
  (LOOP2)
  @n
  D=M
  @i
  D=D-M
  @RESTART
  D;JLE
  @i
  D=M
  @SCREEN
  A=D+A
  M=-1
  @i
  M=M+1
  @LOOP2
  0;JMP
(FALSE)
  // clean
  @0
  D=A
  @i
  M=D
  // area of the screen
  @8192
  D=A
  @n
  M=D
  (LOOP3)
  @n
  D=M
  @i
  D=D-M
  @RESTART
  D;JLE
  @i
  D=M
  @SCREEN
  A=D+A
  M=0
  @i
  M=M+1
  @LOOP3
  0;JMP
  (RESTART)
  @LOOP1
  0;JMP

