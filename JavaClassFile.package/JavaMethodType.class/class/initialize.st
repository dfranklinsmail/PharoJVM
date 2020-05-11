class initialization
initialize
	SpecialMessageTargets := Dictionary new
		at: #ifTrue:ifFalse: put: JavaType boolean;
		at: #ifFalse:ifTrue: put: JavaType boolean;
		at: #ifTrue: put: JavaType boolean;
		at: #ifFalse: put: JavaType boolean;
		yourself.
