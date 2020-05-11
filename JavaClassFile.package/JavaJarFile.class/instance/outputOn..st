input/output
outputOn: s
	| version |
	version := 20.
	contents keysAndValuesDo: [: name : content |
		| flags modTime modDate crc32 extra cType cContent header |
		flags := 0.
		modTime := 0.
		extra := ''.
		crc32 := CRC new
			beCrc32;
			polynome: 16rdebb20e3;
			message: content;
			runRefInRefOut.
		cContent := content.
		cType := 0.
		" try various compressions leaving smallest in cContent and cType "
		header := ByteArray new: 26.
		header unsignedShortAt: 1 put: version.
		header unsignedShortAt: 3 put: flags.
		header unsignedShortAt: 5 put: cType.
		header unsignedShortAt: 7 put: modTime.
		header unsignedShortAt: 9 put: modDate.
		header unsignedLongAt: 11 put: crc32.
		header unsignedLongAt: 15 put: cContent size.
		header unsignedLongAt: 19 put: content size.
		header unsignedShortAt: 23 put: name size.
		header unsignedShortAt: 25 put: extra size.
		s
			nextPut: 16r50;
			nextPut: 16r4B;
			nextPut: 16r03;
			nextPut: 16r04;
			nextPut: 16r14;
			nextPutAll: header;
			nextPutAll: name asByteArray;
			nextPutAll: extra asByteArray;
			nextPutAll: cContent asByteArray.
		]