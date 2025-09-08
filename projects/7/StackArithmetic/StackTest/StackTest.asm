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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST0
D;JEQ
D=0
@CONTINUE0
0;JMP
(FIRST0)
D=-1
@CONTINUE0
0;JMP
(CONTINUE0)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST1
D;JEQ
D=0
@CONTINUE1
0;JMP
(FIRST1)
D=-1
@CONTINUE1
0;JMP
(CONTINUE1)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST2
D;JEQ
D=0
@CONTINUE2
0;JMP
(FIRST2)
D=-1
@CONTINUE2
0;JMP
(CONTINUE2)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST3
D;JLT
D=0
@CONTINUE3
0;JMP
(FIRST3)
D=-1
@CONTINUE3
0;JMP
(CONTINUE3)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST4
D;JLT
D=0
@CONTINUE4
0;JMP
(FIRST4)
D=-1
@CONTINUE4
0;JMP
(CONTINUE4)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST5
D;JLT
D=0
@CONTINUE5
0;JMP
(FIRST5)
D=-1
@CONTINUE5
0;JMP
(CONTINUE5)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST6
D;JGT
D=0
@CONTINUE6
0;JMP
(FIRST6)
D=-1
@CONTINUE6
0;JMP
(CONTINUE6)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST7
D;JGT
D=0
@CONTINUE7
0;JMP
(FIRST7)
D=-1
@CONTINUE7
0;JMP
(CONTINUE7)
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
D=M
@FIRST8
D;JGT
D=0
@CONTINUE8
0;JMP
(FIRST8)
D=-1
@CONTINUE8
0;JMP
(CONTINUE8)
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
A=M
D=M
@0
M=M-1
A=M
M=M+D
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
A=M
D=M
@0
M=M-1
A=M
M=M-D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//neg

@0
M=M-1
A=M
M=-M
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//and

@0
M=M-1
A=M
D=M
@0
M=M-1
A=M
M=M&D
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
A=M
D=M
@0
M=M-1
A=M
M=M|D
@0
M=M+1

// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there
//not

@0
M=M-1
A=M
M=!M
@0
M=M+1

