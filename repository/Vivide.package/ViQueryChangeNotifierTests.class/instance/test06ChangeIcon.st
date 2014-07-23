tests
test06ChangeIcon

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: RenamedEvent changeKind using: #setAnswer:.
	step icon: Morph new.
	self
		assert: answer isRenamed;
		assert: answer item == step;
		assert: nil equals: answer oldIcon;
		assert: step icon == answer icon;
		assert: answer oldLabel == answer label.