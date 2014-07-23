tests
test04UnregisterDefinition

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind change: RemovedEvent changeKind using: #setAnswer:.
	step definition register; unregister.
	self
		assert: answer isRemoved;
		assert: answer item == step definition.