structure
if: test and: testBlock do: aBlock
	done ifFalse: [
		((test cull: key) and: [testBlock cull: key]) ifTrue: [
			result := aBlock cull: key.
			done := true]].
	^ result