resolution
resolveMethods
	methodMap keysAndValuesDo: [: key :value |
		commonClassType methodsMatching: value do: [: method |
			value union: method
		].
		interfaces do: [: aJavaClassType |
			aJavaClassType methodsMatching: value do: [: method |
				value union: method
			].
		].
	].
