loading
loadClass: className from: aByteArray 
	^ (self classLookup: className) loadClassDefinition: aByteArray; yourself