tests
test05ViewDefinitions

	| q d |
	q := (ViQueryStep collect: '[:morph | morph submorphs]')
		viewDefinition: (ViQueryViewDefinition new
			sourceCode: '[:query :view :env | Morph new]');
		organization: sut;
		register.	
	
	self assert: sut viewDefinitions isEmpty.
	
	q viewDefinition organization: sut; register.
	self assert: (sut viewDefinitions hasEqualElements: {q viewDefinition}).