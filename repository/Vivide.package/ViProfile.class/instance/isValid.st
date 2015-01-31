testing
isValid

	self organization steps keys in: [:allScriptIds |
		^ allScriptIds includesAllOf: self class requiredScripts].