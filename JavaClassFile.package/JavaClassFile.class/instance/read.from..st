loading
read: fieldOrMethod from: s
	| fom |
	fom := fieldOrMethod new
		accessFlags: s uint16;
		name: (constantPool at: s uint16);
		type: (constantPool at: s uint16).
	self readAttributesFrom: s to: fom attributes.
	^ fom
