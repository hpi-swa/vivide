organizing
mergeFromDefaultArchive

	ActiveVivide ifNotNil: [:vivide | vivide openQuery: #transcript].
	(ViQuerySerializer
		fromArchive: ViQueryArchive
		intoOrganizer: ViQueryOrganizer default) merge.