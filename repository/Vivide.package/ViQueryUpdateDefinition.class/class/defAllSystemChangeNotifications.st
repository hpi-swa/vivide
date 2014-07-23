defaults
defAllSystemChangeNotifications

	^ (ViQueryOrganizer default definitionById: #allSystemChangeNotifications) ifNil: [
		ViQueryUpdateDefinition new
			id: #allSystemChangeNotifications;
			sourceCode: '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofAllSystemChangesUsing: #refresh:]';
			register;
			yourself]