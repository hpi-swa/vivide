serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	(dict includesKey: #sourceCode) ifTrue: [
		self sourceCode: (dict at: #sourceCode)].

	(dict includesKey: #block) ifTrue: [
		self block: (dict at: #block)].