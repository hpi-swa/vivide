tests
test22NextSteps

	| q1 p q2 |
	q1 := [:objs | objs] asScript.
	p := [:o | #text -> o asString] asScript.
	q2 := [:objs | objs] asScript.
	q1 next: p. p next: q2.
	
	self
		assert: ({q1.p} hasEqualElements: q1 nextSteps);
		assert: ({q2}, ViQueryStep defaultProperties allSteps hasEqualElements: q2 nextSteps).