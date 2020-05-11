class initialization
initialize
	default := nil.
	self default.
	(self classLookup: 'java/lang/' constructor: nil) setGlobalNamespace.
	self classLookup: 'java/lang/Object'.
	self systemInitialization.
	self classLookup: 'java/io/PrintStream'.
	self classLookup: 'java/lang/System'.
	(self classLookup: 'java/lang/String') isInitialized ifNil: [
		self standAloneInitialization
	].
