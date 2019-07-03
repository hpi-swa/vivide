instance creation
fromOrganizer: aQueryOrganizer intoArchive: aClass
	"For convenience. Use #serialize interface then."
	
	^ self new
		setOrganizer: aQueryOrganizer archive: aClass;
		yourself