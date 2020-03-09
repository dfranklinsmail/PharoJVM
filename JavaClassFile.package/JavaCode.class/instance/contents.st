input/output
contents
	^ ByteArray streamContents: [: s |
  			s int16: maxStack.
			s int16: maxLocals.
			s int32: code size.
			s nextPutAll: code contents.
			exceptions outputOn: s.
			attributes outputOn: s.
		]