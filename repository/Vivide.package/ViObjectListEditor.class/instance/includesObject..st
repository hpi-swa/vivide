testing
includesObject: anObject

	^ self inputPage artifactContainers anySatisfy: [:c | c isObject: anObject]