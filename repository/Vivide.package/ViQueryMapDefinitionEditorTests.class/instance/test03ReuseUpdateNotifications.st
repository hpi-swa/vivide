tests
test03ReuseUpdateNotifications

	editor
		currentUpdateSetDefinition: updateSetDefinition;
		currentUpdateClearDefinition: updateClearDefinition.
		
	self
		assert: editor hasUnacceptedChanges;
		assert: definition updateSetDefinition isNil.
	editor acceptUpdateSetDefinition.
	self assert: definition updateSetDefinition isRegistered.
	
	self
		assert: editor hasUnacceptedChanges;
		assert: definition updateClearDefinition isNil.
	editor acceptUpdateClearDefinition.
	self assert: definition updateClearDefinition isRegistered.