tests
test23NextStepsWithReference

	| q1 |
	q1 := ViQueryStep defaultProperties asReference.
	
	self
		assert: ({q1}, ViQueryStep defaultProperties allSteps hasEqualElements: q1 nextSteps).