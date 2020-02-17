squeak - system
doClassReference: aClassReference

	^ aClassReference isValid
		ifFalse: [] ifTrue: [self doObject: aClassReference actualClass]