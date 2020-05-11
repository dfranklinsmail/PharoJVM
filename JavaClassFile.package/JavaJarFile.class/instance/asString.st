input/output
asString
	^ (ByteArray streamContents: [ : s | self outputOn: s ]) asString