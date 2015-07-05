running
setUp

	super setUp.
	
	profile := ViProfile new.
	organizer := ViQueryOrganizer new.
	
	profile organization: organizer.
	profile archive: self archive.

	newProfile := ViProfile new.
	newOrganizer := ViQueryOrganizer new.
	newProfile organization: newOrganizer.