instance creation
string: aString constantPool: constantPool
	^ constantPool addUnique: (self new string: aString)