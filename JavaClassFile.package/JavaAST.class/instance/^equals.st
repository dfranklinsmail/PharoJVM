comparing
= anObject 
	self == anObject ifTrue: [ ^ true ].
	self species = anObject species ifFalse: [^false].
	^ self instVarNamesForEqualityComparison allSatisfy: [:ivName|
		(self instVarNamed: ivName) = (anObject instVarNamed: ivName)]