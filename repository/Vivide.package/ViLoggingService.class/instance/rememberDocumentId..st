couch db - convenience
rememberDocumentId: uuid

	lastDocuments ifNil: [lastDocuments := OrderedCollection new: 100].
	[lastDocuments size >= 100] whileTrue: [lastDocuments removeFirst].
	lastDocuments addLast: uuid.