structure
class: val do: aBlock
	done ifFalse: [
		key class = val ifTrue: [
			result := aBlock cull: key.
			done := true]].
	^ result