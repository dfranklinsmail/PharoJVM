internal
pop3Instruction: opcode
	stack := stack - 3.
	code nextPut: opcode.
