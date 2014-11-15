notifications
setQueryChangeNotifications

	firstStep ifNil: [^ self].
	ViQueryChangeNotifier uniqueInstance
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier mapDefinitionKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedDefinition:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedDefinition:.