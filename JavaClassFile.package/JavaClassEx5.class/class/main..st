accessing
main: anArrayOfString
	anArrayOfString isEmpty ifTrue: [
		Transcript show: 'Hello World';cr.
	] ifFalse: [
		Transcript show: 'Hello ';show: (anArrayOfString at: 1);cr.
	].
	^ void