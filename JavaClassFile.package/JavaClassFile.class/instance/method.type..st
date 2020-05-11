constructor
method: aString type: aString2 
	^ self methodAppend: (JavaMethod new constantPool: constantPool;named: aString type: aString2)