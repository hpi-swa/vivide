tests - script definition
test01RegisterDefinition

	| definition |
	definition := ViScriptDefinition new
		id: #test;
		sourceCode: '[:in :out | out addAll: (in collect: [:num | num])]';
		yourself.
	self
		deny: (organization definitionById: #test) = definition;
		deny: definition organization = organization;
		deny: (organization hasDefinition: definition).
	organization registerDefinition: definition.
	self
		assert: (organization definitionById: #test) = definition;
		deny: definition organization = organization; "Still not propagated!"
		assert: (organization hasDefinition: definition).