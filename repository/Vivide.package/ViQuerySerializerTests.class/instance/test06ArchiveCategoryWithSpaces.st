tests
test06ArchiveCategoryWithSpaces

	| q |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	q organization: organizer; register.
	q category: #'test category'.

	self
		shouldnt: [
			(ViQuerySerializer
				fromOrganizer: organizer
				intoArchive: self archive) serialize
		] raise: Error.