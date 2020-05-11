testing
testMain
	self assert: (parser on: 'main: anArrayOfString
	System out println: ''Hello Bar''.
	^ void';parseMethod:true) equals: (
		JavaMethod new
			header: (JavaMessage new
								selector: 'main:' arguments: (OrderedCollection with: ((JavaIdentifier named: 'anArrayOfString') start: 7 end: 21));
								start: 1 end: 21);
			instanceSide: true;
			body: (OrderedCollection
				with: (JavaSend new
							target: (JavaSend new
								target: ((JavaIdentifier named: 'System') start: 24 end: 29)
								messages: ((JavaMessage new selector: 'out' arguments: (OrderedCollection new)) start: 31 end: 33);
								start: 24 end:33)
							messages: (JavaMessage new
								selector: 'println:' arguments: (
									OrderedCollection with: ((JavaString value: 'Hello Bar') start: 44 end: 54));
								start: 35 end: 54);
							start: 24 end: 54)
				with: (JavaReturn new
								with: ((JavaIdentifier named: 'void') start: 60 end: 63);
								start: 58 end: 63));
		start: 1 end: 63)