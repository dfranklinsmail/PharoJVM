type inference
visitMethod: aJavaMethod 
	| type smalltalkName |
	^ aJavaMethod type ifNil: [
		self withScope: JavaScope new do: [
			aJavaMethod scope: scope.
			scope bind: (aJavaMethod header arguments collect: #name) to: (aJavaMethod header arguments collect: [:x| self defaultParameter]).
			scope bind: aJavaMethod locals to: (aJavaMethod locals collect: [:x| self defaultLocalVar]).
			type := aJavaMethod type: (aJavaMethod header acceptVisitor: self) asMethodType.
			smalltalkName := aJavaMethod type smalltalkName.
			smalltalkName = #initialize ifTrue: [
				aJavaMethod header javaName: (aJavaMethod instanceSide ifTrue: [ '<init>' ] ifFalse: [ '<clinit>' ]).
				self unify: aJavaMethod resultType with: JavaType void
			].
			smalltalkName = #main: & aJavaMethod instanceSide not ifTrue: [
				type parameterAndResultType with: (JavaType parse: '([Ljava/lang/String;)V') do: [: t1 : t2 |
					self unify: t1 with: t2.
				]
		]].

		type
	]