
@0
M=256
//[1] push return_address
@3
D=A
@0
D=M
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
@0
D=M
@5
D=D+A
//Not putting args
@0
D=D+A
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
(3)

//push constant 1
@1
D=A
@0
A=M
M=D
@0
M=M+1

//push constant 2
@2
D=A
@0
A=M
M=D
@0
M=M+1

//call functionName2 2

//[1] push return_address
@4
D=A
@0
D=M
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
@0
D=M
@5
D=D+A
@2
D=D+A
@2
M=D
//[7] LCL = SP
@0
D=M
@1
M=D
//[8] goto f
@functionName1
0;JMP
[9]
(4)

