testing
isValid

	self organization steps keys in: [:allScriptIds |
		(allScriptIds includesAllOf: self class requiredScripts)
			ifFalse: [^ false]].
		
	self organization orderedSteps do: [:step |
		step isValid ifFalse: [^ false]].
		
	^ true