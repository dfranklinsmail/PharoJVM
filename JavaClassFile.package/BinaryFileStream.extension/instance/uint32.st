*JavaClassFile-Stream
uint32
	"Read the next unsigned, 32-bit integer on this (binary) stream."

	| b2 b3 b4 |
	b4 := self next.
	b3 := self next.
	b2 := self next.
	^ Integer byte1: self next byte2: b2 byte3: b3 byte4: b4