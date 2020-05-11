instruction adding
invokeinterface: aJavaConstantPoolElement constant: anObject1
	code nextPut: 185.
	self
		cpIndex: aJavaConstantPoolElement;
		constByte: anObject1;
		constByte: 0