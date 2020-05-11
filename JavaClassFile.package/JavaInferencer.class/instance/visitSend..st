type inference
visitSend: aJavaSend
	self halt.
	^ aJavaSend type ifNil: [ | lastType target |
		target := (aJavaSend target acceptVisitor: self) asMessageTargetType: self.
		aJavaSend messages do: [: message |
			message acceptVisitor: self.
			lastType :=  target receiveMessage: message type asMethodType
		].
		aJavaSend type: lastType
	]