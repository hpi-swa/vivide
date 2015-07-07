tests
test09WithAllObjectsCyclic

	| q1 |	
	q1 := {
		[:morph | morph submorphs].
		[:morph | #text -> morph asString].
		[:morph | morph owner ifNil: [#()]].
	} asScript.
	q1 steps last next: q1.
	
	sut firstStep: (ViQueryStep use: {ActiveWorld} in: q1).
	
	self
		assert: sut childCount = ActiveWorld submorphs size;
		assert: sut allObjects size = ActiveWorld submorphs size.