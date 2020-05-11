comparing
= other
	(super = other) ifTrue: [ ^ true ].
	other class == self class ifFalse: [ ^ false ].
	container = other container ifFalse: [ ^ false ].
	self parameterTypes size = other parameterTypes size ifFalse: [ ^ false ].
	self parameterTypes with: other parameterTypes do: [: sParam : oParam |
		sParam = oParam ifFalse: [ ^ false ]
	].
	^ true