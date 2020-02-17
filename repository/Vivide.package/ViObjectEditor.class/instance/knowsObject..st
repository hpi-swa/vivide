testing - object
knowsObject: anObject

	(anObject isScript and: [self object isCollection])
		ifTrue: [^ #input].
		
	^ super knowsObject: anObject