@R0
  D=M
@n
  M=D
@R1
  M=0
@n
  D=M
(LOOP)
  @END
  D;JLE
@R1
  M=D+M
@n
  M=M-1
  D=M
@LOOP
  0;JMP
(END)
  @END
  0;JMP

