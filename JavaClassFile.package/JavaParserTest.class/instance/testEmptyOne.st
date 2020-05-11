testing
testEmptyOne
	self assert: (parser on: 'empty: foo';parseMethod:false) equals: (
		JavaMethod new
			header: (JavaMessage new
								selector: 'empty:' arguments: (OrderedCollection with: ((JavaIdentifier named: 'foo') start: 8 end: 10));
								start: 1 end: 10);
			body: {JavaReturn new};
			start: 1 end: 10)