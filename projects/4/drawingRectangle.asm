@0
  D=A
@i
  M=D
@R0
  D=M
@n
  M=D
@0
  D=A
@row
  M=D
(LOOP)
  @n
  D=M
  @i
  D=D-M
  @END
  D;JLE
  @row
  D=M
  @SCREEN
  A=A+D
  M=-1
  @32
  D=A
  @row
  M=M+D
  @i
  M=M+1
  @LOOP
  0;JMP
(END)
  @END
  0;JMP

