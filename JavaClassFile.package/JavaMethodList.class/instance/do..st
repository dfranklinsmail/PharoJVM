enumerating
do: aBlock
	methodMap valuesDo: [: v |
		v isCollection ifTrue: [ v do: aBlock ] ifFalse: [ aBlock value: v ]
	].
