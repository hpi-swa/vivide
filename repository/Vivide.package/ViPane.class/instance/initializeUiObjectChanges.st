initialization
initializeUiObjectChanges

	ViObjectChangeNotifier uniqueInstance
		notify: self 
		using: #updateFromChangedObject:.