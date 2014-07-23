serialization
mergeFromDictionary: dict

	self class ~~ (dict at: #class)
		ifTrue: [Error signal: 'Wrong class!'].
	
	self properties: (dict at: #properties).