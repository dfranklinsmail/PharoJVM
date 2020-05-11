initialization
initialize
	accessFlags := ACC_SUPER.
	constantPool := JavaConstantPool new.
	interfaces := JavaCollection new.
	fields := JavaCollection new.
	methods := JavaCollection new.
	attributes := JavaCollection new.
	readCode := false.

