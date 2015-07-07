tests
test04UnregisterDefinition

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind change: RemovedEvent changeKind using: #setAnswer:.
	step definition unregister.
	self
		assert: answer isRemoved;
		assert: answer item == step definition.