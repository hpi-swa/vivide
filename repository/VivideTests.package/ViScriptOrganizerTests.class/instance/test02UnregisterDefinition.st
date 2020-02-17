tests - script definition
test02UnregisterDefinition

	| definition |
	definition := ViScriptDefinition new
		id: #test;
		sourceCode: '[:in :out | out addAll: (in collect: [:num | num])]';
		yourself.
	organization := definition organization. "Use the definitions's current organization for this test."
	
	self
		assert: (organization definitionById: #test) = definition;
		assert: definition organization = organization;
		assert: (organization hasDefinition: definition).
	organization unregisterDefinition: definition.
	self
		deny: (organization definitionById: #test) = definition;
		assert: definition organization = organization; "Still not propagated!"
		deny: (organization hasDefinition: definition).