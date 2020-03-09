testing
isStatic
	^ (accessFlags bitAnd: ACC_STATIC) ~= 0