input/output
contents
	^ ByteArray streamContents: [: s |
			s int16: array size.
			array do: [: assoc |
				s int16: assoc value.
				s int16: assoc key.
			]
		]