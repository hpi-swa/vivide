couch db
getDocumentById: uuid

	(WebClient
		httpGet:('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			uuid})) in: [:response |
				^ Json readFrom: response content readStream]