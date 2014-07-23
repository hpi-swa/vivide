operations
doMethodReference: aMethodReference  

	self flag: #suspicious. "mt: When does this happen?"
	(aMethodReference selector isNil
		or: [aMethodReference isValid not])
			ifTrue: [^ nil].

	^ ViLazyForm init: [self doMethodReferenceReally: aMethodReference]