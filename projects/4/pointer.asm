//  for (i = 0; i < n; i++){
// arr[i] = -1
// }
  //arr = 100
@100
  D=A
@arr
  M=D
// n = 10
@10
  D=A
@n
  M=D
// i = 0
@0
  D=A
@i
  M=D

(LOOP)
  @i
  D=M
  @n
  D=M-D
  @END
  D;JLE
  //arr[i]
  //100+i
  @i
  D=M
  @arr
  // Has to be like this because i want to write in the arr[i] so if not i will be writting always in arr
  // in that way we store an address in A register and RAM[A] get selected
  // in such a way arr[i] can be simulated
  A=M+D
  M=-1
  @i
  M=M+1
  @LOOP
  0;JMP
(END)
  @END
  0;JMP


