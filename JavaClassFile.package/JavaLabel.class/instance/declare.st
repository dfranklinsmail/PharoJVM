input/output
declare
	position ifNotNil: [ self error: 'label already declared' ].
	position := code position.
	forward ifNotNil: [
		forward do: [: patchPosition |
			code position: patchPosition.
			self writeDelta16.
		].
		code position: position.
		forward := nil.
	]