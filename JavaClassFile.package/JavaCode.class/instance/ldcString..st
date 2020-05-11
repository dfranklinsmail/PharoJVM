instruction adding
ldcString: aString 
	self ldc: (constantPool makeString: aString)