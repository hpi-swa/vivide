organizing
mergeFromDefaultArchive

	ActiveVivide openQuery: #transcript.
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: ViQueryOrganizer default) merge.