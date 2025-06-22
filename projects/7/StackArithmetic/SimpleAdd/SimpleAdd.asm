//push constant 7
@7
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 8
@8
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//add
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@15
D=A
@0
A=M
M=D
@0
M=M+1
