input/output
outputToFile
	| aStream |
	aStream := File openForWriteFileNamed: (FileSystem workingDirectory / (thisClass asString,'.class')) pathString.
	aStream truncate.
	self outputOn: aStream.
	aStream close.
