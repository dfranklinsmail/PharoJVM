class factory
extract: aCollection into: aJavaVMClass
	^ self new
		parseClass: aJavaVMClass from: aCollection readStream;
		yourself