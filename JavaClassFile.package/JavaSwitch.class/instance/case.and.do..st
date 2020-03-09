structure
case: val and: testBlock do: aBlock
	done ifFalse: [
		(key = val and: [testBlock cull: key]) ifTrue: [
			result := aBlock cull: key.
			done := true]].
	^ result