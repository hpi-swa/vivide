tests
test12CountDefinitionEvents

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind using: #countAnswer:.
	
	definition
		register;
		sourceCode: '[:o | o]';
		unregister.
	self assert: 3 equals: answer.