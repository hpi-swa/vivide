as yet unclassified
allStepsDo: aBlock ifRecursive: anExceptionBlock
	
	self
		allStepsDo: aBlock
		previousSteps: OrderedCollection new
		ifRecursive: anExceptionBlock.