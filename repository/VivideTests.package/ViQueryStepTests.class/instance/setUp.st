as yet unclassified
setUp

	super setUp.
	
	organization := ViQueryOrganizer new.
	organization notifier: ViQueryChangeNotifier new.
	
	{[:object | #text -> object printString] -> {#id -> #defaultProperties}} asScript
		adoptOrganization: organization.