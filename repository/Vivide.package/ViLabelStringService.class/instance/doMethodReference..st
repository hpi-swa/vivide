operations
doMethodReference: aMethodReference
	
	| label |
	label := aMethodReference selector.

	self flag: #suspicious. "mt: When does this happen?"
	(label isNil or: [aMethodReference isValid not])
		ifTrue: [^ label].
	
	aMethodReference classIsMeta ifTrue: [label := '<u>', label,'</u>'].
	aMethodReference isTraitMethod ifTrue: [label := '<i>', label, '</i>'].
	
	^ label