accessing - convenience
allObjects

	(self allNodes collect: [:node | node object]) in: [:result |
		^ self depth = 0 "root"
			ifTrue: [result allButFirst]
			ifFalse: [result]]