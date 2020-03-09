accessing
methods: aJavaCollection 
	aJavaCollection do: [ : method |
		method isStatic ifTrue: [
			self classMethod: method
		] ifFalse: [
			self instanceMethod: method
	]].
