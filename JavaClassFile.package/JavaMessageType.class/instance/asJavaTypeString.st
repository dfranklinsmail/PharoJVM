converting
asJavaTypeString
	^ '(', ('' join: (parameterTypes collect: #asJavaTypeString)), ')'