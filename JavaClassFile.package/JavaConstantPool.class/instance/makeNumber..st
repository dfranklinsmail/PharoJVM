instance creation
makeNumber: aNumber
	aNumber isInteger ifTrue: [
		aNumber >= (2 raisedTo: 31) ifTrue: [ ^ self makeLong: aNumber ].
		aNumber < (2 raisedTo: 31) negated ifTrue: [ ^ self makeLong: aNumber ].
		^ self makeInteger: aNumber
	].
	aNumber isIEEEFloat ifTrue: [
		^ self makeFloat: aNumber
	] ifFalse: [
		^ self makeDouble: aNumber
	]