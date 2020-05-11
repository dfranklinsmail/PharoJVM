printing
printOn: s
	super printOn: s.
	s nextPut: $(.
	ref1 printOn: s.
	s nextPut: $..
	ref2 printOn: s.
	s nextPut: $).
