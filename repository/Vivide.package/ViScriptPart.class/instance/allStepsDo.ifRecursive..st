enumerating
allStepsDo: aBlock ifRecursive: anExceptionBlock
	
	self
		allStepsDo: aBlock
		ifNewSequence: nil
		ifRecursive: anExceptionBlock.