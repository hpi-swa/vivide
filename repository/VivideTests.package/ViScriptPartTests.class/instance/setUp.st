running
setUp

	super setUp.
	
	organization := ViQueryOrganizer new.
	organization notifier: ViQueryChangeNotifier new.
	
	{[:object | object] -> {#id -> #identityTest}} asScript adoptOrganization: organization.