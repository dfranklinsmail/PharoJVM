instance creation
makeLiteral: aString
	^ JavaConstantPoolUtf8 string: aString constantPool: self