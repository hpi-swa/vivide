as yet unclassified
isValid

	self allStepsDo: [:step |
		"Incomplete loading?"
		(step definition isSymbol or: [step next isSymbol])
			ifTrue: [^ false].
			
		"Mixed code?"
		(step organization == self organization or: [step isDefault])
			ifFalse: [^ false].
			
		"Mismatch between script properties and source code?"
		(step isReference and: [step reference isNil])
			ifTrue: [^ false].
		(step isMeta and: [step metaReference isNil])
			ifTrue: [^ false]].
	^ true