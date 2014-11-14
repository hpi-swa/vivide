tests
test16DefaultMetaData

	| q |
	q := [:morph | morph submorphs] asScript.
	self
		assert: Utilities authorInitials equals: (q properties at: #creationAuthor);
		assert: (q properties at: #creationTimeStamp) notNil.