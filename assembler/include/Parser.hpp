#ifndef __PARSER__
#define __PARSER__
#include "Utilities.hpp"
#include <fstream>
#include <iostream>
#include <string>
// class Command {
// public:
//   std::string command;
//   CommandType commandType;
//   Command(std::string command, CommandType commandType);
// };
class Parser {

public:
  std::fstream file;
  Parser(std::string filepath);
  bool hasMoreCommands();
  bool advance();
  COMMAND_TYPE getCommandType(std::string currentCommand);
  // std::string getSymbol(Command currentCommand);
  // std::string getDest(Command currentCommand);
  // std::string getComp(Command currentCommand);
  // std::string getJump(Command currentCommand);
  std::string getSymbol(std::string currentCommand);
  std::string getDest(int *indexCurrentCommand, std::string currentCommand);
  // C_INSTRUCTION_DEST getDest(std::string currentCommand);
  std::string getComp(int *indexCurrentCommand, std::string currentCommand);
  // C_INSTRUCTION_COMP getComp(std::string currentCommand);
  std::string getJump(int *indexCurrentCommand, std::string currentCommand);
  // C_INSTRUCTION_JUMP getJump(std::string currentCommand);
};
#endif
