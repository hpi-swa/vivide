instance creation
fromArchive: aClass intoOrganizer: aQueryOrganizer

	^ self new
		setOrganizer: aQueryOrganizer archive: aClass;
		yourself