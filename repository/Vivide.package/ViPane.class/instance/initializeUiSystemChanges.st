initialization
initializeUiSystemChanges

	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: AbstractEvent methodKind
		using: #updateFromChangedCode:.