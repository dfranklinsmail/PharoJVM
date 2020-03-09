reading
readFromCLassfile: s
	| bytes |
	bytes := s next: s uint16.
	bytes = #[16rc0 16r80] ifTrue: [ bytes := #[0] ].
	self cpString: (
			[ bytes utf8Decoded ] on: Error do: [ nil ]
		).
