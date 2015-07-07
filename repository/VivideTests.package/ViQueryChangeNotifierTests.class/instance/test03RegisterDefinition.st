tests
test03RegisterDefinition

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind change: AddedEvent changeKind using: #setAnswer:.
	step definition unregister; register.
	self
		assert: answer isAdded;
		assert: answer item == step definition.