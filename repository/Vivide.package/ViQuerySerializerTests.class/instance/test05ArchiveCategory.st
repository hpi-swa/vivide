tests
test05ArchiveCategory

	| q |
	q := ViQueryStep collect: '[:ea | ea * ea]'.
	q organization: organizer; register.

	q category: #test.
	q definition category: #test.
	
	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.

	self assert: (self archive class organization categories includes: #'*test-steps').
	self assert: (self archive class organization categories includes: #'*test-definitions').
	self assert: (self archive class organization categories includes: #'*test-organization').