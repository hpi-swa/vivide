listening
notifyChangedSelection: selectedNodes

	(self hasProperty: #isUpdating) ifTrue: [^ self].
	
	self
		setProperty: #lastSelection
		toValue: (WeakArray withAll: (selectedNodes collect: [:node | node at: #object])).
	
	self connections
		select: [:connection | (connection isValid
			and: [connection isSelection])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].