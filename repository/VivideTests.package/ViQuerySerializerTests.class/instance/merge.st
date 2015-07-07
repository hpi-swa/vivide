support
merge

	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganizer)
			setProfile: newProfile; "Avoid reading profile id from archive."
			merge.