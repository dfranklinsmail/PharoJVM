type inference
rangeCheck: other
	typeName = #byte ifTrue: [ ^ other rangeCheck: -128 to: 127 ].
	typeName = #short ifTrue: [ ^ other rangeCheck: -32768 to: 32767 ].
	typeName = #int ifTrue: [ ^ other rangeCheck: -2147483648 to: 2147483647 ].
	typeName = #long ifTrue: [ ^ other rangeCheck: -9223372036854775808 to: 922337203685477580 ].
	^ false