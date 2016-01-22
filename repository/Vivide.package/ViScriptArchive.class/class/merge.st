merging
merge

	self == self localArchive ifTrue: [^ self].

	^ ViQuerySerializer new
		setArchive: self;
		merge