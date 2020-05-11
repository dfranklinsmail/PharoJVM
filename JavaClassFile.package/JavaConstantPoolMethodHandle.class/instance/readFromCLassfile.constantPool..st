reading
readFromCLassfile: s constantPool: aJavaConstantPool
	kind := s next.
	super readFromCLassfile: s constantPool: aJavaConstantPool.
