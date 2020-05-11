type inference
asMessageTargetType: aJavaInferencer
	^ self union: (JavaMessageTargetType new: aJavaInferencer)