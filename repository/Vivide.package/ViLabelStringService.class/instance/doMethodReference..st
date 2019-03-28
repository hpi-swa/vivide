squeak - system
doMethodReference: aMethodReference
	
	aMethodReference isValid
		ifFalse: [^ aMethodReference selector].
	
	^ super doMethodReference: aMethodReference