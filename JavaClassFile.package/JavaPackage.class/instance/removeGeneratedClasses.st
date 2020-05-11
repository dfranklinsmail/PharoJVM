initialize-release
removeGeneratedClasses
	dict keysAndValuesDo: [: key : value |
		(value isKindOf: JavaPackage) ifTrue: [
			value removeGeneratedClasses
		] ifFalse: [
			value class = JavaClass ifTrue: [
				dict removeKey: key
		]]
	].
