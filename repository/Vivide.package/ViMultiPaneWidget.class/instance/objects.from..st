accessing - pane api
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
	
	lastUpdateId := aPane lastUpdateId.	
	
	self tupleSize = 1 ifTrue: [^ self objects: someObjects].
	
	self tupleSizeDynamic = 1 ifTrue: [^ self objects:
		(self connections detect: [:c |
			c target == self and: [c objects notEmpty]]) objects].
	
	self flag: #performance. "mt: Deferred evaluation?"
	self objects: (self connections
		select: [:c | c target == self and: [c objects notEmpty]]
		thenCollect: [:c | c objects]) asTuples.