instance creation
from: aJavaConstantPoolUtf8 
	^ (AttributeMap at: aJavaConstantPoolUtf8 asString ifAbsent: nil) ifNil: [
				self new name: aJavaConstantPoolUtf8 asString
			] ifNotNil: [: class |
				class new
			]