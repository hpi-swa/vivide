couch db - convenience
lastDocument
	"See #rememberDocumentId:."
	
	(lastDocuments isNil or: [lastDocuments isEmpty])
		ifTrue: [^ nil].

	^ self getDocumentById: lastDocuments last