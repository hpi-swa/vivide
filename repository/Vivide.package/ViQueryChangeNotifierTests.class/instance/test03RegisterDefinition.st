tests
test03RegisterDefinition

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind change: AddedEvent changeKind using: #setAnswer:.
	step definition register.
	self
		assert: answer isAdded;
		assert: answer item == step definition.