initialize-release
addBinding: key value: value
	(key indexOf: $$ startingAt: 1) = 0 ifTrue: [
		self classPool at: key put: value.
	].
