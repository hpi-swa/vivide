operations
doMethodReference: aMethodReference

	^ aMethodReference isValid
		ifTrue: [ViMethodEditor]
		ifFalse: []