operations
doMethodReference: aMethodReference

	self flag: #suspicious. "mt: When does this happen?"
	(aMethodReference selector isNil
		or: [aMethodReference isValid not])
			ifTrue: [panel := self textboxFor: 'Invalid method reference!' color: Color red muchLighter.
		^ self].

	panel := self
		codeboxFor:
			'"', aMethodReference className, 
			' (', (aMethodReference actualClass organization categoryOfElement: aMethodReference selector)  ,')"', String cr,
			aMethodReference compiledMethod getSource asString
		inClass: aMethodReference actualClass.