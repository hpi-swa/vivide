tests
test23NextStepsWithReference

	| q1 |
	q1 := ViQueryStep reference: ViQueryStep defaultProperties.
	
	self
		assert: ({q1}, ViQueryStep defaultProperties allSteps hasEqualElements: q1 nextSteps).