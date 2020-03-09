parsing
parseExpression
	| exp msg start val |
	start := self skipWhitespace.
	exp := self parseExpressionBinary.
	self skipWhitespace.
	(exp isIdentifier and: [ source peek = $: ]) ifTrue: [
		source next.
		source peek = $= ifFalse: [ self error: 'incomplete assignment' ].
		source next.
		val := self parseExpression.
		^ (JavaAssignment new target: exp value: val)
			start: start
			end: val end
	].
	(msg := self parseMessageWith: #parseExpressionBinary) ifNotNil: [
		exp := (JavaSend new target: exp messages: msg)
				start: start
				end: msg end
	].
	exp isSend ifTrue: [
		[
			self skipWhitespace.
			source peek = $;
		] whileTrue: [
			source next.
			(msg := self parseMessageWith: #parseExpressionBinary) ifNil: [ self error: 'no message after ;'].
			exp addMessage: msg;
					end: msg end		
	]].
	^ exp