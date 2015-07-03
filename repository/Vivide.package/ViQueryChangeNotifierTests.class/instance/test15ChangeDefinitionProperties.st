tests
test15ChangeDefinitionProperties

	sut
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ViModifiedPartPropertiesEvent changeKind
		using: #setAnswer:.
	
	definition setProperty: #foo toValue: #bar.

	self
		assert: answer isModified;
		assert: answer item == definition;
		assert: nil equals: (answer oldProperties at: #foo);
		assert: #bar equals: (answer newProperties at: #foo).

	definition setProperty: #foo toValue: #baz.

	self
		assert: answer isModified;
		assert: answer item == definition;
		assert: #bar equals: (answer oldProperties at: #foo);
		assert: #baz equals: (answer newProperties at: #foo).