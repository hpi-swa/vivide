serialization
loadFromDictionary: dict

	super loadFromDictionary: dict.
	
	self sourceCode: (dict
		at: #sourceCode
		ifAbsent: [ViScriptTemplate expandString: '[:object | object]']).
	
	self block: (dict
		at: #block
		ifAbsent: [nil]).