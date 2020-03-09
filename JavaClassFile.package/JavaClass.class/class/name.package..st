instance creation
name: aString package: aJavaPackage
	| result |
	result := aJavaPackage at: aString ifAbsentPut: [
		seq := (seq ifNil: 0) + 1.
		self new javaName: aString package: aJavaPackage;setSeq: seq.
	].
	result asString = 'java/lang/Object' ifFalse: [
		result javaSuperclass: (JavaPackage classLookup: 'java/lang/Object').
	].
	^ result