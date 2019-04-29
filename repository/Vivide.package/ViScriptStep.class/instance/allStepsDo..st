enumerating
allStepsDo: aBlock
	"Avoid infinite recursion."
	
	self
		allStepsDo: aBlock
		ifNewSequence: nil
		ifRecursive: [].