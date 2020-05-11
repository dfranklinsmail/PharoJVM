type inference
findMessageTypeVM: aJavaType 
	(self isInstance ifTrue: [ javaClass instanceMethods ] ifFalse: [ javaClass classMethods ])
		detect: [: method |
			aJavaType parameterTypes = method parameterTypes
				and: [ aJavaType resultType isUnifiableWith: method resultType]]
		ifFound: [: method |
			^ method
	].
	aJavaType parameterTypes isEmpty ifTrue: [
		(self isInstance ifTrue: [ javaClass instanceFields ] ifFalse: [ javaClass classFields ]) do: [: field |
			(aJavaType resultType isUnifiableWith: field resultType) ifTrue: [
				^ field
			] ifFalse: [
				^ nil
			]
	]].
	^ nil