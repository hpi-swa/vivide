serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.

	(dict includesKey: #inputKind) ifTrue: [
		self inputKind: (dict at: #inputKind)].

	(dict includesKey: #receiverIsCollection) ifTrue: [
		self receiverIsCollection: (dict at: #receiverIsCollection)].