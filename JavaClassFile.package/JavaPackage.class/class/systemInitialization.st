class initialization
systemInitialization
	self classpath do: [: filename |
		(filename endsWith: '.class') ifTrue: [
			filename asFileReference binaryReadStreamDo: [ :stream | 
 			   self loadClass: (filename allButLast: 6) from: stream contents
		]] ifFalse: [
			JavaJarFile classesIn: filename do: [: className : contents |
				self loadClass: className from: contents.
		]]
	]