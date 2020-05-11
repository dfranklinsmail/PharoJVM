reading
readFrom: aReadStream cpIndex: anInteger pool: pool
	^ self new
		cpIndex: anInteger;
		readFromCLassfile: aReadStream constantPool: pool;
		yourself