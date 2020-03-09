compiling
compileMethod: aJavaMethod
	| javaName |
	javaName := aJavaMethod type name.
	aJavaMethod named: javaName type: aJavaMethod type asJavaTypeString.
	code := aJavaMethod code.
	aJavaMethod body do: [: statement |
		statement compile: self.
	].