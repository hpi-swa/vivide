as yet unclassified
setUp

	super setUp.
	
	organization := ViQueryOrganizer new.
	organization notifier: ViQueryChangeNotifier new.
	
	"The following script is needed for some internal fall-back behavior."
	{[:object | #text -> object printString] -> {#id -> #defaultProperties}} asScript
		adoptOrganization: organization.