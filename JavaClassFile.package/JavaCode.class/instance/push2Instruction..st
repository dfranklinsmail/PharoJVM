internal
push2Instruction: opcode
	stack := stack + 2.
	maxStack := maxStack max: stack.
	code nextPut: opcode.
