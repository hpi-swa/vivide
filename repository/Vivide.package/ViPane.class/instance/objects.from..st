accessing - convenience
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
	self tupleSize = 1 ifTrue: [^ self objects: someObjects].
	
	self flag: #performance. "mt: Deferred evaluation?"
	self objects: (ViQueryInterpreter productOfCollections:   
		(self connections
			select: [:c | c target == self]
			thenCollect: [:c | c objects])).