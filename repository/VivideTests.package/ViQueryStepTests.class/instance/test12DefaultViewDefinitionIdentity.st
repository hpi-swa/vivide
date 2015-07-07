tests
test12DefaultViewDefinitionIdentity

	| q |
	q := [:morph | morph color] asScript.
	self
		assert: q viewDefinition == q viewDefinition;
		assert: ViQueryStep defaultViewDefinition == ViQueryStep defaultViewDefinition.