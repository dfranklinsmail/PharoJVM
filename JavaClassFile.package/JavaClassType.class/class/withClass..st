instance creation
withClass: aJavaVMClass 
	^ aJavaVMClass type ifNil: [ aJavaVMClass type: (self new javaClass: aJavaVMClass) ]