instance creation
string: aString constantPool: constantPool
	^ constantPool addUnique: (self new ref1: (JavaConstantPoolUtf8 string: aString constantPool: constantPool))