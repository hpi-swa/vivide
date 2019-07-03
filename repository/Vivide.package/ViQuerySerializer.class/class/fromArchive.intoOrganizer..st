instance creation
fromArchive: aClass intoOrganizer: aQueryOrganizer
	"For convenience. Use #merge interface then."
	
	^ self new
		setOrganizer: aQueryOrganizer archive: aClass;
		yourself