tests
test01RegisterStep

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: AddedEvent changeKind using: #setAnswer:.
	step unregister; register.
	self
		assert: answer isAdded;
		assert: answer item == step.