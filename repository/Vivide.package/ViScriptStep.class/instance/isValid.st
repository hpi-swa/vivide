testing
isValid

	self allStepsDo: [:step |
		"Incomplete loading?"
		(step definition isSymbol or: [step next isSymbol])
			ifTrue: [^ false].
			
		"Mixed code?"
		(step organization == self organization or: [step isDefault])
			ifFalse: [^ false].
			
		"Mismatch between script properties and source code?"
		(step before size ~= step beforeScripts size)
			ifTrue: [^ false].
		(step after size ~= step afterScripts size)
			ifTrue: [^ false]].
	^ true