internal
pop2Instruction: opcode
	stack := stack - 2.
	code nextPut: opcode.
