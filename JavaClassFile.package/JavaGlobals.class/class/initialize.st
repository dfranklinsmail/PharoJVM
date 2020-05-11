initialize-release
initialize
	| cp |
	cp := self classPool.
	cp keysDo: [: key |
		(#(void) includes: key) ifFalse: [ cp removeKey: key ]
	].
	void := JavaType void.
