serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	self reference: (dict at: #reference).