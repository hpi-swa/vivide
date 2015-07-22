operations
doMethodReference: aMethodReference  

	^ aMethodReference isValid
		ifTrue: [super doMethodReference: aMethodReference]
		ifFalse: [ViLazyForm init: [UiFugueIcons crossSmallIcon]]