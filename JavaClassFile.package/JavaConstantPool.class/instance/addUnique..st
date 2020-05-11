associating
addUnique: poolElement
	| idx |
	idx := array indexOf: poolElement.
	idx = 0 ifTrue: [
		array add: poolElement.
		idx := array size.
		poolElement cpIndex: idx
	].
	^ array at: idx