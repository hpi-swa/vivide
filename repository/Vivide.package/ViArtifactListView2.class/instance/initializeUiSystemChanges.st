initialization
initializeUiSystemChanges

	SystemChangeNotifier uniqueInstance 
		notify: self ofSystemChangesOfItem: SystemChangeNotifier methodKind using: #onMethodChange:;
		notify: self ofSystemChangesOfItem: SystemChangeNotifier classKind using: #onClassChange:.