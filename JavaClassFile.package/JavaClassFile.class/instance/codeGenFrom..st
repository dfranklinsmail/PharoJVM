compiling
codeGenFrom: aJavaClass
	self thisClass: aJavaClass name.
	self superClass: aJavaClass javaSuperclass.
	aJavaClass classMethods do: [: aJavaMethod |
		aJavaMethod
			constantPool: constantPool;
			instanceSide: false.
		JavaMethodCompiler compileMethod: aJavaMethod.
	].
	aJavaClass instanceMethods do: [: aJavaMethod |
		aJavaMethod
			constantPool: constantPool;
			instanceSide: true.
		JavaMethodCompiler compileMethod: aJavaMethod.
	].
