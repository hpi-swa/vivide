tests
test03ChangeId

	| q d |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	d := q definition.
	
	q organization: sut.
	d organization: sut.
	
	q register.
	d register.
	
	q id: #foobar.
	d id: #foobar.
	
	self
		assert: (sut stepById: q id) == q;
		assert: (sut definitionById: d id) == d.