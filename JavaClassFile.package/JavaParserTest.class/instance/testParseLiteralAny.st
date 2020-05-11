testing
testParseLiteralAny
	self assert: ((parser on: '#(abc+34)'; parseLiteralAny) value collect: #value)
								equals:  #(abc+34) asOrderedCollection.
	self assert: ((parser on: '#(abc:def:jkl,:=mno:=+%34--jkl)'; parseLiteralAny) value collect: #value)
								equals:  #(abc:def:jkl,:=mno:=+%34--jkl) asOrderedCollection.
