running
setUp

	super setUp.
	sut := ViQueryStepDefinition new.
	organization := ViQueryOrganizer new.
	notifier := ViQueryChangeNotifier new.
	organization notifier: notifier.

	sut organization: organization.