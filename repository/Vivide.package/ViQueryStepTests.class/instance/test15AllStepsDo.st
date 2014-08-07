tests
test15AllStepsDo

	| q1 p q2 count |
	
	q1 := ViQueryStep collect: '[:morph | morph submorphs]'.
	p := ViQueryStep reference: [:o | #text -> o asString] asQuery.
	q2 := ViQueryStep collect: '[:morph | self haltOnce. morph owner]'.

	q1 next: p.
	p next: q2.
	q2 next: q1.
	count := 0.
	
	q1 allStepsDo: [:step | count := count + 1].
	self assert: 4 equals: count.