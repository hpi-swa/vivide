merging
merge

	self == self localArchive
		ifTrue: [^ Error signal: 'The local archive cannot be merged!'].

	ViConverterForClassArchive new
		theClass: self;
		import.