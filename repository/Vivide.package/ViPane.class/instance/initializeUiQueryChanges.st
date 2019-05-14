initialization
initializeUiQueryChanges

	ViScriptChangeNotifier active
		notify: self
		ofQueryChangesOfItem: ViScriptChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViScriptChangeNotifier stepKind
		change: RenamedEvent changeKind
		using: #updateFromRenamedStep:;
		notify: self
		ofQueryChangesOfItem: ViScriptChangeNotifier stepKind
		change: DoItEvent changeKind
		using: #updateFromQueryEvaluation:.