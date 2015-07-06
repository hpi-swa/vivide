tests
test01Registration

	| q |
	q := [:morph | morph submorphs] asScript.

	q adoptOrganization: sut.	
	self assert: (sut stepById: q id) notNil.
	
	sut unregisterStep: q.
	self assert: (sut stepById: q id) isNil.
	
	sut registerStep: q.
	self assert: (sut stepById: q id) == q.