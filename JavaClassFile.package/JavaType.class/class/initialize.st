class initialization
initialize
	JavaString := nil.
	JavaArray := JavaPrimitiveType new type: #array:.
	JavaBoolean := JavaPrimitiveType new type: #boolean.
	JavaByte := JavaPrimitiveIntegerType new type: #byte.
	JavaChar := JavaPrimitiveType new type: #char.
	JavaDouble := JavaPrimitiveFloatType new type: #double.
	JavaFloat := JavaPrimitiveFloatType new type: #float.
	JavaInteger := JavaPrimitiveIntegerType new type: #int.
	JavaLong := JavaPrimitiveIntegerType new type: #long.
	JavaShort := JavaPrimitiveIntegerType new type: #short.
	JavaVoid := JavaPrimitiveType new type: #void.
