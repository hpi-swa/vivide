initialization
initializeUiQueryChanges

	ViQueryChangeNotifier active
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: ModifiedEvent changeKind
		using: #updateFromChangedStep:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: RenamedEvent changeKind
		using: #updateFromRenamedStep:;
		notify: self
		ofQueryChangesOfItem: ViQueryChangeNotifier stepKind
		change: DoItEvent changeKind
		using: #updateFromQueryEvaluation:.