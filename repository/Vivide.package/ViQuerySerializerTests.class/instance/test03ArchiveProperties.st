tests
test03ArchiveProperties

	| q q2 newOrganization |
	q := ViQueryStep collect: '[:obj | obj asString]'.
	q organization: organizer; id: #test03ArchiveProperties; register.

	q
		setProperty: #someLabel toValue: 'Foobar';
		setProperty: #aColor toValue: #AAAAAA;
		setProperty: #number toValue: 42;
		setProperty: #someText toValue: '<b>Hello</b>, World!' asHtmlText.
		
	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.

	newOrganization := ViQueryOrganizer new.

	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganization) merge.

	q2 := newOrganization stepById: q id.
	
	#(someLabel aColor number someText) do: [:prop |
		self assert: (q valueOfProperty: prop) equals: (q2 valueOfProperty: prop)].