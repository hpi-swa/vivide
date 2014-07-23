testing - object
knowsObject: anObject

	((anObject isKindOf: ViQueryStep) and: [self object isCollection])
		ifTrue: [^ #input].
		
	^ super knowsObject: anObject