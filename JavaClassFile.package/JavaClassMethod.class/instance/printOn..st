printing
printOn: s
	s nextPutAll: name asString.
	s nextPut: $:.
	s nextPutAll: type asString.
