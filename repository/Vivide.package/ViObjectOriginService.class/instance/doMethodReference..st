as yet unclassified
doMethodReference: aMethodReference

	aMethodReference isValid
		ifFalse: [^ '{1} (--invalid--)' format: {
			aMethodReference classSymbol}].
		
	aMethodReference selector = #Comment
		ifTrue: [^ '{1} (comment)' format: {
			aMethodReference classSymbol}].

	^ super doMethodReference: aMethodReference    