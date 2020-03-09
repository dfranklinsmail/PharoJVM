printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< ' ';
		<< selector;
		<< $(.
	arguments do: [: each | each printOn: aStream ] separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $).
