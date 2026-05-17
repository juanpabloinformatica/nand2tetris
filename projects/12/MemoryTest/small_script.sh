#!/usr/bin/bash

function toggle_inner_main (){
  if [[ ! -f ./MemoryDiag/Main.vm.bat ]];then
    mv "./MemoryDiag/Main.jack" "./MemoryDiag/Main.jack.bat"
  else
    mv  "./MemoryDiag/Main.jack.bat" "./MemoryDiag/Main.jack"
  fi
}

