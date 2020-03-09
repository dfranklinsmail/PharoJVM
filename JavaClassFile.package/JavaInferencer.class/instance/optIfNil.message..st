optimizing
optIfNil: aJavaSend message: message
	" all of the ifNil:/ifNotNil: family"
	| selector arguments result |
	selector := message selector.
	arguments := (OrderedCollection new: 3) addAll: message arguments;yourself.
	arguments size = 1 ifTrue: [ arguments add: aJavaSend target ].
	(selector beginsWith: 'ifNil:') ifTrue: [ arguments addLast: arguments removeFirst ].
	result := aJavaSend defaultTypeOrWild.
	self unify: (aJavaSend target acceptVisitor: self) with: JavaType pointer.
	arguments do: [: each |
		each acceptVisitor: self.
		self unify: each resultType with: result.
	].
	^ aJavaSend type: result