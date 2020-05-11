accessing
main: anArrayOfString
	| size |
	size := anArrayOfString size.
	anArrayOfString isEmpty ifTrue: [
		Transcript show: 'Hello World';cr.
	] ifFalse: [ 
		anArrayOfString do: [ : arg |
			| length |
			length := arg size + size.
			Transcript show: 'Hello ';show: arg;show: $ ;show: length;cr.
	]].
	^ void