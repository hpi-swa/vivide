operations
doMethodReference: aMethodReference

	^ aMethodReference isValid
		ifTrue: [self doCompiledMethod: aMethodReference compiledMethod]
		ifFalse: []