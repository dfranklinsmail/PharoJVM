type inference
isUnifiableWith: other
	self == other ifTrue: [ ^ true ].
	other isWildWildType ifTrue: [ ^ true ].
	other isMessageTargetType ifTrue: [ ^ other isUnifiableWith: self ].
	other isMethodType == self isMethodType ifFalse: [ ^ false ].
	self name = other name ifFalse: [ ^ false ].
	(self resultType isUnifiableWith: other resultType) ifFalse: [ ^ false ].
	self parameterTypes size = other parameterTypes size ifFalse: [ ^ false ].
	self parameterTypes with: other parameterTypes do: [: sParam : oParam |
		(sParam isUnifiableWith: oParam) ifFalse: [ ^ false ]
	].
	^ true