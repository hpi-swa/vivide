testing
isValid

	self allStepsDo: [:step |
		"Incomplete loading?"
		(step definition isSymbol or: [step next isSymbol])
			ifTrue: [^ false].
			
		"Mixed code?"
		step organization == self organization
			ifFalse: [^ false].
			
		"Mismatch between script properties and source code?"
		(step isReference and: [step reference isSymbol])
			ifTrue: [^ false]].
		
	^ true