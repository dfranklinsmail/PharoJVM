loading
ref: anObject
	anObject isInteger ifFalse: [ ^ anObject ].
	anObject > array size ifTrue: [
		^ anObject
	] ifFalse: [
		^ array at: anObject.
	].