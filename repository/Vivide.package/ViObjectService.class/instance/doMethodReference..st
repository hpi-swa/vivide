squeak - system
doMethodReference: aMethodReference

	^ aMethodReference isValid
		ifFalse: [] ifTrue: [
			aMethodReference selector = #Comment
				ifTrue: [self doObject: aMethodReference actualClass comment]
				ifFalse: [self doObject: aMethodReference compiledMethod]]