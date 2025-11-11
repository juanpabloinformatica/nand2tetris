# Number lines ignoring comments give the same numbering
# than when passing to the vmemulator.
#
# counter=0;cat FibonacciElement.asm | while IFS= read -r -d $'\n' line;do\
# 		if  grep -v  -Pi "(^\()|(^\/\/)|(^\s*$)" <<< $line   ;then\
# 				sed -E "s/(.*)/\/\/$counter \1/g" <<< $line >>file.txt;\
# 					((counter++));\
# 						else\
# 							sed -n 'p' <<< $line >> file.txt
# 	fi;\
# 	done
#
# 
# For getting templates total number
#sed -e '/\/\/.*/d' -e '/^\s*$/d' -E -e '/^\(/d' ./templates/writeReturn.txt | wc -l
