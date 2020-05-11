type inference
rangeCheck: other
	typeName = #float ifTrue: [ ^ other rangeCheck: FloatMin to: FloatMax ].
	^ true