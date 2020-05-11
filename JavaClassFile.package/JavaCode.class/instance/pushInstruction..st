internal
pushInstruction: opcode
	stack := stack + 1.
	maxStack := maxStack max: stack.
	code nextPut: opcode.
