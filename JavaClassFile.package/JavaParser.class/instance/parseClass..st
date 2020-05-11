parsing
parseClass: aClass
	javaClass := (JavaPackage classLookup: aClass javaEquivalentClass name constructor: [: component : package | JavaClass name: component package: package])
			javaSuperclass: aClass superclass javaEquivalentClass.
	aClass methodDict do: [: aMethod |
		javaClass instanceMethod: (self on: aMethod asString;parseMethod: true)].
	aClass class methodDict do: [: aMethod |
		javaClass classMethod: (self on: aMethod asString;parseMethod: false)].
	javaClass classVars: aClass classVarNames.
	javaClass instanceFields: aClass instVarNames.
	javaClass classFields: aClass class instVarNames.
	^ javaClass