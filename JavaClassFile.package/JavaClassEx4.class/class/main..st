accessing
main: anArrayOfString
	anArrayOfString isEmpty ifTrue: [
		System out println: 'Hello World'.
	] ifFalse: [
		System out print: 'Hello ';println: (anArrayOfString at: 1).
	].
	^ void