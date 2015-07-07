tests
test12CountDefinitionEvents

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind using: #countAnswer:.
	
	definition sourceCode: '[:o | o]'.
	self assert: 1 equals: answer.
	definition unregister.
	self assert: 2 equals: answer.
	definition setProperty: #foo toValue: #bar.
	self assert: 3 equals: answer.