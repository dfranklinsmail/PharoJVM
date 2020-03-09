type inference
visitClassVM: aJavaVMClass
	| classType |
	^ typeMap at: aJavaVMClass ifAbsentPut: [
		self withScope: JavaScope new do:[
			classType := JavaClassType withClass: aJavaVMClass.
			classType instanceType javaClass: aJavaVMClass.
			aJavaVMClass javaSuperclass ifNotNil: [: jSuper | | jSuperType |
				jSuperType := jSuper acceptVisitor: self.
				classType superclass: jSuperType.
				classType instanceType superclass: jSuperType instanceType.
			].
			classType methodTypes: (
				self methodsFrom: aJavaVMClass classMethods fields: aJavaVMClass classFields).
			classType instanceType methodTypes: (
				self methodsFrom: aJavaVMClass instanceMethods fields: aJavaVMClass instanceFields).
			classType
	]]