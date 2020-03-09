type inference
asMessageTargetType: aJavaInferencer
	^ (JavaMessageTargetType new: aJavaInferencer) unionWithClassType: (self acceptVisitor: aJavaInferencer)