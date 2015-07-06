tests
test02Namespaces

	| q |
	q := [:morph | morph submorphs] asScript.
	q id: #foobar.
	q definition id: #foobar.

	sut := q organization.
	
	self
		assert: (sut stepById: q id) == q;
		assert: (sut definitionById: q definition id) == q definition.