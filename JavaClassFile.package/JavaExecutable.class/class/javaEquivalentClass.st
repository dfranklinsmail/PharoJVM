accessing
javaEquivalentClass
	^ self = JavaExecutable ifTrue: [
		JavaPackage classLookup: 'java/lang/Object'
	] ifFalse: [
		JavaPackage classLookup: self name constructor: [: component : package | JavaClass name: component package: package]
	]