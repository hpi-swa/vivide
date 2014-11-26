couch db
addDocument: content id: someId
	"{ #foo -> #bar }."
	
	(WebClient httpDo: [:client | client
		httpPut: ('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			someId})
		content: (content isDictionary ifFalse: [Dictionary newFrom: content]) asJsonString
		type: 'text/plain'
		do: [:req | req
			headerAt: 'Authorization'
			put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
				self rememberDocumentId: someId.  
				^ Json readFrom: response content readStream].