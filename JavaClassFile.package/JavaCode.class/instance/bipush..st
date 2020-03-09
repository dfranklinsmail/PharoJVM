instruction adding
bipush: anInteger
	self pushInstruction: 16.
	self constByte: anInteger