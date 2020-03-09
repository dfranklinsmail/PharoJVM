printing
printOn: aStream
	aStream
		<< 'java:';
		<< self typeName