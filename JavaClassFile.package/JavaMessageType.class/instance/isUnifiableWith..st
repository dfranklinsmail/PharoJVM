type inference
isUnifiableWith: other
	self == other ifTrue: [ ^ true ].
	other isWildWildType ifTrue: [ ^ true ].
	other class == self class ifFalse: [ ^ other isUnifiableWith: self ].
	self selector = other selector ifFalse: [ ^ false ].
	self parameterTypes size = other parameterTypes size ifFalse: [ ^ false ].
	self parameterTypes with: other parameterTypes do: [: sParam : oParam |
		(sParam isUnifiableWith: oParam) ifFalse: [ ^ false ]
	].
	^ true