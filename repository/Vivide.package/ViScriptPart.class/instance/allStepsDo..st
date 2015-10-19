enumerating
allStepsDo: aBlock
	"Avoid infinite recursion."
	
	self
		allStepsDo: aBlock
		ifRecursive: [].