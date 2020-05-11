instance creation
value: anObject constantPool: constantPool
	^ constantPool addUnique: (self new value: anObject)