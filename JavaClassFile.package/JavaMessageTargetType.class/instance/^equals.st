comparing
= other
	classTypes size = 1 ifTrue: [ ^ commonClassType = other ].
	self signal: #incomplete.
