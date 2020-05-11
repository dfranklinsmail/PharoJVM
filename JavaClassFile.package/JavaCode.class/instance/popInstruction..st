internal
popInstruction: opcode
	stack := stack - 1.
	code nextPut: opcode.
