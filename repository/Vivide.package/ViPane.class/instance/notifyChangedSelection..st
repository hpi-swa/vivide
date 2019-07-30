listening
notifyChangedSelection: selectedNodes

	"No double empty updates. Free views to watch for it."
	(lastUpdateWasEmpty == true and: [selectedNodes isEmpty])
		ifTrue: [^ self "ignore"]
		ifFalse: [lastUpdateWasEmpty := selectedNodes isEmpty].

	self beginUpdateChain.

	self
		setProperty: #lastSelection
		toValue: (selectedNodes collect: [:node | node at: #object] as: Array).
	
	self connections
		select: [:connection | (connection isValid
			and: [connection isSelection])
			and: [connection source == self]]
		thenDo: [:connection | connection notify].