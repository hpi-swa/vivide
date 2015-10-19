enumerating
allStepsDo: aBlock ifRecursive: anExceptionBlock
	
	self
		allStepsDo: aBlock
		previousSteps: OrderedCollection new
		ifRecursive: anExceptionBlock.