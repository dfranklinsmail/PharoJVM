accessing
targetType
	^ SpecialMessageTargets at: messageType selector ifPresent: [: t | t ]