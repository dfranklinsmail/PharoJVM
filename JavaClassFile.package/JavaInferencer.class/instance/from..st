instance creation
from: aCollection 
	aCollection do: [: aClass |
		self typeOf: aClass.
	].
	self resolveMessageTargets.
	^ aCollection