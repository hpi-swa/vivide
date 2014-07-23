tests
test20ReferenceHasNoDefinition

	self assert: step definition notNil.
	
	editor currentType: (editor typeMappings
		detect: [:spec | spec notNil and: [spec key == ViQueryReferenceStep]]);
		currentReference: ((ViQueryStep collect: '[:morph | morph color]')
			id: #test20ReferenceHasNoDefinition;
			organization: organization;
			register).
	editor
		acceptType;
		acceptDefinition;
		acceptReference.

	self
		assert: step definition isNil;
		assert: #test20ReferenceHasNoDefinition equals: step reference id.