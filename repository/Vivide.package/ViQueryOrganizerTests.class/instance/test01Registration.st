tests
test01Registration

	| q |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	q organization: sut.
	
	self assert: (sut stepById: q id) isNil.
	
	q register.
	self assert: (sut stepById: q id) == q.
	
	q unregister.
	self assert: (sut stepById: q id) isNil.