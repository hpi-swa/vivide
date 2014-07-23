instance creation
fromOrganizer: aQueryOrganizer intoArchive: aClass

	^ self new
		setOrganizer: aQueryOrganizer archive: aClass;
		yourself