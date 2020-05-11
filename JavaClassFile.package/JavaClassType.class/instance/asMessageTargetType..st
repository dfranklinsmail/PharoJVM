converting
asMessageTargetType: aJavaInferencer
	^ (JavaMessageTargetType new: aJavaInferencer)
			unionWithClassType: self;
			yourself