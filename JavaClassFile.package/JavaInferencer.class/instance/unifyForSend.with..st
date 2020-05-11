private
unifyForSend: aJavaContainer with: messageType
	| objectType methodType |
	objectType := aJavaContainer asMessageTargetType: self.
	methodType := messageType asMethodType.
	self checkUnifiable: objectType with: methodType.
	^ objectType addMethodType: methodType