as yet unclassified
test04UseNewCode

	editor
		currentUpdateSetDefinition: updateSetDefinition;
		currentUpdateClearDefinition: updateClearDefinition;
		acceptUpdateSetDefinition;
		acceptUpdateClearDefinition.
	
	self
		assert: editor currentUpdateSetDefinition == updateSetDefinition;
		assert: editor currentUpdateClearDefinition == updateClearDefinition.
		
	editor useNewCode.
	
	self
		assert: editor currentUpdateSetDefinition ~~ updateSetDefinition;
		assert: editor currentUpdateClearDefinition ~~ updateClearDefinition;
		assert: editor currentUpdateSetDefinition sourceCode
		equals: updateSetDefinition sourceCode;
		assert: editor currentUpdateClearDefinition sourceCode
		equals: updateClearDefinition sourceCode.