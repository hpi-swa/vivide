tests
test01NoUpdateDefinitions

	self
		deny: editor hasUnacceptedChanges;
		assert: definition updateSetDefinition isNil;
		assert: definition updateClearDefinition isNil;
		deny: editor currentUpdateSetDefinition isRegistered;
		deny: editor currentUpdateClearDefinition isRegistered.
		
	editor
		currentSourceCode: '[:o | o]';
		acceptSourceCode.
		
	self
		deny: editor hasUnacceptedChanges;
		assert: definition updateSetDefinition isNil;
		assert: definition updateClearDefinition isNil;
		deny: editor currentUpdateSetDefinition isRegistered;
		deny: editor currentUpdateClearDefinition isRegistered.
	