testing
testPackage
	JavaPackage resetTypes.
	self assert: (JavaPackage classLookup: 'java/lang/Object') asString equals: 'a JavaVMClass(java/lang/Object)'.
	self assert: (JavaPackage classLookup: 'java/lang/Object') equals: java lang Object.
