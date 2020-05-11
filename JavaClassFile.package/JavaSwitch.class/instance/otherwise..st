structure
otherwise: aBlock
	done ifFalse: [
		result := aBlock cull: key.
		done := true].
	^ result