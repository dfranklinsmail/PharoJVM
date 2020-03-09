instruction adding
checkWide: anInteger
	| alreadyWide |
	alreadyWide := doWide.
	anInteger > 255 ifTrue: [ doWide := true ].
	anInteger < 0 ifTrue: [ doWide := true ].
	alreadyWide ifFalse: [ code nextPut: 196 ].
