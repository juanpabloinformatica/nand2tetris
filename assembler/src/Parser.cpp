#include "../include/Parser.hpp"
#include "../include/Utilities.hpp"
#include <bitset>
#include <cstring>
#include <fstream>
#include <ios>

Parser::Parser(std::string filepath) {
  // std::cout << "Entering here" << std::endl;
  // this->file = std::fstream(filepath);
  // // std::cout<<this->file
  // std::string text;
  // while (std::getline(this->file, text)) {
  //   std::cout << "Has More commands:" << " [" << std::boolalpha
  //             << this->hasMoreCommands() << "]" << std::endl;
  //   std::cout << text << std::endl;
  // }
  // std::cout << "Has More commands:" << " [" << std::boolalpha
  //           << this->hasMoreCommands() << "]" << std::endl;
}
bool Parser::hasMoreCommands() { return !this->file.eof(); }
bool Parser::advance() { return this->hasMoreCommands(); }

COMMAND_TYPE Parser::getCommandType(std::string currentCommand) {
  COMMAND_TYPE commandType;
  if (currentCommand.substr(0, 1) == std::string("(") &&
      currentCommand.substr((currentCommand.length() - 1), 1) ==
          std::string(")")) {
    return L_COMMAND;
  }
  if (currentCommand.substr(0, 1) != std::string("@")) {
    return C_COMMAND;
  }
  return A_COMMAND;
  return commandType;
}
std::string Parser::getSymbol(std::string currentCommand) {
  if (currentCommand.substr(0, 1) == std::string("(") &&
      currentCommand.substr((currentCommand.length() - 1), 1) ==
          std::string(")")) {
    return currentCommand.substr(1, currentCommand.length() - 2);
  }
  return currentCommand.substr(1, currentCommand.length() - 1);
}
C_INSTRUCTION_DEST Parser::getDest(std::string currentCommand) {
  // this get d1,d2,d3 from c_instruction
  switch (bitsToULong(currentCommand, C_DEST, INS_D1)) {
  case DEST_NULL:
    return DEST_NULL;
    break;
  case DEST_M:
    return DEST_M;
    break;
  case DEST_D:
    return DEST_D;
    break;
  case DEST_MD:
    return DEST_MD;
    break;
  case DEST_A:
    return DEST_A;
    break;
  case DEST_AM:
    return DEST_AM;
    break;
  case DEST_AD:
    return DEST_AD;
    break;
  case DEST_AMD:
    return DEST_AMD;
    break;
  default:
    return DEST_UNDEFINED;
  }
}
C_INSTRUCTION_COMP Parser::getComp(std::string currentCommand) {
  switch (bitsToULong(currentCommand, C_COMP, INS_C1)) {

  case COMP_ZERO:
    return COMP_ZERO;
    break;
  case COMP_ONE:
    return COMP_ONE;
    break;
  case COMP_MINUS_ONE:
    return COMP_MINUS_ONE;
    break;
  case COMP_D:
    return COMP_D;
    break;
  case COMP_A:
    return COMP_A;
    break;
  case COMP_M:
    return COMP_M;
    break;
  case COMP_NOT_D:
    return COMP_NOT_D;
    break;
  case COMP_NOT_A:
    return COMP_NOT_A;
    break;
  case COMP_NOT_M:
    return COMP_NOT_M;
    break;
  case COMP_MINUS_D:
    return COMP_MINUS_D;
    break;
  case COMP_MINUS_A:
    return COMP_MINUS_A;
    break;
  case COMP_MINUS_M:
    return COMP_MINUS_M;
    break;
  case COMP_D_PLUS_ONE:
    return COMP_D_PLUS_ONE;
    break;
  case COMP_A_PLUS_ONE:
    return COMP_A_PLUS_ONE;
    break;
  case COMP_M_PLUS_ONE:
    return COMP_M_PLUS_ONE;
    break;
  case COMP_D_MINUS_ONE:
    return COMP_D_MINUS_ONE;
    break;
  case COMP_A_MINUS_ONE:
    return COMP_A_MINUS_ONE;
    break;
  case COMP_M_MINUS_ONE:
    return COMP_M_MINUS_ONE;
    break;
  case COMP_D_PLUS_A:
    return COMP_D_PLUS_A;
    break;
  case COMP_D_PLUS_M:
    return COMP_D_PLUS_M;
    break;
  case COMP_D_MINUS_A:
    return COMP_D_MINUS_A;
    break;
  case COMP_D_MINUS_M:
    return COMP_D_MINUS_M;
    break;
  case COMP_A_MINUS_D:
    return COMP_A_MINUS_D;
    break;
  case COMP_M_MINUS_D:
    return COMP_M_MINUS_D;
    break;
  case COMP_D_ASP_A:
    return COMP_D_ASP_A;
    break;
  case COMP_D_ASP_M:
    return COMP_D_ASP_M;
    break;
  case COMP_D_PIPE_A:
    return COMP_D_PIPE_A;
    break;
  case COMP_D_PIPE_M:
    return COMP_D_PIPE_M;
    break;
  default:
    return COMP_UNDEFINED;
  }
}

C_INSTRUCTION_JUMP Parser::getJump(std::string currentCommand) {

  switch (bitsToULong(currentCommand, C_JUMP, INS_J1)) {

  case JUMP_NULL:
    return JUMP_NULL;
    break;
  case JUMP_JGT:
    return JUMP_JGT;
    break;
  case JUMP_JEQ:
    return JUMP_JEQ;
    break;
  case JUMP_JGE:
    return JUMP_JGE;
    break;
  case JUMP_JLT:
    return JUMP_JLT;
    break;
  case JUMP_JNE:
    return JUMP_JNE;
    break;
  case JUMP_JLE:
    return JUMP_JLE;
    break;
  case JUMP_JMP:
    return JUMP_JMP;
    break;
  default:
    return JUMP_UNDEFINED;
  }
}
