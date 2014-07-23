tests
test22NextSteps

	| q1 p q2 |
	q1 := ViQueryStep transform: '[:objs | objs]'.
	p := ViQueryStep property: '[:obj | obj asString]'.
	q2 := ViQueryStep transform: '[:objs | objs]'.
	q1 next: p. p next: q2.
	
	self
		assert: ({q1.p} hasEqualElements: q1 nextSteps);
		assert: ({q2}, ViQueryStep defaultProperties allSteps hasEqualElements: q2 nextSteps).