initialization
initializeSystemChangeNotifications

	super initializeSystemChangeNotifications.
	
	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: SystemChangeNotifier methodKind using: #onMethodChange:;
		notify: self ofSystemChangesOfItem: SystemChangeNotifier classKind using: #onClassChange:.
		
	ViObjectChangeNotifier uniqueInstance
		notify: self ofObjectChangesUsing: #onObjectChange:.