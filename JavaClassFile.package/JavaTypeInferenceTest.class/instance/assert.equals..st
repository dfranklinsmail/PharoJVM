testing
assert: anObject equals: a2ndObject
	a2ndObject isSequenceable ifTrue: [ anObject isSequenceable ifFalse: [ ^ 	super assert: anObject asOrderedCollection equals: a2ndObject asOrderedCollection ]].
	^ super assert: anObject equals: a2ndObject