testing - object
knowsObject: anObject

	((anObject isKindOf: ViQueryStep) and: [anObject definition == self definition])
		ifTrue: [^#definition].
	
	^ super knowsObject: anObject