type inference
isEquivalentTo: other
	self == other ifTrue: [ ^ true ].
	other class == self class ifFalse: [ ^ false ].
	self selector = other selector ifFalse: [ ^ false ].
	self parameterTypes size = other parameterTypes size ifFalse: [ ^ false ].
	self parameterTypes with: other parameterTypes do: [: sParam : oParam |
		sParam = oParam ifFalse: [ ^ false ]
	].
	^ true