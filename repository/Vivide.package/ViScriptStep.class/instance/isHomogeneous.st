testing
isHomogeneous
	"Only one chain of properties? Support compact recursion with repeated extraction."
	
	| count steps checkSteps |
	count := 0.
	steps := OrderedCollection new.
	checkSteps := false.

	self
		allExtractionStepsDo: [:step | steps last add: step]
		ifNewSequence: [
			count := count + 1.
			steps add: OrderedCollection new.
			count = 2 ifTrue: [checkSteps := true].
			count > 2 ifTrue: [^ false]].

	^ (checkSteps not or: [steps last isEmpty "Only reference."])