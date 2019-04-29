recursion
inaccessibleSteps
	"May be due to recursive definition."
	
	| seen |
	seen := OrderedCollection new.
	self allStepsDo: [:step | seen add: step] ifRecursive: [
		^ self steps copyWithoutAll: seen].
	^ #()