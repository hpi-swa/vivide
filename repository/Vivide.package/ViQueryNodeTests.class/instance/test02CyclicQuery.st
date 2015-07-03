tests
test02CyclicQuery

	| query |
	query := {
		[:morph | morph submorphs].
		[:morph | #text -> morph asString].
		[:morph | morph owner].
	} asScript.
	query steps last next: query.

	sut firstStep: (ViQueryFillStep new
		objects: {ActiveWorld};
		next: query).
		
	self
		assert: (sut childrenInDefaultGroup hasEqualElements: (sut childAt: 1) childrenInDefaultGroup);
		assert: (sut childAt: 1) firstStep = ((sut childAt: 1) childAt: 1) firstStep.