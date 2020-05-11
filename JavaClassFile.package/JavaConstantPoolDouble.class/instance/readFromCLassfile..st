reading
readFromCLassfile: s
	| high |
	high := s uint32.
	self value: (self parseFloat: 11 high: high low: s uint32).
