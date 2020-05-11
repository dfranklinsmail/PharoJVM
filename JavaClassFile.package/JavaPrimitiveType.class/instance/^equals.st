comparing
= other
	other isMessageTargetType ifTrue: [ ^ other = self ].
	^ super = other