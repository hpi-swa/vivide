as yet unclassified
doMethodReference: aMethodReference

	aMethodReference isValid
		ifFalse: [^ '{1} ({2})' format: {
			aMethodReference classSymbol.
			aMethodReference category}].

	^ super doMethodReference: aMethodReference    