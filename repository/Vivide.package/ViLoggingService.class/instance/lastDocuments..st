couch db - convenience
lastDocuments: count

	lastDocuments ifNil: [^ #()].
	
	lastDocuments size < count
		ifTrue: [^ self lastDocuments: lastDocuments size].

	^ (lastDocuments last: count) collect: [:uuid |
		self getDocumentById: uuid]