running
setUp

	super setUp.
	sut := ViQueryMapDefinition new.
	organization := ViQueryOrganizer new.
	notifier := ViQueryChangeNotifier new.
	organization notifier: notifier.

	sut organization: organization.