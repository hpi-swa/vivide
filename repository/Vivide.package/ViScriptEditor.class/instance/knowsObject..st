testing - object
knowsObject: anObject

	((anObject isKindOf: ViQueryStep) and: [anObject next == self object])
		ifTrue: [^#next].
		
	anObject isCollection ifTrue: [^ #for].
		
	^ super knowsObject: anObject