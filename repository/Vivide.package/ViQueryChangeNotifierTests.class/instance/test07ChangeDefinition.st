tests
test07ChangeDefinition

	step definition: nil.
	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: ModifiedEvent changeKind using: #setAnswer:.
	step definition: definition.
	self
		assert: answer isModified;
		assert: answer item == step;
		assert: nil equals: answer oldDefinition;
		assert: step definition == answer definition.