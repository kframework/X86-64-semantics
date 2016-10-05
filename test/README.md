### Run Commands
- make -s 
- make -s clean

### Testcase Features
  
| Testcase 	| Specifics 	| Feature Tested 	| Comment |
|:--------:	|:-----------------------------------------------------------------------------------------------------:	|:------------------------:	|:------------------------:	| 
| test_1 	| func with many control flow paths 	| Stack height calculation 	| |
| test_2 	| Passing scalar argumets on stack 	| Parent stack access using offsets from current stack 	| |
| test_2_1 	| Minimal version of test_2  |  	|  Used for debugging |
| test_3 	| Passing parent stack pointer of an array as argumet to a function in registers  | Parent stack access using direct pointer to parent stack 	| Here the pointer is passed on in register; To access that there is a register load and we dont modify register loads | |
| test_4 	| Passing parent stack pointer of an array as argumet to a function on stack  | Parent stack access using offset to parent stack 	| Here the pointer is passed on in stack; To access that there is offset calculation from current stack. ||
| test_5 	| Passing a heap pointer of an array as argumet to a function in registers  | How heap pointers are distinguised from stack pointers 	| Here the pointer is passed on in register; To access that there is a register load and we dont modify register loads |
| test_6 	| Passing a heap pointer of an array as argumet to a function on stack registers  | How heap pointers are distinguised from stack pointers 	| Here the pointer is passed on stack; To access that there is offset calculation from current stack. Once the heap pointer is obtained it must be loaded as is. |
| test_7 	| mixed test 2-6  | 	| |
| test_8 - test_25 	| testcases owned from mcsema testsuite | 	| |
| test_26 	| Passing a structure argument (stack var, stack pointer, dynamically allocated pointer) to a function via stack   and returnng a struct          | Parent stack access 	|  |
| test_27 	|  Passing a structure argument (stack var, stack pointer, dynamically allocated pointer) to a function via stack and returning pointer to struct | Parent stack access 	|  |
