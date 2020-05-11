instance creation
classLookup: aString
	^ self classLookup: aString constructor: [: component : package | JavaVMClass name: component package: package]