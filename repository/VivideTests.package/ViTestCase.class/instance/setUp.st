running
setUp

	super setUp.
	
	organization := ViQueryOrganizer new.
	
	{[:object | #text -> object printString] -> {#id -> #defaultProperties}} asScript
		adoptOrganization: organization.