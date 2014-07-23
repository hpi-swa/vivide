tests
test09WithAllObjectsCyclic

	| packageName q1 p q2 q3 |	
	q1 := ViQueryStep collect: '[:morph | morph submorphs]'.
	p := ViQueryStep property: '[:morph | morph asString]'.
	q2 := ViQueryStep collect: '[:morph | morph owner]'.
	q3 := ViQueryStep select: '[:morph | morph notNil]'.

	q1 next: p.
	p next: q2.
	q2 next: q3.
	q3 next: q1.
	
	sut firstStep: (ViQueryStep use: {ActiveWorld} in: q1).
	
	self
		assert: sut childCount = ActiveWorld submorphs size;
		assert: sut allObjects size = ActiveWorld submorphs size.