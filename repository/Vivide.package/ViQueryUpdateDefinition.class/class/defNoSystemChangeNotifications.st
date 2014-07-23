defaults
defNoSystemChangeNotifications

	^ (ViQueryOrganizer default definitionById: #noSystemChangeNotifications) ifNil: [
		ViQueryUpdateDefinition new
			id: #noSystemChangeNotifications;
			sourceCode: '[:model | SystemChangeNotifier uniqueInstance
	noMoreNotificationsFor: model]';
			register;
			yourself]