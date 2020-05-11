printing
printOn: aStream
	enclosingScope ifNotNil: [
		enclosingScope printOn: aStream.
	].
	scopeName ifNotNil: [
		aStream << scopeName; << $/.
	].
