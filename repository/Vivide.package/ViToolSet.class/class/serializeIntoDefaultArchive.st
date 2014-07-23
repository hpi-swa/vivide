organizing
serializeIntoDefaultArchive

	"ActiveVivide openQuery: #transcript."
	(ViQuerySerializer
		fromOrganizer: ViQueryOrganizer default
		intoArchive: ViQueryArchive) serialize.