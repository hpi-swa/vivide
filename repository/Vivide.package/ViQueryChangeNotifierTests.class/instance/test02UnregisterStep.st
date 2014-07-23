tests
test02UnregisterStep

	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: RemovedEvent changeKind using: #setAnswer:.
	step register; unregister.
	self
		assert: answer isRemoved;
		assert: answer item == step.