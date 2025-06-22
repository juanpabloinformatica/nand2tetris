//push constant 3030
@3030
D=A
@0
A=M
M=D
@0
M=M+1

//pop pointer 0
@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@3
A=A+D
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 3040
@3040
D=A
@0
A=M
M=D
@0
M=M+1

//pop pointer 1
@0
M=M-1
A=M
D=M
@13
M=D
@1
D=A
@3
A=A+D
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 32
@32
D=A
@0
A=M
M=D
@0
M=M+1

//pop this 2
@0
M=M-1
A=M
D=M
@13
M=D
@2
D=A
@3
D=M+D
@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 46
@46
D=A
@0
A=M
M=D
@0
M=M+1

//pop that 6
@0
M=M-1
A=M
D=M
@13
M=D
@6
D=A
@4
D=M+D
@14
M=D
@13
D=M
@14
A=M
M=D

//push pointer 0
@0
D=A
@3
D=M+D
@0
A=M
M=D
@0
M=M+1

//push pointer 1
@1
D=A
@3
D=M+D
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

@6070
D=A
@0
A=M
M=D
@0
M=M+1
//push this 2
@2
D=A
@3
A=M+D
D=M
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//sub
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@6038
D=A
@0
A=M
M=D
@0
M=M+1
//push that 6
@6
D=A
@4
A=M+D
D=M
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

@6084
D=A
@0
A=M
M=D
@0
M=M+1
