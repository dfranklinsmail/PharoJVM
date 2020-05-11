input/output
parseClass: aJavaVMClass from: s
	| minor major |
	self assert: s uint32 = 16rCAFEBABE.
	minor := s uint16.
	major := s uint16.
	self assert: (major < 52 or: [ major = 52 and: minor <= 0 ]).
	constantPool readFrom: s.
	accessFlags := s uint16.
	thisClass := self cpIndexFrom: s.
	superClass := self cpIndexFrom: s.
	self readInterfacesFrom: s.
	self readFieldsFrom: s.
	self readMethodsFrom: s.
	self readAttributesFrom: s to: attributes.
	aJavaVMClass constantPool: constantPool.
	aJavaVMClass interfaces: interfaces.
	aJavaVMClass fields: fields.
	aJavaVMClass methods: methods.
	Transcript show: aJavaVMClass asString;cr.

