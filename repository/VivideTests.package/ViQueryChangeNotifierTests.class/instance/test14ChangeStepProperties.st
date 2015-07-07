tests
test14ChangeStepProperties

	sut
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ViModifiedPartPropertiesEvent changeKind
		using: #setAnswer:.
	
	step setProperty: #foo toValue: #bar.

	self
		assert: answer isModified;
		assert: answer item == step;
		assert: nil equals: (answer oldProperties at: #foo);
		assert: #bar equals: (answer newProperties at: #foo).

	step setProperty: #foo toValue: #baz.

	self
		assert: answer isModified;
		assert: answer item == step;
		assert: #bar equals: (answer oldProperties at: #foo);
		assert: #baz equals: (answer newProperties at: #foo).