
@256
D=A
@0
M=D
//[1] push return_address
@53
D=A
@0
A=M
M=D
@0
M=M+1
//[2] push LCL
@1
D=M
@0
A=M
M=D
@0
M=M+1
//[3] push ARG
@2
D=M
@0
A=M
M=D
@0
M=M+1
//[4] push THIS
@3
D=M
@0
A=M
M=D
@0
M=M+1
//[5] push THAT
@4
D=M
@0
A=M
M=D
@0
M=M+1
//[6] ARG = sp - 5 -nArgs
@5
D=A
@0
D=M-D
//Not putting args
@0
D=D-A
@2
M=D
//[7] LCL = SP
@0
D=M
@1
M=D
//[8] goto f
@Sys.init
0;JMP
//[9]
(53)


//function Main.fibonacci 0

// Declare a label for the function entry
// that functionName is codeWritterObj->parser->getArg1()
(Main.fibonacci)
// k  number of local variables
// Initialize all of them to 0
// that k is codeWritterObj->parser->getArg2()
@0
D=A
@13
@SKIPMain.fibonacci
D;JEQ
M=D
(FPUSHMain.fibonacci)
@0
A=M
M=0
@0
M=M+1
@13
M=M-1
D=M
@FPUSHMain.fibonacci
D;JGT
(SKIPMain.fibonacci)
//instructions:	16
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

//instructions:	10
//push constant 2

@2
D=A
@0
A=M
M=D
@0
M=M+1

//instructions:	7// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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
@FIRST0
D;JLT
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

//instructions:	22
//if-goto N_LT_2

@0
M=M-1
A=M
D=M
@N_LT_2
D;JNE

//instructions:	6
//goto N_GE_2

@N_GE_2
0;JMP

//instructions:	2
//label N_LT_2               // if n < 2 returns n

(N_LT_2)

//instructions:	0
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

//instructions:	80
//label N_GE_2               // if n >= 2 returns fib(n - 2) + fib(n - 1)

(N_GE_2)

//instructions:	0
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

//instructions:	10
//push constant 2

@2
D=A
@0
A=M
M=D
@0
M=M+1

//instructions:	7// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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
//call Main.fibonacci 1  // computes fib(n - 2)

//[1] push return_address
@282
D=A
@0
A=M
M=D
@0
M=M+1
//[2] push LCL
@1
D=M
@0
A=M
M=D
@0
M=M+1
//[3] push ARG
@2
D=M
@0
A=M
M=D
@0
M=M+1
//[4] push THIS
@3
D=M
@0
A=M
M=D
@0
M=M+1
//[5] push THAT
@4
D=M
@0
A=M
M=D
@0
M=M+1
//[6] ARG = sp - 5 -nArgs
@5
D=A
@0
D=M-D
@1
D=D-A
@2
M=D
//[7] LCL = SP
@0
D=M
@1
M=D
//[8] goto f
@Main.fibonacci
0;JMP
//[9]
(282)

//instructions:	49
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

//instructions:	10
//push constant 1

@1
D=A
@0
A=M
M=D
@0
M=M+1

//instructions:	7// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

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
//call Main.fibonacci 1  // computes fib(n - 1)

//[1] push return_address
@358
D=A
@0
A=M
M=D
@0
M=M+1
//[2] push LCL
@1
D=M
@0
A=M
M=D
@0
M=M+1
//[3] push ARG
@2
D=M
@0
A=M
M=D
@0
M=M+1
//[4] push THIS
@3
D=M
@0
A=M
M=D
@0
M=M+1
//[5] push THAT
@4
D=M
@0
A=M
M=D
@0
M=M+1
//[6] ARG = sp - 5 -nArgs
@5
D=A
@0
D=M-D
@1
D=D-A
@2
M=D
//[7] LCL = SP
@0
D=M
@1
M=D
//[8] goto f
@Main.fibonacci
0;JMP
//[9]
(358)

//instructions:	49// Setting to 0 last 2 values and then pointing to the n-1 value for putting the result in there

//add                    // returns fib(n - 1) + fib(n - 2)

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

//instructions:	80// TOTAL LINES:448
//END OF FILE

//function Sys.init 0

// Declare a label for the function entry
// that functionName is codeWritterObj->parser->getArg1()
(Sys.init)
// k  number of local variables
// Initialize all of them to 0
// that k is codeWritterObj->parser->getArg2()
@0
D=A
@13
@SKIPSys.init
D;JEQ
M=D
(FPUSHSys.init)
@0
A=M
M=0
@0
M=M+1
@13
M=M-1
D=M
@FPUSHSys.init
D;JGT
(SKIPSys.init)
//instructions:	16
//push constant 4

@4
D=A
@0
A=M
M=D
@0
M=M+1

//instructions:	7
//call Main.fibonacci 1

//[1] push return_address
@520
D=A
@0
A=M
M=D
@0
M=M+1
//[2] push LCL
@1
D=M
@0
A=M
M=D
@0
M=M+1
//[3] push ARG
@2
D=M
@0
A=M
M=D
@0
M=M+1
//[4] push THIS
@3
D=M
@0
A=M
M=D
@0
M=M+1
//[5] push THAT
@4
D=M
@0
A=M
M=D
@0
M=M+1
//[6] ARG = sp - 5 -nArgs
@5
D=A
@0
D=M-D
@1
D=D-A
@2
M=D
//[7] LCL = SP
@0
D=M
@1
M=D
//[8] goto f
@Main.fibonacci
0;JMP
//[9]
(520)

//instructions:	49
//label END

(END)

//instructions:	0
//goto END  // loops infinitely

@END
0;JMP

//instructions:	2// TOTAL LINES:522
//END OF FILE
