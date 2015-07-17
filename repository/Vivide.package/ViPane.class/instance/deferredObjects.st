as yet unclassified
deferredObjects

	self flag: #refactor.
	
	self tupleSize = 1 ifTrue: [^ self objects: 
		(self connections detect: [:c | c target == self]) objects].

	self objects: (ViQueryInterpreter productOfCollections:   
		(self connections
			select: [:c | c target == self]
			thenCollect: [:c | c objects])).