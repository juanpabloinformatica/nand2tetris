//push argument 1         // sets THAT, the base address of the
@1
D=A
@2
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//pop pointer 1           // that segment, to argument[1]
@0
M=M-1
A=M
D=M
@13
M=D
@1
D=A
@3
A=D+A
D=A

@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 0         // sets the series' first and second
@0
D=A
@0
A=M
M=D
@0
M=M+1

//pop that 0              // elements to 0 and 1, respectively
@0
M=M-1
A=M
D=M
@13
M=D
@0
D=A
@4
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//push constant 1
@1
D=A
@0
A=M
M=D
@0
M=M+1

//pop that 1
@0
M=M-1
A=M
D=M
@13
M=D
@1
D=A
@4
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//push argument 0         // sets n, the number of remaining elements
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

//push constant 2         // to be computed, to argument[0] minus 2,
@2
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//sub                     // since 2 elements were already computed.

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

//pop argument 0
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

//if-goto COMPUTE_ELEMENT // if n > 0, goto COMPUTE_ELEMENT
@0
M=M-1
A=M
D=M
@COMPUTE_ELEMENT
D;JGT
//goto END                // otherwise, goto END
@END
0;JMP
//label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
//push that 0
@0
D=A
@4
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//push that 1
@1
D=A
@4
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
D=D+M
@14
M=D
@13
D=M
@14
A=M
M=D

//push pointer 1
@0
D=A
@4
D=D+M
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
A=D+A
D=A

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

//pop argument 0
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

//goto LOOP
@LOOP
0;JMP
//label END
(END)
