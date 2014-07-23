serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	self inputKind: (dict at: #inputKind).
	self receiverIsCollection: (dict at: #receiverIsCollection).