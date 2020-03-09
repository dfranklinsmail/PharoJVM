*JavaClassFile-Stream
uint16
	"Read the next unsigned, 16-bit integer on this (binary) stream."

	| b2 |
	b2 := self next.
	^ Integer byte1: self next byte2: b2 byte3: 0 byte4: 0