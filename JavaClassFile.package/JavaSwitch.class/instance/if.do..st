structure
if: aBoolean do: aBlock
	done ifFalse: [
		(aBoolean cull: key) ifTrue: [
			result := aBlock cull: key.
			done := true]].
	^ result