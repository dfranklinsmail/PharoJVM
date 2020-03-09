testing
assert: anObject equals: a2ndObject
	a2ndObject isArray ifTrue: [ ^ super assert: anObject equals: a2ndObject asOrderedCollection ].
	^ super assert: anObject equals: a2ndObject