instance creation
makeString: aString
	^ JavaConstantPoolString string: aString constantPool: self