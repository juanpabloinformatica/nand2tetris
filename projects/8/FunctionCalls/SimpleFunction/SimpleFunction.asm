
// k  number of local variables
// Initialize all of them to 0
// that k is codeWritterObj->parser->getArg2()
@2
D=A
@13
@SKIPSimpleFunction.test
D;JEQ
M=D
(FPUSHSimpleFunction.test)
@0
A=M
M=0
@0
M=M+1
@13
M=M-1
D=M
@FPUSHSimpleFunction.test
D;JGT
(SKIPSimpleFunction.test)
//instructions:	16
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

//instructions:	10
//push local 1

@1
D=A
@1
A=D+M
D=M
@0
A=M
M=D
@0
M=M+1

//instructions:	10// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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

//instructions:	10// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

//not

@0
M=M-1
A=M
M=!M
@0
M=M+1

//instructions:	6
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

//instructions:	10// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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

//instructions:	10
//push argument 1

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

//instructions:	10// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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

//instructions:	10
//return

// FRAME = LCL
@1
D=M
@13
M=D
// RET = *(FRAME - 5)
@13
D=M
@15
M=D
@5
D=A
@15
M=M-D
A=M
D=M
@14
M=D
// *ARG = pop()
@0
M=M-1
A=M
D=M
@2
A=M
M=D
// SP = ARG+1
@1
D=A
@2
D=M+D
@0
M=D
// THAT = *(FRAME-1)
@13
D=M
@15
M=D
@1
D=A
@15
M=M-D
A=M
D=M
@4
M=D
// THIS = *(FRAME - 2)
@13
D=M
@15
M=D
@2
D=A
@15
M=M-D
A=M
D=M
@3
M=D
// ARG = *(FRAME - 3)
@13
D=M
@15
M=D
@3
D=A
@15
M=M-D
A=M
D=M
@2
M=D
// LCL = *(FRAME - 4)
@13
D=M
@15
M=D
@4
D=A
@15
M=M-D
A=M
D=M
@1
M=D
//goto RET
//be carefull here to examine
// the idea is the following I need
//to go back to the location
//location is stored in RET
@14
A=M
0;JMP

//instructions:	80// TOTAL LINES:225
//END OF FILE
