reading
parseFloat: exponentBits high: high low: low
	| sign exponentShift temp exponent mantissa one |
	exponentShift := 31 - exponentBits.
	sign := high bitShift: -31.
	temp := high - (sign bitShift: 31).
	exponent := temp bitShift: exponentShift negated.
	mantissa := temp - (exponent bitShift: exponentShift).
	(exponent + 1 bitShift: exponentBits negated) = 0 ifTrue: [
		one := 1 bitShift: exponentShift.
		low > 0 ifTrue: [
			one := one bitShift: 32.
			mantissa := (mantissa bitShift: 32) + low.
		].
		mantissa := mantissa + one / one asFloat.
		mantissa := mantissa * (2.0 raisedTo: exponent - ( exponentBits = 8 ifTrue: 127 ifFalse: 1023))
	] ifFalse: [
		(mantissa = 0 and: low = 0) ifTrue: [ mantissa = Float infinity ] ifFalse: [ ^ Float nan ]
	].
	sign = 0 ifTrue: [ ^ mantissa ].
	^ mantissa negated