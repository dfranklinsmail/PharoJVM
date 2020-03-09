private
makeInstanceVariables: aCollection kind: aSymbol
	^ aCollection collect: [: name |
		JavaIdentifier new name: name;type: (self perform: aSymbol); yourself
	]