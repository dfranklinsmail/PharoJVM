accessing
fields: aJavaCollection 
	aJavaCollection do: [ : field |
		field isStatic ifTrue: [
			self classField: field
		] ifFalse: [
			self instanceField: field
	]].
