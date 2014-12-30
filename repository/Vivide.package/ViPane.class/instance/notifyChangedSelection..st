listening
notifyChangedSelection: selectedNodes
	
	self
		setProperty: #lastSelection
		toValue: (selectedNodes collect: [:node | node at: #object]).
	
	self connections
		select: [:connection | (connection isValid
			and: [connection isSelection])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].