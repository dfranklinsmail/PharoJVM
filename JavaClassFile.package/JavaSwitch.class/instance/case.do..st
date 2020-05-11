structure
case: val do: aBlock
	done ifFalse: [
		key = val ifTrue: [
			result := aBlock cull: key.
			done := true]].
	^ result