*JavaClassFile
javaEquivalentClass
	^ self = Object ifTrue: [JavaPackage classLookup: 'java/lang/Object'] ifFalse: self