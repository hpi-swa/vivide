comparing
= node

	node species == self species ifFalse: [^ false].
	^ (self object = node object
		and: [self firstStep = node firstStep])
		and: [self hasSameStack: node]