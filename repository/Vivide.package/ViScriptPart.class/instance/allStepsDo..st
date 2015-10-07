as yet unclassified
allStepsDo: aBlock
	"Avoid infinite recursion."
	
	self
		allStepsDo: aBlock
		ifRecursive: [].