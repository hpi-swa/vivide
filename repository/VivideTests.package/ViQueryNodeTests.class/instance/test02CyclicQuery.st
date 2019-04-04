tests
test02CyclicQuery

	| query |
	query := {
		[:morph | morph submorphs].
		[:morph | #text -> morph asString].
		[:morph | morph owner].
	} asScript.
	query steps last next: query.

	sut
		inputForChildren: {ActiveWorld};
		firstStep: query.
		
	self
		assert: (sut childrenInDefaultGroup hasEqualElements: (sut childAt: 1) childrenInDefaultGroup);
		assert: (sut childAt: 1) firstStep = ((sut childAt: 1) childAt: 1) firstStep.