nil
doMethodReference: aMethodReference

	aMethodReference isValid
		ifFalse: [^ '{1} ({2})' format: {
			aMethodReference classSymbol.
			aMethodReference category}].
		
	aMethodReference selector = #Comment
		ifTrue: [^ '{1} (comment)' format: {
			aMethodReference classSymbol}].

	^ super doMethodReference: aMethodReference    