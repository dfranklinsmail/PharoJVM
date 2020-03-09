running
setUp
	super setUp.
	JavaPackage removeGeneratedClasses.
	inferencer := JavaInferencer new.
