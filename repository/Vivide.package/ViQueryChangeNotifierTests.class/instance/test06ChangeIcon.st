tests
test06ChangeIcon

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: ViModifiedPartPropertiesEvent changeKind using: #setAnswer:.
	step icon: Morph new.

	self
		assert: answer isModified;
		assert: answer item == step;
		assert: nil equals: (answer oldProperties at: #icon);
		assert: step icon == (answer newProperties at: #icon).