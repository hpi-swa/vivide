tests
test03ChangeId

	| q d |
	q := [:morph | morph submorphs] asScript.
	d := q definition.
	
	sut := q organization.
			
	q id: #foobar.
	d id: #foobar.
	
	self
		assert: (sut stepById: q id) == q;
		assert: (sut definitionById: d id) == d.