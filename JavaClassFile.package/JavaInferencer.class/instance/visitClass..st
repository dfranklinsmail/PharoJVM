type inference
visitClass: aJavaClass 
	| classType classVars |
	^ typeMap at: aJavaClass ifAbsentPut: [
		self withScope: JavaPackage default do:[
			classType := JavaClassType new.
			classType methodTypes: (aJavaClass classMethods collect: [: m | m acceptVisitor: self]).
			classType instanceType methodTypes: (aJavaClass instanceMethods collect: [: m | m acceptVisitor: self]).
			classVars := self makeInstanceVariables: aJavaClass classVars kind: #defaultClassVar.
			classType scope: (JavaClassScope with: classVars, (self makeInstanceVariables: aJavaClass classFields kind: #defaultClassInstanceVar)).
			classType instanceType scope: (JavaClassScope with: classVars, (self makeInstanceVariables: aJavaClass instanceFields kind: #defaultInstanceVar)).
			classType javaClass: aJavaClass.
			classType instanceType javaClass: aJavaClass.
			aJavaClass type: classType.
			aJavaClass javaSuperclass ifNotNil: [: jSuper | | jSuperType |
				jSuperType := jSuper acceptVisitor: self.
				classType superclass: jSuperType.
				classType instanceType superclass: jSuperType instanceType.
			].
			self withScope: classType scope do: [
				aJavaClass classMethods do: [: m | self visitMethodBody: m]].
			self withScope: classType instanceType scope do: [
				aJavaClass instanceMethods do: [: m | self visitMethodBody: m]].
			classType
	]]