couch db
addDocument: content id: someId
	"{ #foo -> #bar }."
	
	(WebClient
		httpPut: ('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			someId})
		content: (content isDictionary ifFalse: [Dictionary newFrom: content]) asJsonString
		type: 'text/plain') in: [:response |
			self rememberDocumentId: someId.  
			^ Json readFrom: response content readStream].