tests
test02Namespaces

	| q |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	q id: #foobar.
	q definition id: #foobar.

	q organization: sut.
	q definition organization: sut.
	
	q register.
	q definition register.
	
	self
		assert: (sut stepById: q id) == q;
		assert: (sut definitionById: q definition id) == q definition.