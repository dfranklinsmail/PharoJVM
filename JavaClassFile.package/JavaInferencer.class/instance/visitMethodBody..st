type inference
visitMethodBody: aJavaMethod 
	| body |
	self withScope: JavaScope new do: [
		body := aJavaMethod body.
		body withIndexDo: [: statement : idx |
			statement defaultType: (idx = body size ifTrue: [
					aJavaMethod type resultType
				] ifFalse: [
					JavaWildForgetfulType new
					]).
			statement acceptVisitor: self.
	]].
