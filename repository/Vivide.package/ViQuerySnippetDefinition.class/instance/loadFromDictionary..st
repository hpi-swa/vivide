serialization
loadFromDictionary: dict

	super loadFromDictionary: dict.
	
	self inputKind: (dict at: #inputKind ifAbsent: [Object]).
	self receiverIsCollection: (dict at: #receiverIsCollection ifAbsent: [false]).