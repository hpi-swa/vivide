tests
test16DefaultMetaData

	| q |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	self
		assert: Utilities authorInitials equals: (q properties at: #creationAuthor);
		assert: (q properties at: #creationTimeStamp) notNil.