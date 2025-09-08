//push constant 111
@111
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 333
@333
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 888
@888
D=A
@0
A=M
M=D
@0
M=M+1

//pop static 8
@0
M=M-1
A=M
D=M
@13
M=D
@8
D=A
@16
A=D+A
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//pop static 3
@0
M=M-1
A=M
D=M
@13
M=D
@3
D=A
@16
A=D+A
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//pop static 1
@0
M=M-1
A=M
D=M
@13
M=D
@1
D=A
@16
A=D+A
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//push static 3
@0
D=A
@19
D=D+M
@0
A=M
M=D
@0
M=M+1

//push static 1
@0
D=A
@17
D=D+M
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//sub

@0
M=M-1
A=M
D=M
@0
M=M-1
A=M
M=M-D
@0
M=M+1

//push static 8
@0
D=A
@24
D=D+M
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//add

@0
M=M-1
A=M
D=M
@0
M=M-1
A=M
M=M+D
@0
M=M+1

