operations
doMethodReference: aMethodReference

	^ aMethodReference isValid
		ifFalse: [] ifTrue: [
			aMethodReference selector = #Comment
				ifTrue: [ViObjectEditor]
				ifFalse: [ViMethodEditor]]