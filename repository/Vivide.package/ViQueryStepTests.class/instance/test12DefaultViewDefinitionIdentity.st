tests
test12DefaultViewDefinitionIdentity

	| q |
	q := ViQueryStep collect: '[:morph | morph color]'.
	self
		assert: q viewDefinition == q viewDefinition;
		assert: ViQueryStep defaultViewDefinition == ViQueryStep defaultViewDefinition.