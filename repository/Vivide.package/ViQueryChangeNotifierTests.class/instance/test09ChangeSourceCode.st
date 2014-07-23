tests
test09ChangeSourceCode

	| oldCode |
	oldCode := definition sourceCode.
	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind change: ModifiedEvent changeKind using: #setAnswer:.
	
	definition sourceCode: '[:cls | cls theMetaClass methods]'.
	self
		assert: answer isModified;
		assert: answer item == definition;
		assert: oldCode equals: answer oldSourceCode;
		assert: definition sourceCode equals: answer sourceCode.