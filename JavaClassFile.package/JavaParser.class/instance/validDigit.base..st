parsing
validDigit: aCharacter base: base
	| v |
	v := '0123456789abcdefghijklmnopqrstuvwxyz' indexOf: aCharacter.
	v > base ifTrue: [ ^ -1 ].
	^ v - 1