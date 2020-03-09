printing
printOn: aStream
"	messageType printOn: aStream."
	aStream
		<< messageType;
		<< '->';
		<< resultType.
