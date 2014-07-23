initialization
initializeSystemChangeNotifications

	super initializeSystemChangeNotifications.
		
	SystemChangeNotifier uniqueInstance 
		notify: self
		ofSystemChangesOfItem: SystemChangeNotifier methodKind
		change: ModifiedEvent changeKind
		using: #onMethodModified:.