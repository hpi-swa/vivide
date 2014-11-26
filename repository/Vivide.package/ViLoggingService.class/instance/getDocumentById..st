couch db
getDocumentById: uuid

	(WebClient httpDo: [:client | client
		httpGet:('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			uuid})
		do: [:req | req
			headerAt: 'Authorization'
			put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
				^ Json readFrom: response content readStream]