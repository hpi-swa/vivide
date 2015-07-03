notifications
setQueryChangeNotifications

	firstStep ifNil: [^ self].
	
	self flag: #magicNumber. "mt: Make it a preference? Should improve performance, though..."
	self depth > 5 ifTrue: [^ self].
	
	ViQueryChangeNotifier uniqueInstance
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedDefinition:.