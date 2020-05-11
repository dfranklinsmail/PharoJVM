testing
methodsMatching: aJavaMethodType do: aBlock
	self methodTypes detect: [: methodType |
			methodType isUnifiableWith: aJavaMethodType
		] ifFound: aBlock.
