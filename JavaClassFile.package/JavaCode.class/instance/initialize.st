initialization
initialize
	super initialize.
	maxStack := 0.
	stack := 0.
	maxLocals := 0.
	instanceSide := false.
	doWide := false.
	code := WriteStream with: ByteArray new.
	exceptions := JavaCollection new.
	attributes := JavaCollection new.
