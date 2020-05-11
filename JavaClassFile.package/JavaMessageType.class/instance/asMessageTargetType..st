type inference
asMessageTargetType: aJavaInferencer
	^ (JavaMessageTargetType new: aJavaInferencer)
			addMethodType: self asMethodType;
			yourself