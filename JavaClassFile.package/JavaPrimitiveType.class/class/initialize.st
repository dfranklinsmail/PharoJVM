class initialization
initialize
	TypeMap := Dictionary new
		at: #int put: 'I';
		at: #byte put: 'B';
		at: #short put: 'S';
		at: #long put: 'L';
		at: #boolean put: 'Z';
		at: #double put: 'D';
		at: #float put: 'F';
		at: #void put: 'V';
		yourself.
	SupportedMethods := Dictionary new
		at: #int put: (JavaMethodList new
			type: JavaType int;
			f: #*;
			f: #+;
			f: #-;
			f: #/;
			yourself);
		at: #byte put: (JavaMethodList new);
		at: #short put: (JavaMethodList new);
		at: #long put: (JavaMethodList new);
		at: #boolean put: (JavaMethodList new
			type: JavaWildOrForgetfulType;
			fb: #ifTrue:ifFalse:;
			fb: #ifFalse:ifTrue:;
			type: JavaWildPointerOrForgetfulType;
			fb: #ifTrue:;
			fb: #ifFalse:;
			type: JavaType boolean;
			f: #not;
			f: #|;
			f: #&;
			fb: #and:;
			fb: #or:;
			yourself);
		at: #double put: (JavaMethodList new);
		at: #float put: (JavaMethodList new);
		at: #void put: (JavaMethodList new);
		yourself.
