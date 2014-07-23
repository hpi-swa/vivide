tests
test04ArchiveReference

	| q newOrganization |
	q := ViQueryStep reference: ViQueryStep defaultProperties.
	q organization: organizer; register.

	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.

	newOrganization := ViQueryOrganizer new.

	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganization) merge.

	self assert: (newOrganization stepById: q id) reference == (newOrganization stepById: q reference id).