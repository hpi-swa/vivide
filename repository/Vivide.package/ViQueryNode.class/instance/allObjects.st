accessing - convenience
allObjects

	(self allNodes collect: [:node | node object]) in: [:result |
		^ self object
			ifNil: [result allButFirst]
			ifNotNil: [result]]