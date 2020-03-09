reading
readFromCLassfile: s
	self value: (self parseFloat: 8 high: s uint32 low: 0).
