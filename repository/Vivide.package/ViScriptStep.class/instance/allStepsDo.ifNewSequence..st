enumerating
allStepsDo: aBlock ifNewSequence: anotherBlock
	
	self
		allStepsDo: aBlock
		ifNewSequence: anotherBlock
		ifRecursive: [true].