type unification
asMessageTargetType: aJavaInferencer
	^ (JavaMessageTargetType new: aJavaInferencer)
			addMethodType: self;
			yourself