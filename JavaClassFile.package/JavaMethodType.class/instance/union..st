sets support
union: other
	| otherRoot |
	self == other ifTrue: [ ^ super union: other ].
	other isWildWildType ifTrue: [ ^ super union: other ].
	otherRoot := other find.
	resultType union: otherRoot resultType.
	self parameterTypes with: otherRoot parameterTypes do: [: sParam : oParam |
		sParam union: oParam
	]