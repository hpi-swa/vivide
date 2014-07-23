tests
test05ChangeLabel

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: RenamedEvent changeKind using: #setAnswer:.
	step label: #test05ChangeLabel.
	self
		assert: answer isRenamed;
		assert: answer item == step;
		assert: nil equals: answer oldLabel;
		assert: #test05ChangeLabel equals: answer label;
		assert: answer oldIcon == answer icon.