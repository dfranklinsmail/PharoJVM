printing
justNameOn: aStream
	javaPackage printOn: aStream.
	javaName ifNotNil: [ aStream nextPutAll: javaName ].
