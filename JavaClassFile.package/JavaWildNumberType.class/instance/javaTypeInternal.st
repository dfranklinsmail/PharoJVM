private
javaTypeInternal
	self isFloat ifTrue: [		(JavaType float rangeCheck: self) ifTrue: [ ^ 'F' ].
		^ 'D'
	].
	(JavaType byte rangeCheck: self) ifTrue: [ ^ 'B' ].
	(JavaType short rangeCheck: self) ifTrue: [ ^ 'S' ].
	(JavaType int rangeCheck: self) ifTrue: [ ^ 'I' ].
	^ 'L'