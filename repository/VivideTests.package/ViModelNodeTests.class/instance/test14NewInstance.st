tests
test14NewInstance

	| node |
	node := ViModelNode new.
	self
		assert: node firstStep isNil;
		assert: node referenceStack isNil;
		assert: 0 equals: node depth;
		assert: node object isNil;
		assert: node inputForChildren isEmpty;
		shouldnt: [node nodes] raise: ViScriptNotInterpreted;
		assert: 0 equals: node nodeCount.