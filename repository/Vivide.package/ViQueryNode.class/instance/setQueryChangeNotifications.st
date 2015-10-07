notifications
setQueryChangeNotifications

	firstStep ifNil: [^ self].
	
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	ViQueryChangeNotifier uniqueInstance
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier definitionKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedDefinition:.