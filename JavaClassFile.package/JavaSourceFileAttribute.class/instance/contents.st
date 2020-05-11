input/output
contents
	^ ByteArray streamContents: [: s | sourceFileName cpIndexOn: s ]