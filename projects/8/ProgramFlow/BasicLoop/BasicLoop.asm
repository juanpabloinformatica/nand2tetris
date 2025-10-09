//push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1

//pop local 0         // sum = 0

@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@1
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//label LOOP
(LOOP)

//push argument 0
@0
D=A
@2
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//push local 0
@0
D=A
@1
A=D+M
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
A=M
D=M
@0
M=M-1
A=M
M=M+D
@0
M=M+1

//pop local 0	        // sum = sum + n

@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@1
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//push argument 0
@0
D=A
@2
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//push constant 1
@1
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
@0
M=M+1

//pop argument 0      // n--

@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@2
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//push argument 0
@0
D=A
@2
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//if-goto LOOP        // if n > 0, goto LOOP
@0
M=M-1
A=M
D=M
@LOOP
D;JGT

//push local 0        // else, pushes sum to the stack's top
@0
D=A
@1
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

