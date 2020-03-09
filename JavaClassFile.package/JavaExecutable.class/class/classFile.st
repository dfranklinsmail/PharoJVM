accessing
classFile
	^ self inferred collect: [: aJavaClass | JavaClassFile codeGenFrom: aJavaClass ]