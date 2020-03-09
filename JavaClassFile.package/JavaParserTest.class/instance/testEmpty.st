testing
testEmpty
	self assert: (parser on: 'empty';parseMethod:false) equals: (
		JavaMethod new
			header: (JavaMessage new
								selector: 'empty' arguments: #();
								start: 1 end: 5);
			body: {JavaReturn new};
			start: 1 end: 5)