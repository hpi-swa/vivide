preferences
couchDB: urlAsString

	CouchDB := (urlAsString endsWith: '/')
		ifTrue: [urlAsString] ifFalse: [urlAsString, '/'].