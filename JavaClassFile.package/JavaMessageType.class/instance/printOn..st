printing
printOn: aStream
	aStream
		<< 'java:';
		<< self name;
		<< $(.
	parameterTypes do: [:element | aStream print: element] separatedBy: [aStream nextPut: $,].
	aStream nextPut: $).
