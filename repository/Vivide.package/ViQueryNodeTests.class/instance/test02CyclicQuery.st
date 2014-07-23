tests
test02CyclicQuery

	| query s1 s2 model view |
	query := ViQueryStep collect: '[:morph | morph submorphs]'.
	s1 := ViQueryStep property: '[:morph | morph asString]'.
	s2 := ViQueryStep collect: '[:morph | morph owner]'.
	query next: s1.
	s1 next: s2.
	s2 next: query.

	sut firstStep: (ViQueryFillStep new
		objects: {ActiveWorld};
		next: query).
		
	self
		assert: (sut childrenInDefaultGroup hasEqualElements: (sut childAt: 1) childrenInDefaultGroup);
		assert: (sut childAt: 1) firstStep = ((sut childAt: 1) childAt: 1) firstStep.