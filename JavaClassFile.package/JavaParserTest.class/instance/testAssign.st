testing
testAssign
	self assert: (parser on: 'asn: anInteger
	x := 42.
	^ anInteger';parseMethod:false) equals: (
		JavaMethod new
			header: (JavaMessage new
								selector: 'asn:' arguments: (OrderedCollection with: ((JavaIdentifier named: 'anInteger') start: 6 end: 14));
								start: 1 end: 14);
			body: (OrderedCollection
				with: (JavaAssignment new
					target: ((JavaIdentifier named: 'x') start: 17 end: 17) value: ((JavaNumber value: 42) start: 22 end: 23);
					start: 17 end: 23)
				with: (JavaReturn new
								with: ((JavaIdentifier named: 'anInteger') start: 29 end: 37);
								start: 27 end: 37));
			start: 1 end: 37)