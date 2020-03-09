converting
asJavaTypeString
	^ String streamContents: [: s |
			s nextPut: $L.
			javaClass justNameOn: s.
			s nextPut: $;
		]