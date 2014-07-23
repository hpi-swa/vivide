operations
doMethodReference: aMethodReference

	self flag: #suspicious. "mt: When does this happen?"
	(aMethodReference selector isNil
		or: [aMethodReference isValid not])
			ifTrue: [^ super doMethodReference: aMethodReference].

	^ (aMethodReference classIsMeta or: [aMethodReference isTraitMethod])
		ifTrue: [(super doMethodReference: aMethodReference) asHtmlText]
		ifFalse: [(super doMethodReference: aMethodReference)]