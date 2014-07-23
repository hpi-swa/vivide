tests
test01Archive

	| q q2 newOrganization |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	q organization: organizer; register.
	
	q id: #test01Archive.
	
	self
		assert: (self archive class organization listAtCategoryNamed: 'steps') isEmpty;
		assert: (self archive class organization listAtCategoryNamed: 'definitions') isEmpty.
	
	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.

	self
		assert: 1 equals: (self archive class organization listAtCategoryNamed: 'steps') size;
		assert: 2 equals: (self archive class organization listAtCategoryNamed: 'definitions') size.
		
	newOrganization := ViQueryOrganizer new.
	
	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganization) merge.

	q2 := newOrganization stepById: q id.
	
	self
		assert: q2 ~~ q;
		assert: q2 definition ~~ q definition;
		assert: q2 viewDefinition ~~ q viewDefinition;
		assert: q2 = q.