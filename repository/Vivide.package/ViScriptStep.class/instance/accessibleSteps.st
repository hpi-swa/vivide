recursion
accessibleSteps
	"May be not the save as #steps due to recursive definition."
	
	| seen |
	seen := OrderedCollection new.
	self allStepsDo: [:step | seen add: step] ifRecursive: [
		^ self steps intersection: seen].
	^ self steps