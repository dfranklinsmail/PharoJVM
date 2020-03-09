enumerating
detect: aBlock ifFound: foundBlock
	(aBlock value: self) ifTrue: [ foundBlock cull: self ].
