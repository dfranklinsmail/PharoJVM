input/output
asByteArray
	^ ByteArray streamContents: [ : s | self outputOn: s ]