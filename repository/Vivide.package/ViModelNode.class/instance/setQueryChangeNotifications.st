notifications
setQueryChangeNotifications

	firstStep ifNil: [^ self].
	
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	ViScriptChangeNotifier active
		notify: self
		ofQueryChangesOfItem: ViScriptChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViScriptChangeNotifier definitionKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedDefinition:.