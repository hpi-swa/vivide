running
setUp

	super setUp.
	
	profile := ViProfile new.
	organizer := ViScriptOrganizer new.
	
	profile organization: organizer.
	profile archive: self archive.

	newProfile := ViProfile new.
	newOrganizer := ViScriptOrganizer new.
	newProfile organization: newOrganizer.