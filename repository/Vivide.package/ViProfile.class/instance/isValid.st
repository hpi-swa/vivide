testing
isValid

	| missingScripts invalidScripts |
	
	missingScripts := OrderedCollection new.	
	self organization steps keys in: [:allScriptIds |
		missingScripts := ViScriptTemplate requiredScriptIds copyWithoutAll: allScriptIds].

	invalidScripts := OrderedCollection new.
	self organization orderedSteps do: [:step |
		step isValid ifFalse: [invalidScripts add: step]].
	
	^ missingScripts isEmpty and: [invalidScripts isEmpty]