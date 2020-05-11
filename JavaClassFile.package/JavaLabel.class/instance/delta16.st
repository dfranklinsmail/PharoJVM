input/output
delta16
	position ifNil: [
		(forward ifNil: [forward := OrderedCollection new]) add: code position.
		code int16: 0.
		^ self
	].
	self writeDelta16.
