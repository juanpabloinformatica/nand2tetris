//push constant 17
@17
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 17
@17
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//eq
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation


@1
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
//push constant 17
@17
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 16
@16
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//eq
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 16
@16
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 17
@17
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//eq
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 892
@892
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//lt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 891
@891
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 892
@892
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//lt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation


@1
D=A
@13
M=0
(LOOP1)
@13
M=M-1
D=D-1
@LOOP1
D;JGT
@13
D=M
@0
A=M
M=D
@0
M=M+1
//push constant 891
@891
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//lt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 32767
@32767
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//gt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation


@1
D=A
@13
M=0
(LOOP2)
@13
M=M-1
D=D-1
@LOOP2
D;JGT
@13
D=M
@0
A=M
M=D
@0
M=M+1
//push constant 32766
@32766
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 32767
@32767
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//gt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 32766
@32766
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//gt
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@0
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 57
@57
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 31
@31
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 53
@53
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

@84
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 112
@112
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


@28
D=A
@13
M=0
(LOOP3)
@13
M=M-1
D=D-1
@LOOP3
D;JGT
@13
D=M
@0
A=M
M=D
@0
M=M+1
// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//neg
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@28
D=A
@0
A=M
M=D
@0
M=M+1
// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//and
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@24
D=A
@0
A=M
M=D
@0
M=M+1
//push constant 82
@82
D=A
@0
A=M
M=D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//or
@0
M=M-1
@0
M=M-1
// Finally pushing the result of the arithmetic operation

@90
D=A
@0
A=M
M=D
@0
M=M+1
// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//not
@0
M=M-1
// Finally pushing the result of the arithmetic operation


@91
D=A
@13
M=0
(LOOP4)
@13
M=M-1
D=D-1
@LOOP4
D;JGT
@13
D=M
@0
A=M
M=D
@0
M=M+1
