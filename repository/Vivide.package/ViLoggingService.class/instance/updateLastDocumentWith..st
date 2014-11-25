couch db - convenience
updateLastDocumentWith: block

	(lastDocuments isNil or: [lastDocuments isEmpty])
		ifTrue: [Error signal: 'There is no last document.'].

	^ self updateDocumentById: lastDocuments last with: block