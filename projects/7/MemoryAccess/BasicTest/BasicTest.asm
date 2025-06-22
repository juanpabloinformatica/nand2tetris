//push constant 10
@10
D=A
@0
A=M
M=D
@0
M=M+1

//pop local 0
@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@1
D=M+D
@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 21
@21
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 22
@22
D=A
@0
A=M
M=D
@0
M=M+1

//pop argument 2
@0
M=M-1
A=M
D=M
@13
M=D
@2
D=A
@2
D=M+D
@14
M=D
@13
D=M
@14
A=M
M=D

//pop argument 1
@0
M=M-1
A=M
D=M
@13
M=D
@1
D=A
@2
D=M+D
@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 36
@36
D=A
@0
A=M
M=D
@0
M=M+1

//pop this 6
@0
M=M-1
A=M
D=M
@13
M=D
@6
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

//push constant 42
@42
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 45
@45
D=A
@0
A=M
M=D
@0
M=M+1

//pop that 5
@0
M=M-1
A=M
D=M
@13
M=D
@5
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

//pop that 2
@0
M=M-1
A=M
D=M
@13
M=D
@2
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

//push constant 510
@510
D=A
@0
A=M
M=D
@0
M=M+1

//pop temp 6
@0
M=M-1
A=M
D=M
@13
M=D
@6
D=A
@5
A=A+D
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//push local 0
@0
D=A
@1
A=M+D
D=M
@0
A=M
M=D
@0
M=M+1

//push that 5
@5
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

@55
D=A
@0
A=M
M=D
@0
M=M+1
//push argument 1
@1
D=A
@2
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

@34
D=A
@0
A=M
M=D
@0
M=M+1
//push this 6
@6
D=A
@3
A=M+D
D=M
@0
A=M
M=D
@0
M=M+1

//push this 6
@6
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
//add
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@72
D=A
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


@38
D=A
@13
M=0
(LOOP0)
@13
M=M-1
D=D-1
@LOOP0
D;JGT
@13
D=M
@0
A=M
M=D
@0
M=M+1
//push temp 6
@6
D=A
@5
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

@472
D=A
@0
A=M
M=D
@0
M=M+1
