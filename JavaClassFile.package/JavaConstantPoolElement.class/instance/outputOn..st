input/output
outputOn: aStream
	aStream nextPut: self tag.
	self infoOn: aStream.
