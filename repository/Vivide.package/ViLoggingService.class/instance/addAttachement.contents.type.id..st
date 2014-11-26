couch db
addAttachement: fileName contents: byteArray type: mime id: uuid

	| rev |
	(WebClient httpDo: [:client | client 
		httpHead: ('{1}{2}/{3}' format: {
			self class couchDB.
			self class database.
			uuid})
		do: [:req | req
			headerAt: 'Authorization'
			put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
				rev := (response headerAt: #etag) copyWithoutAll: '"'].
	
	(WebClient httpDo: [:client | client
		httpPut: ('{1}{2}/{3}/{4}?rev={5}' format: {
			self class couchDB.
			self class database.
			uuid.
			fileName.
			rev})
		content: byteArray
		type: mime
		do: [:req | req
			headerAt: 'Authorization'
			put: ('Basic ', ((client authParams at: #username), ':', (client authParams at: #password)) base64Encoded)]]) in: [:response |
				^ Json readFrom: response content readStream]